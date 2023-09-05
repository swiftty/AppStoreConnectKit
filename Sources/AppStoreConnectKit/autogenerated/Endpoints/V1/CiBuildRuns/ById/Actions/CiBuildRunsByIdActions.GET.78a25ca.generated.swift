// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.CiBuildRuns.ById.Actions {
    public struct GET: Endpoint {
        public typealias Response = CiBuildActionsResponse

        public var path: String {
            "/v1/ciBuildRuns/\(id)/actions"
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
                URLQueryItem(name: "fields[ciBuildActions]",
                             value: parameters.fields[.ciBuildActions]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[ciBuildRuns]",
                             value: parameters.fields[.ciBuildRuns]?.map { "\($0)" }.joined(separator: ",")),
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

        /// - Returns: **200**, List of CiBuildActions as `CiBuildActionsResponse`
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
                return try jsonDecoder.decode(CiBuildActionsResponse.self, from: data)

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

extension V1.CiBuildRuns.ById.Actions.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        /// maximum resources per page
        public var limit: Int?

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<Self, T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum CiBuildActions: Hashable, Codable, RawRepresentable {
                case actionType
                case artifacts
                case buildRun
                case completionStatus
                case executionProgress
                case finishedDate
                case isRequiredToPass
                case issueCounts
                case issues
                case name
                case startedDate
                case testResults
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .actionType: return "actionType"
                    case .artifacts: return "artifacts"
                    case .buildRun: return "buildRun"
                    case .completionStatus: return "completionStatus"
                    case .executionProgress: return "executionProgress"
                    case .finishedDate: return "finishedDate"
                    case .isRequiredToPass: return "isRequiredToPass"
                    case .issueCounts: return "issueCounts"
                    case .issues: return "issues"
                    case .name: return "name"
                    case .startedDate: return "startedDate"
                    case .testResults: return "testResults"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "actionType": self = .actionType
                    case "artifacts": self = .artifacts
                    case "buildRun": self = .buildRun
                    case "completionStatus": self = .completionStatus
                    case "executionProgress": self = .executionProgress
                    case "finishedDate": self = .finishedDate
                    case "isRequiredToPass": self = .isRequiredToPass
                    case "issueCounts": self = .issueCounts
                    case "issues": self = .issues
                    case "name": self = .name
                    case "startedDate": self = .startedDate
                    case "testResults": self = .testResults
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum CiBuildRuns: Hashable, Codable, RawRepresentable {
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
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .actions: return "actions"
                    case .buildRun: return "buildRun"
                    case .builds: return "builds"
                    case .cancelReason: return "cancelReason"
                    case .clean: return "clean"
                    case .completionStatus: return "completionStatus"
                    case .createdDate: return "createdDate"
                    case .destinationBranch: return "destinationBranch"
                    case .destinationCommit: return "destinationCommit"
                    case .executionProgress: return "executionProgress"
                    case .finishedDate: return "finishedDate"
                    case .isPullRequestBuild: return "isPullRequestBuild"
                    case .issueCounts: return "issueCounts"
                    case .number: return "number"
                    case .product: return "product"
                    case .pullRequest: return "pullRequest"
                    case .sourceBranchOrTag: return "sourceBranchOrTag"
                    case .sourceCommit: return "sourceCommit"
                    case .startReason: return "startReason"
                    case .startedDate: return "startedDate"
                    case .workflow: return "workflow"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "actions": self = .actions
                    case "buildRun": self = .buildRun
                    case "builds": self = .builds
                    case "cancelReason": self = .cancelReason
                    case "clean": self = .clean
                    case "completionStatus": self = .completionStatus
                    case "createdDate": self = .createdDate
                    case "destinationBranch": self = .destinationBranch
                    case "destinationCommit": self = .destinationCommit
                    case "executionProgress": self = .executionProgress
                    case "finishedDate": self = .finishedDate
                    case "isPullRequestBuild": self = .isPullRequestBuild
                    case "issueCounts": self = .issueCounts
                    case "number": self = .number
                    case "product": self = .product
                    case "pullRequest": self = .pullRequest
                    case "sourceBranchOrTag": self = .sourceBranchOrTag
                    case "sourceCommit": self = .sourceCommit
                    case "startReason": self = .startReason
                    case "startedDate": self = .startedDate
                    case "workflow": self = .workflow
                    default: self = .unknown(rawValue)
                    }
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case buildRun
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .buildRun: return "buildRun"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "buildRun": self = .buildRun
                default: self = .unknown(rawValue)
                }
            }
        }
    }
}

extension Relation<V1.CiBuildRuns.ById.Actions.GET.Parameters.Fields, [V1.CiBuildRuns.ById.Actions.GET.Parameters.Fields.CiBuildActions]?> {
    /// the fields to include for returned resources of type ciBuildActions
    public static var ciBuildActions: Relation {
        .init(key: "fields[ciBuildActions]")
    }
}

extension Relation<V1.CiBuildRuns.ById.Actions.GET.Parameters.Fields, [V1.CiBuildRuns.ById.Actions.GET.Parameters.Fields.CiBuildRuns]?> {
    /// the fields to include for returned resources of type ciBuildRuns
    public static var ciBuildRuns: Relation {
        .init(key: "fields[ciBuildRuns]")
    }
}

// swiftlint:enable all
