// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.GameCenterMatchmakingQueues.ById {
    public struct GET: Endpoint {
        public typealias Response = GameCenterMatchmakingQueueResponse

        public var path: String {
            "/v1/gameCenterMatchmakingQueues/\(id)"
        }

        /// the id of the requested resource
        public var id: String

        public var parameters: Parameters = Parameters()

        public init(id: String) {
            self.id = id
        }

        public func request(with baseURL: URL) throws -> URLRequest? {
            var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
            components?.path = path

            components?.queryItems = [
                URLQueryItem(name: "fields[gameCenterMatchmakingQueues]",
                             value: parameters.fields[.gameCenterMatchmakingQueues]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ","))
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Single GameCenterMatchmakingQueue as `GameCenterMatchmakingQueueResponse`
        /// - Throws: **400**, Parameter error(s) as `ErrorResponse`
        /// - Throws: **403**, Forbidden error as `ErrorResponse`
        /// - Throws: **404**, Not found error as `ErrorResponse`
        public static func response(from data: Data, urlResponse: HTTPURLResponse) throws -> Response {
            var jsonDecoder: JSONDecoder {
                let decoder = JSONDecoder()
                return decoder
            }

            switch urlResponse.statusCode {
            case 200:
                return try jsonDecoder.decode(GameCenterMatchmakingQueueResponse.self, from: data)

            case 400:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            case 403:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            case 404:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            default:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)
            }
        }
    }
}

extension V1.GameCenterMatchmakingQueues.ById.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum GameCenterMatchmakingQueues: Hashable, Codable, RawRepresentable {
                case experimentRuleSet
                case referenceName
                case ruleSet
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .experimentRuleSet: return "experimentRuleSet"
                    case .referenceName: return "referenceName"
                    case .ruleSet: return "ruleSet"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "experimentRuleSet": self = .experimentRuleSet
                    case "referenceName": self = .referenceName
                    case "ruleSet": self = .ruleSet
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type gameCenterMatchmakingQueues
                public static var gameCenterMatchmakingQueues: Relation<[GameCenterMatchmakingQueues]?> {
                    .init(key: "fields[gameCenterMatchmakingQueues]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case experimentRuleSet
            case ruleSet
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .experimentRuleSet: return "experimentRuleSet"
                case .ruleSet: return "ruleSet"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "experimentRuleSet": self = .experimentRuleSet
                case "ruleSet": self = .ruleSet
                default: self = .unknown(rawValue)
                }
            }
        }
    }
}

// swiftlint:enable all
