// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.CiProducts.ById.AdditionalRepositories {
    public struct GET: Endpoint {
        public typealias Response = ScmRepositoriesResponse

        public var path: String {
            "/v1/ciProducts/\(id)/additionalRepositories"
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
                URLQueryItem(name: "fields[scmGitReferences]",
                             value: parameters.fields[.scmGitReferences]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[scmProviders]",
                             value: parameters.fields[.scmProviders]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[scmRepositories]",
                             value: parameters.fields[.scmRepositories]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[id]",
                             value: parameters.filter[.id]?.map { "\($0)" }.joined(separator: ",")),
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

        /// - Returns: **200**, List of ScmRepositories as `ScmRepositoriesResponse`
        /// - Throws: **400**, Parameter error(s) as `ErrorResponse`
        /// - Throws: **401**, Unauthorized error(s) as `ErrorResponse`
        /// - Throws: **403**, Forbidden error as `ErrorResponse`
        /// - Throws: **404**, Not found error as `ErrorResponse`
        /// - Throws: **429**, Rate limit exceeded error as `ErrorResponse`
        public static func response(from data: Data, urlResponse: HTTPURLResponse) throws -> Response {
            var jsonDecoder: JSONDecoder {
                let decoder = JSONDecoder()
                return decoder
            }

            switch urlResponse.statusCode {
            case 200:
                return try jsonDecoder.decode(ScmRepositoriesResponse.self, from: data)

            case 400:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            case 401:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            case 403:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            case 404:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            case 429:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            default:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)
            }
        }
    }
}

extension V1.CiProducts.ById.AdditionalRepositories.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        public var filter: Filter = Filter()

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

            public struct ScmGitReferences: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var canonicalName: Self {
                    .init(rawValue: "canonicalName")
                }

                public static var isDeleted: Self {
                    .init(rawValue: "isDeleted")
                }

                public static var kind: Self {
                    .init(rawValue: "kind")
                }

                public static var name: Self {
                    .init(rawValue: "name")
                }

                public static var repository: Self {
                    .init(rawValue: "repository")
                }

                public var description: String {
                    rawValue
                }

                public var rawValue: String

                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
            }

            public struct ScmProviders: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var repositories: Self {
                    .init(rawValue: "repositories")
                }

                public static var scmProviderType: Self {
                    .init(rawValue: "scmProviderType")
                }

                public static var url: Self {
                    .init(rawValue: "url")
                }

                public var description: String {
                    rawValue
                }

                public var rawValue: String

                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
            }

            public struct ScmRepositories: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var defaultBranch: Self {
                    .init(rawValue: "defaultBranch")
                }

                public static var gitReferences: Self {
                    .init(rawValue: "gitReferences")
                }

                public static var httpCloneUrl: Self {
                    .init(rawValue: "httpCloneUrl")
                }

                public static var lastAccessedDate: Self {
                    .init(rawValue: "lastAccessedDate")
                }

                public static var ownerName: Self {
                    .init(rawValue: "ownerName")
                }

                public static var pullRequests: Self {
                    .init(rawValue: "pullRequests")
                }

                public static var repositoryName: Self {
                    .init(rawValue: "repositoryName")
                }

                public static var scmProvider: Self {
                    .init(rawValue: "scmProvider")
                }

                public static var sshCloneUrl: Self {
                    .init(rawValue: "sshCloneUrl")
                }

                public var description: String {
                    rawValue
                }

                public var rawValue: String

                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type scmGitReferences
                public static var scmGitReferences: Relation<[ScmGitReferences]?> {
                    .init(key: "fields[scmGitReferences]")
                }

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

        public struct Filter: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public struct Relation<T>: Hashable {
                /// filter by id(s)
                public static var id: Relation<[String]?> {
                    .init(key: "filter[id]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public struct Include: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
            public static var defaultBranch: Self {
                .init(rawValue: "defaultBranch")
            }

            public static var scmProvider: Self {
                .init(rawValue: "scmProvider")
            }

            public var description: String {
                rawValue
            }

            public var rawValue: String

            public init(rawValue: String) {
                self.rawValue = rawValue
            }
        }
    }
}

// swiftlint:enable all
