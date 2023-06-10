// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.CiProducts {
    public struct GET: Endpoint {
        public typealias Response = CiProductsResponse

        public var path: String {
            "/v1/ciProducts"
        }

        public var parameters: Parameters = Parameters()

        public init() {

        }

        public func request(with baseURL: URL) throws -> URLRequest? {
            var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
            components?.path = path

            components?.queryItems = [
                URLQueryItem(name: "fields[apps]",
                             value: parameters.fields[.apps]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[ciBuildRuns]",
                             value: parameters.fields[.ciBuildRuns]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[ciProducts]",
                             value: parameters.fields[.ciProducts]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[ciWorkflows]",
                             value: parameters.fields[.ciWorkflows]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[scmRepositories]",
                             value: parameters.fields[.scmRepositories]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[app]",
                             value: parameters.filter[.app]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[productType]",
                             value: parameters.filter[.productType]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[primaryRepositories]",
                             value: parameters.limit[.primaryRepositories].map { "\($0)" }),
                URLQueryItem(name: "limit",
                             value: parameters.limit[].map { "\($0)" })
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, List of CiProducts as `CiProductsResponse`
        /// - Throws: **400**, Parameter error(s) as `ErrorResponse`
        /// - Throws: **403**, Forbidden error as `ErrorResponse`
        public static func response(from data: Data, urlResponse: HTTPURLResponse) throws -> Response {
            var jsonDecoder: JSONDecoder {
                let decoder = JSONDecoder()
                return decoder
            }

            switch urlResponse.statusCode {
            case 200:
                return try jsonDecoder.decode(CiProductsResponse.self, from: data)

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

extension V1.CiProducts.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        public var filter: Filter = Filter()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        /// maximum resources per page
        public var limit: Limit = Limit()

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum Apps: Hashable, Codable, RawRepresentable {
                case appAvailability
                case appClips
                case appCustomProductPages
                case appEvents
                case appInfos
                case appPricePoints
                case appPriceSchedule
                case appStoreVersionExperimentsV2
                case appStoreVersions
                case availableInNewTerritories
                case availableTerritories
                case betaAppLocalizations
                case betaAppReviewDetail
                case betaGroups
                case betaLicenseAgreement
                case betaTesters
                case builds
                case bundleId
                case ciProduct
                case contentRightsDeclaration
                case customerReviews
                case endUserLicenseAgreement
                case gameCenterEnabledVersions
                case inAppPurchases
                case inAppPurchasesV2
                case isOrEverWasMadeForKids
                case name
                case perfPowerMetrics
                case preOrder
                case preReleaseVersions
                case pricePoints
                case prices
                case primaryLocale
                case promotedPurchases
                case reviewSubmissions
                case sku
                case subscriptionGracePeriod
                case subscriptionGroups
                case subscriptionStatusUrl
                case subscriptionStatusUrlForSandbox
                case subscriptionStatusUrlVersion
                case subscriptionStatusUrlVersionForSandbox
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appAvailability: return "appAvailability"
                    case .appClips: return "appClips"
                    case .appCustomProductPages: return "appCustomProductPages"
                    case .appEvents: return "appEvents"
                    case .appInfos: return "appInfos"
                    case .appPricePoints: return "appPricePoints"
                    case .appPriceSchedule: return "appPriceSchedule"
                    case .appStoreVersionExperimentsV2: return "appStoreVersionExperimentsV2"
                    case .appStoreVersions: return "appStoreVersions"
                    case .availableInNewTerritories: return "availableInNewTerritories"
                    case .availableTerritories: return "availableTerritories"
                    case .betaAppLocalizations: return "betaAppLocalizations"
                    case .betaAppReviewDetail: return "betaAppReviewDetail"
                    case .betaGroups: return "betaGroups"
                    case .betaLicenseAgreement: return "betaLicenseAgreement"
                    case .betaTesters: return "betaTesters"
                    case .builds: return "builds"
                    case .bundleId: return "bundleId"
                    case .ciProduct: return "ciProduct"
                    case .contentRightsDeclaration: return "contentRightsDeclaration"
                    case .customerReviews: return "customerReviews"
                    case .endUserLicenseAgreement: return "endUserLicenseAgreement"
                    case .gameCenterEnabledVersions: return "gameCenterEnabledVersions"
                    case .inAppPurchases: return "inAppPurchases"
                    case .inAppPurchasesV2: return "inAppPurchasesV2"
                    case .isOrEverWasMadeForKids: return "isOrEverWasMadeForKids"
                    case .name: return "name"
                    case .perfPowerMetrics: return "perfPowerMetrics"
                    case .preOrder: return "preOrder"
                    case .preReleaseVersions: return "preReleaseVersions"
                    case .pricePoints: return "pricePoints"
                    case .prices: return "prices"
                    case .primaryLocale: return "primaryLocale"
                    case .promotedPurchases: return "promotedPurchases"
                    case .reviewSubmissions: return "reviewSubmissions"
                    case .sku: return "sku"
                    case .subscriptionGracePeriod: return "subscriptionGracePeriod"
                    case .subscriptionGroups: return "subscriptionGroups"
                    case .subscriptionStatusUrl: return "subscriptionStatusUrl"
                    case .subscriptionStatusUrlForSandbox: return "subscriptionStatusUrlForSandbox"
                    case .subscriptionStatusUrlVersion: return "subscriptionStatusUrlVersion"
                    case .subscriptionStatusUrlVersionForSandbox: return "subscriptionStatusUrlVersionForSandbox"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "appAvailability": self = .appAvailability
                    case "appClips": self = .appClips
                    case "appCustomProductPages": self = .appCustomProductPages
                    case "appEvents": self = .appEvents
                    case "appInfos": self = .appInfos
                    case "appPricePoints": self = .appPricePoints
                    case "appPriceSchedule": self = .appPriceSchedule
                    case "appStoreVersionExperimentsV2": self = .appStoreVersionExperimentsV2
                    case "appStoreVersions": self = .appStoreVersions
                    case "availableInNewTerritories": self = .availableInNewTerritories
                    case "availableTerritories": self = .availableTerritories
                    case "betaAppLocalizations": self = .betaAppLocalizations
                    case "betaAppReviewDetail": self = .betaAppReviewDetail
                    case "betaGroups": self = .betaGroups
                    case "betaLicenseAgreement": self = .betaLicenseAgreement
                    case "betaTesters": self = .betaTesters
                    case "builds": self = .builds
                    case "bundleId": self = .bundleId
                    case "ciProduct": self = .ciProduct
                    case "contentRightsDeclaration": self = .contentRightsDeclaration
                    case "customerReviews": self = .customerReviews
                    case "endUserLicenseAgreement": self = .endUserLicenseAgreement
                    case "gameCenterEnabledVersions": self = .gameCenterEnabledVersions
                    case "inAppPurchases": self = .inAppPurchases
                    case "inAppPurchasesV2": self = .inAppPurchasesV2
                    case "isOrEverWasMadeForKids": self = .isOrEverWasMadeForKids
                    case "name": self = .name
                    case "perfPowerMetrics": self = .perfPowerMetrics
                    case "preOrder": self = .preOrder
                    case "preReleaseVersions": self = .preReleaseVersions
                    case "pricePoints": self = .pricePoints
                    case "prices": self = .prices
                    case "primaryLocale": self = .primaryLocale
                    case "promotedPurchases": self = .promotedPurchases
                    case "reviewSubmissions": self = .reviewSubmissions
                    case "sku": self = .sku
                    case "subscriptionGracePeriod": self = .subscriptionGracePeriod
                    case "subscriptionGroups": self = .subscriptionGroups
                    case "subscriptionStatusUrl": self = .subscriptionStatusUrl
                    case "subscriptionStatusUrlForSandbox": self = .subscriptionStatusUrlForSandbox
                    case "subscriptionStatusUrlVersion": self = .subscriptionStatusUrlVersion
                    case "subscriptionStatusUrlVersionForSandbox": self = .subscriptionStatusUrlVersionForSandbox
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

            public enum CiProducts: Hashable, Codable, RawRepresentable {
                case additionalRepositories
                case app
                case buildRuns
                case bundleId
                case createdDate
                case name
                case primaryRepositories
                case productType
                case workflows
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .additionalRepositories: return "additionalRepositories"
                    case .app: return "app"
                    case .buildRuns: return "buildRuns"
                    case .bundleId: return "bundleId"
                    case .createdDate: return "createdDate"
                    case .name: return "name"
                    case .primaryRepositories: return "primaryRepositories"
                    case .productType: return "productType"
                    case .workflows: return "workflows"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "additionalRepositories": self = .additionalRepositories
                    case "app": self = .app
                    case "buildRuns": self = .buildRuns
                    case "bundleId": self = .bundleId
                    case "createdDate": self = .createdDate
                    case "name": self = .name
                    case "primaryRepositories": self = .primaryRepositories
                    case "productType": self = .productType
                    case "workflows": self = .workflows
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum CiWorkflows: Hashable, Codable, RawRepresentable {
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
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .actions: return "actions"
                    case .branchStartCondition: return "branchStartCondition"
                    case .buildRuns: return "buildRuns"
                    case .clean: return "clean"
                    case .containerFilePath: return "containerFilePath"
                    case .description: return "description"
                    case .isEnabled: return "isEnabled"
                    case .isLockedForEditing: return "isLockedForEditing"
                    case .lastModifiedDate: return "lastModifiedDate"
                    case .macOsVersion: return "macOsVersion"
                    case .name: return "name"
                    case .product: return "product"
                    case .pullRequestStartCondition: return "pullRequestStartCondition"
                    case .repository: return "repository"
                    case .scheduledStartCondition: return "scheduledStartCondition"
                    case .tagStartCondition: return "tagStartCondition"
                    case .xcodeVersion: return "xcodeVersion"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "actions": self = .actions
                    case "branchStartCondition": self = .branchStartCondition
                    case "buildRuns": self = .buildRuns
                    case "clean": self = .clean
                    case "containerFilePath": self = .containerFilePath
                    case "description": self = .description
                    case "isEnabled": self = .isEnabled
                    case "isLockedForEditing": self = .isLockedForEditing
                    case "lastModifiedDate": self = .lastModifiedDate
                    case "macOsVersion": self = .macOsVersion
                    case "name": self = .name
                    case "product": self = .product
                    case "pullRequestStartCondition": self = .pullRequestStartCondition
                    case "repository": self = .repository
                    case "scheduledStartCondition": self = .scheduledStartCondition
                    case "tagStartCondition": self = .tagStartCondition
                    case "xcodeVersion": self = .xcodeVersion
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
                /// the fields to include for returned resources of type apps
                public static var apps: Relation<[Apps]?> {
                    .init(key: "fields[apps]")
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

            public enum ProductType: Hashable, Codable, RawRepresentable {
                case app
                case framework
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .app: return "APP"
                    case .framework: return "FRAMEWORK"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "APP": self = .app
                    case "FRAMEWORK": self = .framework
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// filter by id(s) of related 'app'
                public static var app: Relation<[String]?> {
                    .init(key: "filter[app]")
                }

                /// filter by attribute 'productType'
                public static var productType: Relation<[ProductType]?> {
                    .init(key: "filter[productType]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case app
            case bundleId
            case primaryRepositories
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .app: return "app"
                case .bundleId: return "bundleId"
                case .primaryRepositories: return "primaryRepositories"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "app": self = .app
                case "bundleId": self = .bundleId
                case "primaryRepositories": self = .primaryRepositories
                default: self = .unknown(rawValue)
                }
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
                /// maximum number of related primaryRepositories returned (when they are included)
                public static var primaryRepositories: Relation<Int?> {
                    .init(key: "limit[primaryRepositories]")
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
