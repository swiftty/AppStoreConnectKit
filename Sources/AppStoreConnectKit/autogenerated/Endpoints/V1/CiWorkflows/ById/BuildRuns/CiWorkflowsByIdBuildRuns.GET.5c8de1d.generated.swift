// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.CiWorkflows.ById.BuildRuns {
    public struct GET: Endpoint {
        public typealias Response = CiBuildRunsResponse

        public var path: String {
            "/v1/ciWorkflows/\(id)/buildRuns"
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
                URLQueryItem(name: "fields[builds]",
                             value: parameters.fields[.builds]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[ciBuildRuns]",
                             value: parameters.fields[.ciBuildRuns]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[ciProducts]",
                             value: parameters.fields[.ciProducts]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[ciWorkflows]",
                             value: parameters.fields[.ciWorkflows]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[scmGitReferences]",
                             value: parameters.fields[.scmGitReferences]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[scmPullRequests]",
                             value: parameters.fields[.scmPullRequests]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[builds]",
                             value: parameters.filter[.builds]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[builds]",
                             value: parameters.limit[.builds].map { "\($0)" }),
                URLQueryItem(name: "limit",
                             value: parameters.limit[].map { "\($0)" }),
                URLQueryItem(name: "sort",
                             value: parameters.sort?.map { "\($0)" }.joined(separator: ","))
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, List of CiBuildRuns as `CiBuildRunsResponse`
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
                return try jsonDecoder.decode(CiBuildRunsResponse.self, from: data)

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

extension V1.CiWorkflows.ById.BuildRuns.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        public var filter: Filter = Filter()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        /// maximum resources per page
        public var limit: Limit = Limit()

        /// comma-separated list of sort expressions; resources will be sorted as specified
        public var sort: [Sort]?

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public struct Builds: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var app: Self {
                    .init(rawValue: "app")
                }

                public static var appEncryptionDeclaration: Self {
                    .init(rawValue: "appEncryptionDeclaration")
                }

                public static var appStoreVersion: Self {
                    .init(rawValue: "appStoreVersion")
                }

                public static var betaAppReviewSubmission: Self {
                    .init(rawValue: "betaAppReviewSubmission")
                }

                public static var betaBuildLocalizations: Self {
                    .init(rawValue: "betaBuildLocalizations")
                }

                public static var betaGroups: Self {
                    .init(rawValue: "betaGroups")
                }

                public static var buildAudienceType: Self {
                    .init(rawValue: "buildAudienceType")
                }

                public static var buildBetaDetail: Self {
                    .init(rawValue: "buildBetaDetail")
                }

                public static var buildBundles: Self {
                    .init(rawValue: "buildBundles")
                }

                public static var computedMinMacOsVersion: Self {
                    .init(rawValue: "computedMinMacOsVersion")
                }

                public static var computedMinVisionOsVersion: Self {
                    .init(rawValue: "computedMinVisionOsVersion")
                }

                public static var diagnosticSignatures: Self {
                    .init(rawValue: "diagnosticSignatures")
                }

                public static var expirationDate: Self {
                    .init(rawValue: "expirationDate")
                }

                public static var expired: Self {
                    .init(rawValue: "expired")
                }

                public static var iconAssetToken: Self {
                    .init(rawValue: "iconAssetToken")
                }

                public static var icons: Self {
                    .init(rawValue: "icons")
                }

                public static var individualTesters: Self {
                    .init(rawValue: "individualTesters")
                }

                public static var lsMinimumSystemVersion: Self {
                    .init(rawValue: "lsMinimumSystemVersion")
                }

                public static var minOsVersion: Self {
                    .init(rawValue: "minOsVersion")
                }

                public static var perfPowerMetrics: Self {
                    .init(rawValue: "perfPowerMetrics")
                }

                public static var preReleaseVersion: Self {
                    .init(rawValue: "preReleaseVersion")
                }

                public static var processingState: Self {
                    .init(rawValue: "processingState")
                }

                public static var uploadedDate: Self {
                    .init(rawValue: "uploadedDate")
                }

                public static var usesNonExemptEncryption: Self {
                    .init(rawValue: "usesNonExemptEncryption")
                }

                public static var version: Self {
                    .init(rawValue: "version")
                }

                public var description: String {
                    rawValue
                }

                public var rawValue: String

                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
            }

            public struct CiBuildRuns: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var actions: Self {
                    .init(rawValue: "actions")
                }

                public static var builds: Self {
                    .init(rawValue: "builds")
                }

                public static var cancelReason: Self {
                    .init(rawValue: "cancelReason")
                }

                public static var completionStatus: Self {
                    .init(rawValue: "completionStatus")
                }

                public static var createdDate: Self {
                    .init(rawValue: "createdDate")
                }

                public static var destinationBranch: Self {
                    .init(rawValue: "destinationBranch")
                }

                public static var destinationCommit: Self {
                    .init(rawValue: "destinationCommit")
                }

                public static var executionProgress: Self {
                    .init(rawValue: "executionProgress")
                }

                public static var finishedDate: Self {
                    .init(rawValue: "finishedDate")
                }

                public static var isPullRequestBuild: Self {
                    .init(rawValue: "isPullRequestBuild")
                }

                public static var issueCounts: Self {
                    .init(rawValue: "issueCounts")
                }

                public static var number: Self {
                    .init(rawValue: "number")
                }

                public static var product: Self {
                    .init(rawValue: "product")
                }

                public static var pullRequest: Self {
                    .init(rawValue: "pullRequest")
                }

                public static var sourceBranchOrTag: Self {
                    .init(rawValue: "sourceBranchOrTag")
                }

                public static var sourceCommit: Self {
                    .init(rawValue: "sourceCommit")
                }

                public static var startReason: Self {
                    .init(rawValue: "startReason")
                }

                public static var startedDate: Self {
                    .init(rawValue: "startedDate")
                }

                public static var workflow: Self {
                    .init(rawValue: "workflow")
                }

                public var description: String {
                    rawValue
                }

                public var rawValue: String

                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
            }

            public struct CiProducts: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var additionalRepositories: Self {
                    .init(rawValue: "additionalRepositories")
                }

                public static var app: Self {
                    .init(rawValue: "app")
                }

                public static var buildRuns: Self {
                    .init(rawValue: "buildRuns")
                }

                public static var bundleId: Self {
                    .init(rawValue: "bundleId")
                }

                public static var createdDate: Self {
                    .init(rawValue: "createdDate")
                }

                public static var name: Self {
                    .init(rawValue: "name")
                }

                public static var primaryRepositories: Self {
                    .init(rawValue: "primaryRepositories")
                }

                public static var productType: Self {
                    .init(rawValue: "productType")
                }

                public static var workflows: Self {
                    .init(rawValue: "workflows")
                }

                public var description: String {
                    rawValue
                }

                public var rawValue: String

                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
            }

            public struct CiWorkflows: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var actions: Self {
                    .init(rawValue: "actions")
                }

                public static var branchStartCondition: Self {
                    .init(rawValue: "branchStartCondition")
                }

                public static var buildRuns: Self {
                    .init(rawValue: "buildRuns")
                }

                public static var clean: Self {
                    .init(rawValue: "clean")
                }

                public static var containerFilePath: Self {
                    .init(rawValue: "containerFilePath")
                }

                public static var description: Self {
                    .init(rawValue: "description")
                }

                public static var isEnabled: Self {
                    .init(rawValue: "isEnabled")
                }

                public static var isLockedForEditing: Self {
                    .init(rawValue: "isLockedForEditing")
                }

                public static var lastModifiedDate: Self {
                    .init(rawValue: "lastModifiedDate")
                }

                public static var macOsVersion: Self {
                    .init(rawValue: "macOsVersion")
                }

                public static var manualBranchStartCondition: Self {
                    .init(rawValue: "manualBranchStartCondition")
                }

                public static var manualPullRequestStartCondition: Self {
                    .init(rawValue: "manualPullRequestStartCondition")
                }

                public static var manualTagStartCondition: Self {
                    .init(rawValue: "manualTagStartCondition")
                }

                public static var name: Self {
                    .init(rawValue: "name")
                }

                public static var product: Self {
                    .init(rawValue: "product")
                }

                public static var pullRequestStartCondition: Self {
                    .init(rawValue: "pullRequestStartCondition")
                }

                public static var repository: Self {
                    .init(rawValue: "repository")
                }

                public static var scheduledStartCondition: Self {
                    .init(rawValue: "scheduledStartCondition")
                }

                public static var tagStartCondition: Self {
                    .init(rawValue: "tagStartCondition")
                }

                public static var xcodeVersion: Self {
                    .init(rawValue: "xcodeVersion")
                }

                public var description: String {
                    rawValue
                }

                public var rawValue: String

                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
            }

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

            public struct ScmPullRequests: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var destinationBranchName: Self {
                    .init(rawValue: "destinationBranchName")
                }

                public static var destinationRepositoryName: Self {
                    .init(rawValue: "destinationRepositoryName")
                }

                public static var destinationRepositoryOwner: Self {
                    .init(rawValue: "destinationRepositoryOwner")
                }

                public static var isClosed: Self {
                    .init(rawValue: "isClosed")
                }

                public static var isCrossRepository: Self {
                    .init(rawValue: "isCrossRepository")
                }

                public static var number: Self {
                    .init(rawValue: "number")
                }

                public static var repository: Self {
                    .init(rawValue: "repository")
                }

                public static var sourceBranchName: Self {
                    .init(rawValue: "sourceBranchName")
                }

                public static var sourceRepositoryName: Self {
                    .init(rawValue: "sourceRepositoryName")
                }

                public static var sourceRepositoryOwner: Self {
                    .init(rawValue: "sourceRepositoryOwner")
                }

                public static var title: Self {
                    .init(rawValue: "title")
                }

                public static var webUrl: Self {
                    .init(rawValue: "webUrl")
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
                /// the fields to include for returned resources of type builds
                public static var builds: Relation<[Builds]?> {
                    .init(key: "fields[builds]")
                }

                /// the fields to include for returned resources of type ciBuildRuns
                public static var ciBuildRuns: Relation<[CiBuildRuns]?> {
                    .init(key: "fields[ciBuildRuns]")
                }

                /// the fields to include for returned resources of type ciProducts
                public static var ciProducts: Relation<[CiProducts]?> {
                    .init(key: "fields[ciProducts]")
                }

                /// the fields to include for returned resources of type ciWorkflows
                public static var ciWorkflows: Relation<[CiWorkflows]?> {
                    .init(key: "fields[ciWorkflows]")
                }

                /// the fields to include for returned resources of type scmGitReferences
                public static var scmGitReferences: Relation<[ScmGitReferences]?> {
                    .init(key: "fields[scmGitReferences]")
                }

                /// the fields to include for returned resources of type scmPullRequests
                public static var scmPullRequests: Relation<[ScmPullRequests]?> {
                    .init(key: "fields[scmPullRequests]")
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
                /// filter by id(s) of related 'builds'
                public static var builds: Relation<[String]?> {
                    .init(key: "filter[builds]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public struct Include: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
            public static var builds: Self {
                .init(rawValue: "builds")
            }

            public static var destinationBranch: Self {
                .init(rawValue: "destinationBranch")
            }

            public static var product: Self {
                .init(rawValue: "product")
            }

            public static var pullRequest: Self {
                .init(rawValue: "pullRequest")
            }

            public static var sourceBranchOrTag: Self {
                .init(rawValue: "sourceBranchOrTag")
            }

            public static var workflow: Self {
                .init(rawValue: "workflow")
            }

            public var description: String {
                rawValue
            }

            public var rawValue: String

            public init(rawValue: String) {
                self.rawValue = rawValue
            }
        }

        public struct Limit: Hashable {
            public subscript () -> Int? {
                get { self[Relation<Int?>(key: "limit")] }
                set { self[Relation<Int?>(key: "limit")] = newValue }
            }

            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public struct Relation<T>: Hashable {
                /// maximum number of related builds returned (when they are included)
                public static var builds: Relation<Int?> {
                    .init(key: "limit[builds]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public struct Sort: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
            public static var number: Self {
                .init(rawValue: "number")
            }

            public static var numberDesc: Self {
                .init(rawValue: "-number")
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
