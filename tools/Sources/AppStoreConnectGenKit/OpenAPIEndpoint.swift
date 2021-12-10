import Foundation

public typealias OpenAPIEndpoints = [String: OpenAPIEndpoint]

public struct OpenAPIEndpoint: Decodable {
    public var get: RequestMethod<Operations.GET>?
    public var post: RequestMethod<Operations.POST>?
    public var patch: RequestMethod<Operations.PATCH>?
    public var delete: RequestMethod<Operations.DELETE>?
    public var parameters: [Parameter]?

    public var hasMethod: Bool {
        return get != nil
            || post != nil
            || patch != nil
            || delete != nil
    }
}

extension OpenAPIEndpoint {
    public struct RequestMethod<T: Decodable>: Decodable {
        public var tags: Set<String>
        public var deprecated: Bool?
        public var responses: [Int: Response]
        public var content: T

        private enum CodingKeys: String, CodingKey {
            case tags, responses, deprecated
        }

        public init(from decoder: Decoder) throws {
            let contaienr = try decoder.container(keyedBy: CodingKeys.self)
            tags = try contaienr.decode(Set<String>.self, forKey: .tags)
            responses = try contaienr.decode([Int: Response].self, forKey: .responses)
            deprecated = try contaienr.decodeIfPresent(Bool.self, forKey: .deprecated)
            content = try T(from: decoder)
        }
    }
}

extension OpenAPIEndpoint {
    public enum Operations {
        public struct GET: Decodable {
            public var parameters: [Parameter]?
        }

        public struct POST: Decodable {
            public var requestBody: RequestBody
        }

        public struct PATCH: Decodable {
            public var requestBody: RequestBody
        }

        public struct DELETE: Decodable {}
    }
}

extension OpenAPIEndpoint {
    public struct Parameter: Decodable {
        public var name: String
        public var `in`: Location
        public var description: String?
        public var schema: OpenAPISchema
        public var required: Bool?

        public enum Location: String, Decodable {
            case path, query
        }
    }

    public struct RequestBody: Decodable {
        public var description: String?
        public var content: [String: Content]
        public var required: Bool?

        public struct Content: Decodable {
            public var schema: OpenAPISchema
        }
    }
}

extension OpenAPIEndpoint {
    public struct Response: Decodable {
        public var description: String?
        public var content: [String: Content]?

        public struct Content: Decodable {
            public var schema: OpenAPISchema
        }
    }
}
