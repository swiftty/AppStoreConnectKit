import Foundation
import AppStoreConnectGenKit

struct SortKey: Equatable, Comparable {
    let key: String

    static let highPriorities = [
        "id",
        "type",
        "attributes",
        "relationships",
        "width",
        "height"
    ]

    static func < (lhs: SortKey, rhs: SortKey) -> Bool {
        let lhsIndex = highPriorities.firstIndex(of: lhs.key)
        let rhsIndex = highPriorities.firstIndex(of: rhs.key)
        if let lhs = lhsIndex {
            if let rhs = rhsIndex {
                return lhs < rhs
            }
            return true
        }
        if rhsIndex != nil {
            return false
        }
        return lhs.key < rhs.key
    }
}

struct TypeName: RawRepresentable, Hashable, CustomStringConvertible {
    let rawValue: String
    var description: String { rawValue }

    init(rawValue: String) {
        self.rawValue = keywords.contains(rawValue)
        ? "`\(rawValue)`"
        : rawValue
    }

    init(_ key: String) {
        let key = key.upperInitialLetter()
        self.init(rawValue: key)
    }

    func withRequired(_ flag: Bool?) -> TypeName {
        TypeName(rawValue: rawValue + (flag == true ? "" : "?"))
    }
}

struct Variable {
    let key: String
    let type: TypeName
    let required: Bool
    let deprecated: Bool
    let description: String?
    let reserved: Bool

    var escapedKey: String {
        reserved ? "`\(key)`" : key
    }

    init(key: String, type: TypeName, required: Bool, deprecated: Bool, description: String?) {
        self.key = key
        self.type = type
        self.required = required
        self.deprecated = deprecated
        self.description = description
        self.reserved = keywords.contains(key)
    }
}

protocol Repr {
    init?(_ prop: OpenAPISchema, for key: String)

    func renderType(context: SwiftCodeBuilder.Context) -> TypeName
    func buildDecl(context: SwiftCodeBuilder.Context) -> Decl?
}

extension Repr {
    func buildDecl(context: SwiftCodeBuilder.Context) -> Decl? { nil }
}

func findRepr(for prop: OpenAPISchema, with key: String) -> Repr {
    let targets = [
        StructRepr.self,
        EnumRepr.self,
        ArrayRepr.self,
        OneOfRepr.self,
        AnyKeyRepr.self,
        StringRepr.self,
        BooleanRepr.self,
        IntegerRepr.self,
        FloatingRepr.self,
        RefRepr.self
    ] as [Repr.Type]

    return targets.lazy
        .compactMap { $0.init(prop, for: key) }
        .first ?? {
            fatalError("missing \(key) : \(prop)")
        }()
}

struct StructRepr: Repr {
    let properties: [String: OpenAPISchema]
    let required: Set<String>
    let key: String

    init?(_ schema: OpenAPISchema, for key: String) {
        guard case .object(let properties, let required) = schema.value else {
            return nil
        }
        self.properties = properties
        self.required = required
        self.key = key
    }

    func renderType(context: SwiftCodeBuilder.Context) -> TypeName {
        TypeName(key)
    }

    func buildDecl(context: SwiftCodeBuilder.Context) -> Decl? {
        var result: [(
            key: String,
            variable: Variable,
            decl: Decl?
        )] = []
        for (key, value) in properties.sorted(by: { SortKey(key: $0.key) < SortKey(key: $1.key) }) {
            let required = required.contains(key)

            let repr = findRepr(for: value, with: key)
            let variable = Variable(key: key, type: repr.renderType(context: context),
                                    required: required, deprecated: value.deprecated,
                                    description: value.description)

            result.append((key, variable, repr.buildDecl(context: context)))
        }

        let name = "\(renderType(context: context))"

        return StructDecl(
            access: .public,
            name: name,
            inheritances: (context.inherits[name] ?? []) + ["Hashable", "Codable"],
            members: declForProperties(from: result.map(\.variable)),
            initializers: [declForInitializer(from: result.map(\.variable))],
            functions: [],
            nested: [
                declForCodingKeys(from: result.map { ($0.variable.escapedKey, $0.key) })
            ] + result.compactMap(\.decl),
            extensions: []
        )
    }
}

struct EnumRepr: Repr {
    let cases: Set<String>
    let key: String

    init?(_ schema: OpenAPISchema, for key: String) {
        guard case .enum(let cases) = schema.value else {
            return nil
        }
        self.cases = cases
        self.key = key
    }

    func renderType(context: SwiftCodeBuilder.Context) -> TypeName {
        TypeName(key)
    }

    func buildDecl(context: SwiftCodeBuilder.Context) -> Decl? {
        let caseValues: [(key: String, raw: String)] = cases
            .map { value in
                var key = value.camelcased().lowerInitialLetter()
                if key.hasPrefix("-") {
                    key = String(key.dropFirst()) + "Desc"
                }
                return (key, value)
            }
            .sorted(by: { $0.key < $1.key })

        let name = "\(renderType(context: context))"

        // do not generate `unknown` for resource type
        if key == "type", cases.count == 1 {
            return EnumDecl(
                access: .public,
                name: name,
                inheritances: (context.inherits[name] ?? []) + ["String", "Hashable", "Codable"],
                cases: caseValues.map {
                    CaseDecl(name: $0.key, value: $0.key == $0.raw ? nil : .string($0.raw))
                }
            )
        } else {
            return EnumDecl(
                access: .public,
                name: name,
                inheritances: (context.inherits[name] ?? []) + ["Hashable", "Codable", "RawRepresentable"],
                cases: caseValues.map { CaseDecl(name: $0.key) } + [
                    CaseDecl(name: "unknown", value: .arguments([
                        ArgumentDecl(name: "", type: "String")
                    ]))
                ],
                initializers: [
                    InitializerDecl(
                        access: .public,
                        arguments: [
                            ArgumentDecl(name: "rawValue", type: "String")
                        ],
                        body: """
                    switch rawValue {
                    \(caseValues.map {
                        #"case "\#($0.raw)": self = .\#($0.key)"#
                    }.joined(separator: "\n"))
                    default: self = .unknown(rawValue)
                    }
                    """
                    )
                ],
                members: [
                    MemberDecl(
                        access: .public,
                        keyword: .var,
                        name: "rawValue",
                        type: "String",
                        value: .computed("""
                    switch self {
                    \(caseValues.map {
                        #"case .\#($0.key): return "\#($0.raw)""#
                    }.joined(separator: "\n"))
                    case .unknown(let rawValue): return rawValue
                    }
                    """)
                    )
                ]
            )
        }
    }
}

struct ArrayRepr: Repr {
    let repr: Repr

    init?(_ schema: OpenAPISchema, for key: String) {
        guard case .array(let prop) = schema.value else { return nil }
        self.repr = findRepr(for: prop, with: key)
    }

    func renderType(context: SwiftCodeBuilder.Context) -> TypeName {
        TypeName(rawValue: "[\(repr.renderType(context: context))]")
    }

    func buildDecl(context: SwiftCodeBuilder.Context) -> Decl? {
        repr.buildDecl(context: context)
    }
}

struct OneOfRepr: Repr {
    let props: [OpenAPISchema]
    let key: String

    init?(_ schema: OpenAPISchema, for key: String) {
        guard case .oneOf(let props) = schema.value else { return nil }
        self.props = props
        self.key = key
    }

    func renderType(context: SwiftCodeBuilder.Context) -> TypeName {
        TypeName(key)
    }

    func buildDecl(context: SwiftCodeBuilder.Context) -> Decl? {
        var result: [(
            key: String,
            type: TypeName,
            decl: Decl?
        )] = []
        var used: Set<TypeName> = []
        for prop in props {
            let repr = findRepr(for: prop, with: "")
            let type = repr.renderType(context: context)
            guard used.insert(type).inserted else { continue }
            result.append((type.rawValue.lowerInitialLetter(), type, repr.buildDecl(context: context)))
        }

        return EnumDecl(
            access: .public,
            name: "\(renderType(context: context))",
            inheritances: ["Hashable", "Codable"],
            cases: result.map {
                CaseDecl(name: $0.key, value: .arguments([ArgumentDecl(name: "", type: "\($0.type)")]))
            },
            initializers: [
                InitializerDecl(
                    access: .public,
                    arguments: [
                        ArgumentDecl(name: "decoder", alt: "from", type: "Decoder")
                    ],
                    modifiers: [.throws],
                    body: """
                    self = try {
                        var lastError: Error!
                    \(result.map {
                        """
                            do {
                                return .\($0.key)(try \($0.type)(from: decoder))
                            } catch {
                                lastError = error
                            }
                        """
                    }.joined(separator: "\n"))
                        throw lastError
                    }()
                    """
                )
            ],
            functions: [
                FunctionDecl(
                    access: .public,
                    name: "encode",
                    arguments: [
                        ArgumentDecl(name: "encoder", alt: "to", type: "Encoder")
                    ],
                    parameterModifiers: [.throws],
                    body: """
                    switch self {
                    \(result.map {
                        """
                        case .\($0.key)(let value):
                            try value.encode(to: encoder)
                        """
                    }.joined(separator: "\n\n"))
                    }
                    """
                )
            ],
            nested: result.compactMap(\.decl),
            extensions: []
        )
    }
}

struct AnyKeyRepr: Repr {
    let repr: Repr

    init?(_ schema: OpenAPISchema, for key: String) {
        guard case .anyKey(let value) = schema.value else { return nil }
        self.repr = findRepr(for: value, with: key)
    }

    func renderType(context: SwiftCodeBuilder.Context) -> TypeName {
        TypeName(rawValue: "[String: \(repr.renderType(context: context))]")
    }
}

struct StringRepr: Repr {
    let format: OpenAPISchema.Property.StringFormat?

    init?(_ schema: OpenAPISchema, for key: String) {
        guard case .string(let format) = schema.value else { return nil }
        self.format = format
    }

    func renderType(context: SwiftCodeBuilder.Context) -> TypeName {
        TypeName(rawValue: {
            switch format {
            case .date, .dateTime: return "String"
            case .uri, .uriReference: return "URL"
            case .email: return "String"
            case .binary: return "Data"
            case nil: return "String"
            }
        }())
    }
}

struct BooleanRepr: Repr {
    init?(_ schema: OpenAPISchema, for key: String) {
        guard case .boolean = schema.value else { return nil }
    }

    func renderType(context: SwiftCodeBuilder.Context) -> TypeName {
        TypeName(rawValue: "Bool")
    }
}

struct IntegerRepr: Repr {
    init?(_ schema: OpenAPISchema, for key: String) {
        guard case .integer = schema.value else { return nil }
    }

    func renderType(context: SwiftCodeBuilder.Context) -> TypeName {
        TypeName(rawValue: "Int")
    }
}

struct FloatingRepr: Repr {
    init?(_ schema: OpenAPISchema, for key: String) {
        guard case .number = schema.value else { return nil }
    }

    func renderType(context: SwiftCodeBuilder.Context) -> TypeName {
        TypeName(rawValue: "Float")
    }
}

struct RefRepr: Repr {
    let ref: OpenAPISchema.Ref

    init?(_ schema: OpenAPISchema, for key: String) {
        guard case .ref(let ref) = schema.value else { return nil }
        self.ref = ref
    }

    func renderType(context: SwiftCodeBuilder.Context) -> TypeName {
        let schema = context.resolver(ref)
        return TypeName(schema?.title ?? ref.key)
    }
}

private func declForProperties(from props: [Variable]) -> [MemberDecl] {
    props.map {
        MemberDecl(
            annotations: $0.deprecated ? [.deprecated()] : [],
            access: .public,
            keyword: .var,
            name: $0.escapedKey,
            type: "\($0.type.withRequired($0.required))",
            doc: $0.description
        )
    }
}

private func declForCodingKeys(from props: [(key: String, value: String)]) -> Decl {
    EnumDecl(
        access: .private,
        name: "CodingKeys",
        inheritances: ["String", "CodingKey"],
        cases: props.map { key, value in
            CaseDecl(name: key, value: key == value ? nil : .string(value))
        }
    )
}

private func declForInitializer(from props: [Variable]) -> InitializerDecl {
    InitializerDecl(
        access: .public,
        arguments: props.map {
            ArgumentDecl(
                name: $0.reserved ? "_\($0.key)" : $0.key,
                alt: $0.reserved ? $0.key : nil,
                type: "\($0.type.withRequired($0.required))",
                initial: $0.required ? nil : "nil"
            )
        },
        body: props
            .map { "self.\($0.escapedKey) = \($0.reserved ? "_\($0.key)" : $0.key)" }
            .joined(separator: "\n")
    )
}
