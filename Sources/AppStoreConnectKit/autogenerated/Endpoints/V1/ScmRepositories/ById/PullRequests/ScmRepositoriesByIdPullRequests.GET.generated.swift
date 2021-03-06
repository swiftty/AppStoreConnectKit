// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.ScmRepositories.ById.PullRequests {
    public struct GET: Endpoint {
        public typealias Response = ScmPullRequestsResponse

        public var path: String {
            "/v1/scmRepositories/\(id)/pullRequests"
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
                URLQueryItem(name: "fields[scmPullRequests]",
                             value: parameters.fields[.scmPullRequests]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[scmRepositories]",
                             value: parameters.fields[.scmRepositories]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
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

        /// - Returns: **200**, List of ScmPullRequests as `ScmPullRequestsResponse`
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
                return try jsonDecoder.decode(ScmPullRequestsResponse.self, from: data)

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

extension V1.ScmRepositories.ById.PullRequests.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        /// maximum resources per page
        public var limit: Int?

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum ScmPullRequests: Hashable, Codable, RawRepresentable {
                case destinationBranchName
                case destinationRepositoryName
                case destinationRepositoryOwner
                case isClosed
                case isCrossRepository
                case number
                case repository
                case sourceBranchName
                case sourceRepositoryName
                case sourceRepositoryOwner
                case title
                case webUrl
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .destinationBranchName: return "destinationBranchName"
                    case .destinationRepositoryName: return "destinationRepositoryName"
                    case .destinationRepositoryOwner: return "destinationRepositoryOwner"
                    case .isClosed: return "isClosed"
                    case .isCrossRepository: return "isCrossRepository"
                    case .number: return "number"
                    case .repository: return "repository"
                    case .sourceBranchName: return "sourceBranchName"
                    case .sourceRepositoryName: return "sourceRepositoryName"
                    case .sourceRepositoryOwner: return "sourceRepositoryOwner"
                    case .title: return "title"
                    case .webUrl: return "webUrl"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "destinationBranchName": self = .destinationBranchName
                    case "destinationRepositoryName": self = .destinationRepositoryName
                    case "destinationRepositoryOwner": self = .destinationRepositoryOwner
                    case "isClosed": self = .isClosed
                    case "isCrossRepository": self = .isCrossRepository
                    case "number": self = .number
                    case "repository": self = .repository
                    case "sourceBranchName": self = .sourceBranchName
                    case "sourceRepositoryName": self = .sourceRepositoryName
                    case "sourceRepositoryOwner": self = .sourceRepositoryOwner
                    case "title": self = .title
                    case "webUrl": self = .webUrl
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
                /// the fields to include for returned resources of type scmPullRequests
                public static var scmPullRequests: Relation<[ScmPullRequests]?> {
                    .init(key: "fields[scmPullRequests]")
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

        public enum Include: Hashable, Codable, RawRepresentable {
            case repository
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .repository: return "repository"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "repository": self = .repository
                default: self = .unknown(rawValue)
                }
            }
        }
    }
}

// swiftlint:enable all
