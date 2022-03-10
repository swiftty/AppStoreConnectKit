import Foundation

public typealias OpenAPISchemas = [String: OpenAPISchema]

public struct OpenAPISchema: Decodable {
    public var title: String?
    public var description: String?
    public var value: Property
    public var deprecated: Bool

    private enum CodingKeys: String, CodingKey {
        case title, description, deprecated
    }

    public init(title: String? = nil, description: String? = nil, value: Property, deprecated: Bool) {
        self.title = title
        self.description = description
        self.value = value
        self.deprecated = deprecated
    }

    public init(from decoder: Decoder) throws {
        let c = try decoder.container(keyedBy: CodingKeys.self)
        title = try c.decodeIfPresent(String.self, forKey: .title)
        description = try c.decodeIfPresent(String.self, forKey: .description)
        value = try Property(from: decoder)
        deprecated = try c.decodeIfPresent(Bool.self, forKey: .deprecated) ?? false
    }

    public func withDescription(_ description: String?) -> OpenAPISchema {
        var copy = self
        copy.description = description
        return copy
    }
}

extension OpenAPISchema {
    public indirect enum Property: Decodable {
        case ref(Ref)
        case object(properties: [String: OpenAPISchema], required: Set<String>)
        case array(OpenAPISchema)
        case `enum`(Set<String>)
        case string(format: StringFormat?)
        case integer
        case number
        case boolean
        case anyKey(OpenAPISchema)
        case oneOf([OpenAPISchema])
        case undefined

        public enum StringFormat: String, Decodable {
            case email
            case uri
            case uriReference = "uri-reference"
            case date
            case dateTime = "date-time"
            case binary
        }

        private enum _Type: String, Decodable {
            case object
            case array
            case string
            case integer
            case number
            case boolean
        }

        private enum CodingKeys: String, CodingKey {
            case type
            // ref
            case ref = "$ref"
            // object
            case properties
            case required

            case additionalProperties
            // array
            case items
            // enum
            case `enum`
            // string
            case format
            // oneOf
            case oneOf
        }

        public init(from decoder: Decoder) throws {
            let c = try decoder.container(keyedBy: CodingKeys.self)
            if let ref = try c.decodeIfPresent(Ref.self, forKey: .ref) {
                self = .ref(ref)
                return
            }

            switch try? c.decode(_Type.self, forKey: .type) {
            case .object:
                if let additionalProperties = try c.decodeIfPresent(OpenAPISchema.self, forKey: .additionalProperties) {
                    self = .anyKey(additionalProperties)
                    return
                }
                do {
                    let properties = try c.decode([String: OpenAPISchema].self, forKey: .properties)
                    let required = try c.decodeIfPresent(Set<String>.self, forKey: .required)
                    self = .object(properties: properties, required: required ?? [])
                } catch DecodingError.keyNotFound(CodingKeys.properties, _) {
                    self = .undefined
                }

            case .array:
                let value = try c.decode(OpenAPISchema.self, forKey: .items)
                self = .array(value)

            case .string:
                if let values = try c.decodeIfPresent(Set<String>.self, forKey: .enum) {
                    self = .enum(values)
                } else {
                    self = .string(format: try c.decodeIfPresent(StringFormat.self, forKey: .format))
                }

            case .integer:
                self = .integer

            case .number:
                self = .number

            case .boolean:
                self = .boolean

            case nil:
                let items = try c.decode([OpenAPISchema].self, forKey: .oneOf)
                self = .oneOf(items)
            }
        }
    }
}

extension OpenAPISchema {
    public struct Ref: RawRepresentable, Decodable {
        public var rawValue: String
        public var key: String { rawValue.components(separatedBy: "/").last! }

        public init(rawValue: String) {
            self.rawValue = rawValue
        }
    }
}
