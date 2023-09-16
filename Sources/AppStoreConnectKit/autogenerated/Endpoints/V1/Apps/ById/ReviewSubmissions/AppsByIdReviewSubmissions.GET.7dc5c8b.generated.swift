// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.Apps.ById.ReviewSubmissions {
    public struct GET: Endpoint {
        public typealias Response = ReviewSubmissionsResponse

        public var path: String {
            "/v1/apps/\(id)/reviewSubmissions"
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
                URLQueryItem(name: "fields[actors]",
                             value: parameters.fields[.actors]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[appStoreVersions]",
                             value: parameters.fields[.appStoreVersions]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[apps]",
                             value: parameters.fields[.apps]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[reviewSubmissionItems]",
                             value: parameters.fields[.reviewSubmissionItems]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[reviewSubmissions]",
                             value: parameters.fields[.reviewSubmissions]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[platform]",
                             value: parameters.filter[.platform]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[state]",
                             value: parameters.filter[.state]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[items]",
                             value: parameters.limit[.items].map { "\($0)" }),
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

        /// - Returns: **200**, List of ReviewSubmissions as `ReviewSubmissionsResponse`
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
                return try jsonDecoder.decode(ReviewSubmissionsResponse.self, from: data)

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

extension V1.Apps.ById.ReviewSubmissions.GET {
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

            public enum Actors: Hashable, Codable, RawRepresentable {
                case actorType
                case apiKeyId
                case userEmail
                case userFirstName
                case userLastName
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .actorType: return "actorType"
                    case .apiKeyId: return "apiKeyId"
                    case .userEmail: return "userEmail"
                    case .userFirstName: return "userFirstName"
                    case .userLastName: return "userLastName"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "actorType": self = .actorType
                    case "apiKeyId": self = .apiKeyId
                    case "userEmail": self = .userEmail
                    case "userFirstName": self = .userFirstName
                    case "userLastName": self = .userLastName
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum AppStoreVersions: Hashable, Codable, RawRepresentable {
                case ageRatingDeclaration
                case app
                case appClipDefaultExperience
                case appStoreReviewDetail
                case appStoreState
                case appStoreVersionExperiments
                case appStoreVersionExperimentsV2
                case appStoreVersionLocalizations
                case appStoreVersionPhasedRelease
                case appStoreVersionSubmission
                case build
                case copyright
                case createdDate
                case customerReviews
                case downloadable
                case earliestReleaseDate
                case platform
                case releaseType
                case routingAppCoverage
                case versionString
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .ageRatingDeclaration: return "ageRatingDeclaration"
                    case .app: return "app"
                    case .appClipDefaultExperience: return "appClipDefaultExperience"
                    case .appStoreReviewDetail: return "appStoreReviewDetail"
                    case .appStoreState: return "appStoreState"
                    case .appStoreVersionExperiments: return "appStoreVersionExperiments"
                    case .appStoreVersionExperimentsV2: return "appStoreVersionExperimentsV2"
                    case .appStoreVersionLocalizations: return "appStoreVersionLocalizations"
                    case .appStoreVersionPhasedRelease: return "appStoreVersionPhasedRelease"
                    case .appStoreVersionSubmission: return "appStoreVersionSubmission"
                    case .build: return "build"
                    case .copyright: return "copyright"
                    case .createdDate: return "createdDate"
                    case .customerReviews: return "customerReviews"
                    case .downloadable: return "downloadable"
                    case .earliestReleaseDate: return "earliestReleaseDate"
                    case .platform: return "platform"
                    case .releaseType: return "releaseType"
                    case .routingAppCoverage: return "routingAppCoverage"
                    case .versionString: return "versionString"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "ageRatingDeclaration": self = .ageRatingDeclaration
                    case "app": self = .app
                    case "appClipDefaultExperience": self = .appClipDefaultExperience
                    case "appStoreReviewDetail": self = .appStoreReviewDetail
                    case "appStoreState": self = .appStoreState
                    case "appStoreVersionExperiments": self = .appStoreVersionExperiments
                    case "appStoreVersionExperimentsV2": self = .appStoreVersionExperimentsV2
                    case "appStoreVersionLocalizations": self = .appStoreVersionLocalizations
                    case "appStoreVersionPhasedRelease": self = .appStoreVersionPhasedRelease
                    case "appStoreVersionSubmission": self = .appStoreVersionSubmission
                    case "build": self = .build
                    case "copyright": self = .copyright
                    case "createdDate": self = .createdDate
                    case "customerReviews": self = .customerReviews
                    case "downloadable": self = .downloadable
                    case "earliestReleaseDate": self = .earliestReleaseDate
                    case "platform": self = .platform
                    case "releaseType": self = .releaseType
                    case "routingAppCoverage": self = .routingAppCoverage
                    case "versionString": self = .versionString
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum Apps: Hashable, Codable, RawRepresentable {
                case appAvailability
                case appClips
                case appCustomProductPages
                case appEncryptionDeclarations
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
                case gameCenterDetail
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
                    case .appEncryptionDeclarations: return "appEncryptionDeclarations"
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
                    case .gameCenterDetail: return "gameCenterDetail"
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
                    case "appEncryptionDeclarations": self = .appEncryptionDeclarations
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
                    case "gameCenterDetail": self = .gameCenterDetail
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

            public enum ReviewSubmissionItems: Hashable, Codable, RawRepresentable {
                case appCustomProductPageVersion
                case appEvent
                case appStoreVersion
                case appStoreVersionExperiment
                case appStoreVersionExperimentV2
                case removed
                case resolved
                case reviewSubmission
                case state
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appCustomProductPageVersion: return "appCustomProductPageVersion"
                    case .appEvent: return "appEvent"
                    case .appStoreVersion: return "appStoreVersion"
                    case .appStoreVersionExperiment: return "appStoreVersionExperiment"
                    case .appStoreVersionExperimentV2: return "appStoreVersionExperimentV2"
                    case .removed: return "removed"
                    case .resolved: return "resolved"
                    case .reviewSubmission: return "reviewSubmission"
                    case .state: return "state"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "appCustomProductPageVersion": self = .appCustomProductPageVersion
                    case "appEvent": self = .appEvent
                    case "appStoreVersion": self = .appStoreVersion
                    case "appStoreVersionExperiment": self = .appStoreVersionExperiment
                    case "appStoreVersionExperimentV2": self = .appStoreVersionExperimentV2
                    case "removed": self = .removed
                    case "resolved": self = .resolved
                    case "reviewSubmission": self = .reviewSubmission
                    case "state": self = .state
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum ReviewSubmissions: Hashable, Codable, RawRepresentable {
                case app
                case appStoreVersionForReview
                case canceled
                case items
                case lastUpdatedByActor
                case platform
                case state
                case submitted
                case submittedByActor
                case submittedDate
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .app: return "app"
                    case .appStoreVersionForReview: return "appStoreVersionForReview"
                    case .canceled: return "canceled"
                    case .items: return "items"
                    case .lastUpdatedByActor: return "lastUpdatedByActor"
                    case .platform: return "platform"
                    case .state: return "state"
                    case .submitted: return "submitted"
                    case .submittedByActor: return "submittedByActor"
                    case .submittedDate: return "submittedDate"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "app": self = .app
                    case "appStoreVersionForReview": self = .appStoreVersionForReview
                    case "canceled": self = .canceled
                    case "items": self = .items
                    case "lastUpdatedByActor": self = .lastUpdatedByActor
                    case "platform": self = .platform
                    case "state": self = .state
                    case "submitted": self = .submitted
                    case "submittedByActor": self = .submittedByActor
                    case "submittedDate": self = .submittedDate
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type actors
                public static var actors: Relation<[Actors]?> {
                    .init(key: "fields[actors]")
                }

                /// the fields to include for returned resources of type appStoreVersions
                public static var appStoreVersions: Relation<[AppStoreVersions]?> {
                    .init(key: "fields[appStoreVersions]")
                }

                /// the fields to include for returned resources of type apps
                public static var apps: Relation<[Apps]?> {
                    .init(key: "fields[apps]")
                }

                /// the fields to include for returned resources of type reviewSubmissionItems
                public static var reviewSubmissionItems: Relation<[ReviewSubmissionItems]?> {
                    .init(key: "fields[reviewSubmissionItems]")
                }

                /// the fields to include for returned resources of type reviewSubmissions
                public static var reviewSubmissions: Relation<[ReviewSubmissions]?> {
                    .init(key: "fields[reviewSubmissions]")
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

            public enum Platform: Hashable, Codable, RawRepresentable {
                case iOS
                case macOS
                case tvOS
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .iOS: return "IOS"
                    case .macOS: return "MAC_OS"
                    case .tvOS: return "TV_OS"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "IOS": self = .iOS
                    case "MAC_OS": self = .macOS
                    case "TV_OS": self = .tvOS
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum State: Hashable, Codable, RawRepresentable {
                case canceling
                case complete
                case completing
                case inReview
                case readyForReview
                case unresolvedIssues
                case waitingForReview
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .canceling: return "CANCELING"
                    case .complete: return "COMPLETE"
                    case .completing: return "COMPLETING"
                    case .inReview: return "IN_REVIEW"
                    case .readyForReview: return "READY_FOR_REVIEW"
                    case .unresolvedIssues: return "UNRESOLVED_ISSUES"
                    case .waitingForReview: return "WAITING_FOR_REVIEW"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "CANCELING": self = .canceling
                    case "COMPLETE": self = .complete
                    case "COMPLETING": self = .completing
                    case "IN_REVIEW": self = .inReview
                    case "READY_FOR_REVIEW": self = .readyForReview
                    case "UNRESOLVED_ISSUES": self = .unresolvedIssues
                    case "WAITING_FOR_REVIEW": self = .waitingForReview
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// filter by attribute 'platform'
                public static var platform: Relation<[Platform]?> {
                    .init(key: "filter[platform]")
                }

                /// filter by attribute 'state'
                public static var state: Relation<[State]?> {
                    .init(key: "filter[state]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case app
            case appStoreVersionForReview
            case items
            case lastUpdatedByActor
            case submittedByActor
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .app: return "app"
                case .appStoreVersionForReview: return "appStoreVersionForReview"
                case .items: return "items"
                case .lastUpdatedByActor: return "lastUpdatedByActor"
                case .submittedByActor: return "submittedByActor"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "app": self = .app
                case "appStoreVersionForReview": self = .appStoreVersionForReview
                case "items": self = .items
                case "lastUpdatedByActor": self = .lastUpdatedByActor
                case "submittedByActor": self = .submittedByActor
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
                /// maximum number of related items returned (when they are included)
                public static var items: Relation<Int?> {
                    .init(key: "limit[items]")
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
