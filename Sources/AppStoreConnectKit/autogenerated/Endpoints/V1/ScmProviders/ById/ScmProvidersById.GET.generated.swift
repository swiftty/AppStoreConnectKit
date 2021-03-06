// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.ScmProviders.ById {
    public struct GET: Endpoint {
        public typealias Response = ScmProviderResponse

        public var path: String {
            "/v1/scmProviders/\(id)"
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
                URLQueryItem(name: "fields[scmProviders]",
                             value: parameters.fields[.scmProviders]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[scmRepositories]",
                             value: parameters.fields[.scmRepositories]?.map { "\($0)" }.joined(separator: ","))
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Single ScmProvider as `ScmProviderResponse`
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
                return try jsonDecoder.decode(ScmProviderResponse.self, from: data)

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

extension V1.ScmProviders.ById.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum ScmProviders: Hashable, Codable, RawRepresentable {
                case repositories
                case scmProviderType
                case url
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .repositories: return "repositories"
                    case .scmProviderType: return "scmProviderType"
                    case .url: return "url"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "repositories": self = .repositories
                    case "scmProviderType": self = .scmProviderType
                    case "url": self = .url
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum ScmRepositories: Hashable, Codable, RawRepresentable {
                case defaultBranch
                case gitReferences
                case httpCloneUrl
                case lastAccessedDate
                case ownerName
                case pullRequests
                case repositoryName
                case scmProvider
                case sshCloneUrl
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .defaultBranch: return "defaultBranch"
                    case .gitReferences: return "gitReferences"
                    case .httpCloneUrl: return "httpCloneUrl"
                    case .lastAccessedDate: return "lastAccessedDate"
                    case .ownerName: return "ownerName"
                    case .pullRequests: return "pullRequests"
                    case .repositoryName: return "repositoryName"
                    case .scmProvider: return "scmProvider"
                    case .sshCloneUrl: return "sshCloneUrl"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "defaultBranch": self = .defaultBranch
                    case "gitReferences": self = .gitReferences
                    case "httpCloneUrl": self = .httpCloneUrl
                    case "lastAccessedDate": self = .lastAccessedDate
                    case "ownerName": self = .ownerName
                    case "pullRequests": self = .pullRequests
                    case "repositoryName": self = .repositoryName
                    case "scmProvider": self = .scmProvider
                    case "sshCloneUrl": self = .sshCloneUrl
                    default: self = .unknown(rawValue)
                    }
                }
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
