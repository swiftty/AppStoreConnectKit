// autogenerated

// swiftlint:disable all
import Foundation

extension V1.ScmProviders {
    public struct GET: Endpoint {
        public typealias Response = ScmProvidersResponse

        public var path: String {
            "/v1/scmProviders"
        }

        public var parameters: Parameters = Parameters()

        public init() {

        }

        public func request(with baseURL: URL) throws -> URLRequest? {
            var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
            components?.path = path

            components?.queryItems = [
                URLQueryItem(name: "fields[scmProviders]",
                             value: parameters.fields[.scmProviders]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[scmRepositories]",
                             value: parameters.fields[.scmRepositories]?.map { "\($0)" }.joined(separator: ",")),
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

        /// - Returns: **200**, List of ScmProviders as `ScmProvidersResponse`
        /// - Throws: **400**, Parameter error(s) as `ErrorResponse`
        /// - Throws: **403**, Forbidden error as `ErrorResponse`
        public static func response(from data: Data, urlResponse: HTTPURLResponse) throws -> Response {
            var jsonDecoder: JSONDecoder {
                let decoder = JSONDecoder()
                return decoder
            }

            switch urlResponse.statusCode {
            case 200:
                return try jsonDecoder.decode(ScmProvidersResponse.self, from: data)

            case 400:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            case 403:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            default:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)
            }
        }
    }
}

extension V1.ScmProviders.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        /// maximum resources per page
        public var limit: Int?

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum ScmProviders: String, Hashable, Codable {
                case repositories
                case scmProviderType
                case url
            }

            public enum ScmRepositories: String, Hashable, Codable {
                case defaultBranch
                case gitReferences
                case httpCloneUrl
                case lastAccessedDate
                case ownerName
                case pullRequests
                case repositoryName
                case scmProvider
                case sshCloneUrl
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type scmProviders
                public static var scmProviders: Relation<[ScmProviders]?> {
                    .init(key: "fields[scmProviders]")
                }

                /// the fields to include for returned resources of type scmRepositories
                public static var scmRepositories: Relation<[ScmRepositories]?> {
                    .init(key: "fields[scmRepositories]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }
    }
}

// swiftlint:enable all
