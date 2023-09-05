// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.Builds.ById.IndividualTesters {
    public struct GET: Endpoint {
        public typealias Response = BetaTestersResponse

        public var path: String {
            "/v1/builds/\(id)/individualTesters"
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
                URLQueryItem(name: "fields[betaTesters]",
                             value: parameters.fields[.betaTesters]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit",
                             value: parameters.limit.map { "\($0)" })
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, List of BetaTesters as `BetaTestersResponse`
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
                return try jsonDecoder.decode(BetaTestersResponse.self, from: data)

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

extension V1.Builds.ById.IndividualTesters.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        /// maximum resources per page
        public var limit: Int?

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<Self, T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum BetaTesters: Hashable, Codable, RawRepresentable {
                case apps
                case betaGroups
                case builds
                case email
                case firstName
                case inviteType
                case lastName
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .apps: return "apps"
                    case .betaGroups: return "betaGroups"
                    case .builds: return "builds"
                    case .email: return "email"
                    case .firstName: return "firstName"
                    case .inviteType: return "inviteType"
                    case .lastName: return "lastName"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "apps": self = .apps
                    case "betaGroups": self = .betaGroups
                    case "builds": self = .builds
                    case "email": self = .email
                    case "firstName": self = .firstName
                    case "inviteType": self = .inviteType
                    case "lastName": self = .lastName
                    default: self = .unknown(rawValue)
                    }
                }
            }
        }
    }
}

extension Relation<V1.Builds.ById.IndividualTesters.GET.Parameters.Fields, [V1.Builds.ById.IndividualTesters.GET.Parameters.Fields.BetaTesters]?> {
    /// the fields to include for returned resources of type betaTesters
    public static var betaTesters: Relation {
        .init(key: "fields[betaTesters]")
    }
}

// swiftlint:enable all
