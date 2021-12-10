import Foundation

protocol Decl {
    func render(context: inout RenderContext, in namespaces: [String]) -> String
}

enum AccessLevel {
    case `public`, `private`, `internal`
}

struct TypealiasDecl: Decl {
    var access: AccessLevel
    var name: String
    var value: String
    var generics: String?
    var whereClause: String?

    func render(context: inout RenderContext, in namespaces: [String]) -> String {
        func renderGenerics() -> String {
            guard let generics = generics else { return "" }
            return "<\(generics)>"

        }
        func renderWhereClause() -> String {
            guard let whereClause = whereClause else { return "" }
            return " where \(whereClause)"
        }
        return "\(access) typealias \(name)\(renderGenerics()) = \(value)\(renderWhereClause())"
    }
}

struct AnnotationDecl: Decl {
    static func deprecated() -> Self {
        Self.init(body: "@available(*, deprecated)")
    }

    var body: String

    func render(context: inout RenderContext, in namespaces: [String]) -> String {
        body
    }
}

struct SubscriptDecl: Decl {
    var access: AccessLevel
    var generics: String?
    var arguments: [ArgumentDecl]
    var returnType: String?
    var getter: String
    var setter: String?

    func render(context: inout RenderContext, in namespaces: [String]) -> String {
        func renderGenerics() -> String {
            guard let generics = generics else { return "" }
            return "<\(generics)>"

        }
        func renderArguments() -> String {
            guard !arguments.isEmpty else { return "" }
            return arguments.map { $0.render(context: &context, in: namespaces) }.joined(separator: ", ")
        }
        func renderReturnType() -> String {
            guard let returnType = returnType else { return "" }
            return " -> \(returnType)"
        }
        func renderSetter() -> String {
            guard let setter = setter else { return "" }
            return "set { \(setter) }"
        }

        let body: String
        if let setter = setter {
            body = """
            get { \(getter) }
            set { \(setter) }
            """
        } else {
            body = """
            \(getter)
            """
        }
        return """
        \(access) subscript \(renderGenerics())(\(renderArguments()))\(renderReturnType()) {
        \(body.indent(to: 4))
        }
        """
    }
}

struct MemberDecl: Decl {
    enum Modifier {
        case `static`
    }
    enum Keyword {
        case `let`, `var`
    }
    enum Value {
        case assignment(String)
        case computed(String)
    }
    var annotations: [AnnotationDecl] = []
    var access: AccessLevel
    var modifier: Modifier?
    var keyword: Keyword
    var name: String
    var type: String
    var value: Value?
    var doc: String?

    func render(context: inout RenderContext, in namespaces: [String]) -> String {
        func renderDoc() -> String {
            guard let doc = doc else { return "" }
            return "/// " + doc
                .components(separatedBy: "\n")
                .joined(separator: "\n/// ")
        }
        func renderAnnotations() -> String {
            guard !annotations.isEmpty else { return "" }
            return "\n" + annotations.map { $0.render(context: &context, in: namespaces) }.joined(separator: "\n")
        }
        func renderModifier() -> String {
            guard let modifier = modifier else { return "" }
            return "\(modifier) "
        }
        func renderValue() -> String {
            switch value {
            case .assignment(let value):
                return " = \(value)"
            case .computed(let body):
                return """
                 {
                \(body.indent(to: 4))
                }
                """
            case nil:
                return ""
            }
        }
        return """
        \(renderDoc())\(renderAnnotations())
        \(access) \(renderModifier())\(keyword) \(name): \(type)\(renderValue())
        """.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

struct ArgumentDecl: Decl {
    var name: String
    var alt: String?
    var type: String
    var initial: String?

    func render(context: inout RenderContext, in namespaces: [String]) -> String {
        func renderAlt() -> String {
            guard let alt = alt else { return "" }
            return "\(alt) "
        }
        func renderValue() -> String {
            guard let initial = initial else { return "" }
            return " = \(initial)"
        }

        if name.isEmpty {
            return "\(type)\(renderValue())"
        }
        return """
        \(renderAlt())\(name): \(type)\(renderValue())
        """
    }
}

struct InitializerDecl: Decl {
    typealias ParameterModifier = FunctionDecl.ParameterModifier
    var access: AccessLevel
    var arguments: [ArgumentDecl]
    var modifiers: [ParameterModifier]?
    var body: String

    func render(context: inout RenderContext, in namespaces: [String]) -> String {
        func renderArguments() -> String {
            guard !arguments.isEmpty else { return "" }
            if arguments.count > 1 {
                return "\n"
                    + arguments
                        .map { $0.render(context: &context, in: namespaces) }
                        .joined(separator: ",\n")
                        .indent(to: 4)
                    + "\n"
            } else {
                return arguments.map { $0.render(context: &context, in: namespaces) }.joined(separator: ", ")
            }
        }
        func renderModifiers() -> String {
            guard let modifiers = modifiers, !modifiers.isEmpty else { return "" }
            return modifiers.map { "\($0)" }.joined(separator: " ") + " "
        }
        return """
        \(access) init(\(renderArguments())) \(renderModifiers()){
        \(body.indent(to: 4))
        }
        """
    }
}

struct FunctionDecl: Decl {
    enum DeclModifier {
        case `static`, `class`
    }
    enum ParameterModifier {
        case `throws`
    }
    var access: AccessLevel
    var declModifier: DeclModifier?
    var name: String
    var arguments: [ArgumentDecl]
    var parameterModifiers: [ParameterModifier]?
    var returnType: String?
    var body: String
    var doc: String?

    func render(context: inout RenderContext, in namespaces: [String]) -> String {
        func renderDoc() -> String {
            guard let doc = doc else { return "" }
            return "/// \(doc.components(separatedBy: "\n").joined(separator: "\n/// "))"
        }
        func renderDeclModifier() -> String {
            guard let declModifier = declModifier else { return "" }
            return " \(declModifier)"
        }
        func renderArguments() -> String {
            guard !arguments.isEmpty else { return "" }
            return arguments.map { $0.render(context: &context, in: namespaces) }.joined(separator: ", ")
        }
        func componentsForModifiers() -> [String] {
            guard let modifiers = parameterModifiers, !modifiers.isEmpty else { return [] }
            return modifiers.map { "\($0)" }
        }
        func componentsForReturnType() -> [String] {
            guard let returnType = returnType else { return [] }
            return ["->", returnType]
        }
        func renderModifiersAndReturnType() -> String {
            let comps = componentsForModifiers() + componentsForReturnType()
            guard !comps.isEmpty else { return "" }
            return comps.joined(separator: " ") + " "
        }
        return """
        \(renderDoc())
        \(access)\(renderDeclModifier()) func \(name)(\(renderArguments())) \(renderModifiersAndReturnType()){
        \(body.indent(to: 4))
        }
        """.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

struct StructDecl: Decl {
    var annotations: [AnnotationDecl] = []
    var access: AccessLevel
    var name: String
    var inheritances: [String] = []
    var typealiases: [TypealiasDecl] = []
    var subscripts: [SubscriptDecl] = []
    var members: [MemberDecl]

    var initializers: [InitializerDecl]
    var functions: [FunctionDecl]

    var nested: [Decl] = []
    var extensions: [Decl] = []

    func render(context: inout RenderContext, in namespaces: [String]) -> String {
        let namespaces = namespaces + [name]
        context.insert(extensions: extensions, with: namespaces)

        func render(_ arr: [Decl], separator: String = "\n\n") -> String {
            let content = arr
                .map { $0.render(context: &context, in: namespaces) }
                .joined(separator: separator)
            return content + (arr.isEmpty ? "" : "\n\n")
        }
        var body: String = ""
        body += render(typealiases, separator: "\n")
        body += render(subscripts)
        body += render(members)
        body += render(initializers)
        body += render(functions)
        body += render(nested)
        body = body.trimmingCharacters(in: .whitespacesAndNewlines)

        return """
        \(annotations.map {
            $0.render(context: &context, in: namespaces)
        }.joined(separator: "\n"))
        \(access) struct \(name)\
        \(inheritances.isEmpty ? "" : ": " + inheritances.joined(separator: ", ")) {
        \(body.indent(to: 4))
        }
        """.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

struct CaseDecl: Decl {
    enum Value {
        case int(Int)
        case string(String)
        case arguments([ArgumentDecl])
    }
    var name: String
    var value: Value?

    func render(context: inout RenderContext, in namespaces: [String]) -> String {
        func renderValue() -> String {
            switch value {
            case .int(let value):
                return " = \(value)"
            case .string(let value):
                return #" = "\#(value)""#
            case .arguments(let args):
                return """
                (\(args.map { $0.render(context: &context, in: namespaces) }.joined(separator: ", ")))
                """
            case nil:
                return ""
            }
        }
        return """
        case \(name)\(renderValue())
        """
    }
}

struct EnumDecl: Decl {
    var annotations: [AnnotationDecl] = []
    var access: AccessLevel
    var name: String
    var inheritances: [String] = []
    var typealiases: [TypealiasDecl] = []
    var cases: [CaseDecl]

    var initializers: [InitializerDecl] = []
    var functions: [FunctionDecl] = []

    var nested: [Decl] = []
    var extensions: [Decl] = []

    func render(context: inout RenderContext, in namespaces: [String]) -> String {
        let namespaces = namespaces + [name]
        context.insert(extensions: extensions, with: namespaces)

        let interface = """
        \(access) enum \(name)\
        \(inheritances.isEmpty ? "" : ": " + inheritances.joined(separator: ", "))
        """

        func render(_ arr: [Decl], separator: String = "\n\n") -> String {
            let content = arr
                .map { $0.render(context: &context, in: namespaces) }
                .joined(separator: separator)
            return content + (arr.isEmpty ? "" : "\n\n")
        }
        var body: String = ""
        body += render(typealiases, separator: "\n")
        body += render(cases, separator: "\n")
        body += render(initializers)
        body += render(functions)
        body += render(nested)
        body = body.trimmingCharacters(in: .whitespacesAndNewlines)

        return """
        \(annotations.map {
            $0.render(context: &context, in: namespaces)
        }.joined(separator: "\n"))
        \(interface) \(body.isEmpty ? "{}" : """
        {
        \(body.indent(to: 4))
        }
        """)
        """.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

struct ExtensionDecl: Decl {
    var name: String
    var inheritances: [String] = []
    var body: [Decl]

    func render(context: inout RenderContext, in namespaces: [String]) -> String {
        return """
        extension \(namespaces.isEmpty ? "" : namespaces.joined(separator: ".") + ".")\(name)\
        \(inheritances.isEmpty ? "" : ": " + inheritances.joined(separator: ", ")) {
            \(body
                .map { $0.render(context: &context, in: name.components(separatedBy: ".")) }
                .joined(separator: "\n\n")
                .indent(to: 4)
                .trimmingCharacters(in: .whitespacesAndNewlines))
        }
        """
    }
}

struct RenderContext {
    var extensions: [(`extension`: Decl, namespaces: [String])] = []

    mutating func insert(extensions: [Decl], with namespaces: [String]) {
        extensions.forEach {
            self.extensions.append(($0, namespaces))
        }
    }
}

struct SourceFile {
    let decl: Decl

    func render() -> String {
        var context = RenderContext()
        var result = decl.render(context: &context, in: []) + "\n\n"

        func renderExtension(context: RenderContext) {
            for (decl, namespaces) in context.extensions where !namespaces.isEmpty {
                let ext = ExtensionDecl(name: namespaces.joined(separator: "."), body: [decl])
                var childContext = RenderContext()
                result += ext.render(context: &childContext, in: []) + "\n\n"
                renderExtension(context: childContext)
            }
        }

        renderExtension(context: context)

        return result.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
