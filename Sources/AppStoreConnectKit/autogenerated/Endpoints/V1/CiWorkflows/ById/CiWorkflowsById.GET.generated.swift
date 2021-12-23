// autogenerated

// swiftlint:disable all
import Foundation

extension V1.CiWorkflows.ById {
    public struct GET: Endpoint {
        public typealias Response = CiWorkflowResponse

        public var path: String {
            "/v1/ciWorkflows/\(id)"
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
                URLQueryItem(name: "fields[ciBuildRuns]",
                             value: parameters.fields[.ciBuildRuns]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[ciWorkflows]",
                             value: parameters.fields[.ciWorkflows]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[scmRepositories]",
                             value: parameters.fields[.scmRepositories]?.map { "\($0)" }.joined(separator: ",")),
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

        /// - Returns: **200**, Single CiWorkflow as `CiWorkflowResponse`
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
                return try jsonDecoder.decode(CiWorkflowResponse.self, from: data)

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

extension V1.CiWorkflows.ById.GET {
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

            public enum CiBuildRuns: String, Hashable, Codable {
                case actions
                case buildRun
                case builds
                case cancelReason
                case clean
                case completionStatus
                case createdDate
                case destinationBranch
                case destinationCommit
                case executionProgress
                case finishedDate
                case isPullRequestBuild
                case issueCounts
                case number
                case product
                case pullRequest
                case sourceBranchOrTag
                case sourceCommit
                case startReason
                case startedDate
                case workflow
            }

            public enum CiWorkflows: String, Hashable, Codable {
                case actions
                case branchStartCondition
                case buildRuns
                case clean
                case containerFilePath
                case description
                case isEnabled
                case isLockedForEditing
                case lastModifiedDate
                case macOsVersion
                case name
                case product
                case pullRequestStartCondition
                case repository
                case scheduledStartCondition
                case tagStartCondition
                case xcodeVersion
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
                /// the fields to include for returned resources of type ciBuildRuns
                public static var ciBuildRuns: Relation<[CiBuildRuns]?> {
                    .init(key: "fields[ciBuildRuns]")
                }

                /// the fields to include for returned resources of type ciWorkflows
                public static var ciWorkflows: Relation<[CiWorkflows]?> {
                    .init(key: "fields[ciWorkflows]")
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

        public enum Include: String, Hashable, Codable {
            case macOsVersion
            case product
            case repository
            case xcodeVersion
        }
    }
}

// swiftlint:enable all