// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.BetaTesters.ById {
    public struct GET: Endpoint {
        public typealias Response = BetaTesterResponse

        public var path: String {
            "/v1/betaTesters/\(id)"
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
                URLQueryItem(name: "fields[apps]",
                             value: parameters.fields[.apps]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[betaGroups]",
                             value: parameters.fields[.betaGroups]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[betaTesters]",
                             value: parameters.fields[.betaTesters]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[builds]",
                             value: parameters.fields[.builds]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[apps]",
                             value: parameters.limit[.apps].map { "\($0)" }),
                URLQueryItem(name: "limit[betaGroups]",
                             value: parameters.limit[.betaGroups].map { "\($0)" }),
                URLQueryItem(name: "limit[builds]",
                             value: parameters.limit[.builds].map { "\($0)" })
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Single BetaTester as `BetaTesterResponse`
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
                return try jsonDecoder.decode(BetaTesterResponse.self, from: data)

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

extension V1.BetaTesters.ById.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        public var limit: Limit = Limit()

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<Self, T>) -> T {
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

            public enum BetaGroups: Hashable, Codable, RawRepresentable {
                case app
                case betaTesters
                case builds
                case createdDate
                case feedbackEnabled
                case hasAccessToAllBuilds
                case iosBuildsAvailableForAppleSiliconMac
                case isInternalGroup
                case name
                case publicLink
                case publicLinkEnabled
                case publicLinkId
                case publicLinkLimit
                case publicLinkLimitEnabled
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .app: return "app"
                    case .betaTesters: return "betaTesters"
                    case .builds: return "builds"
                    case .createdDate: return "createdDate"
                    case .feedbackEnabled: return "feedbackEnabled"
                    case .hasAccessToAllBuilds: return "hasAccessToAllBuilds"
                    case .iosBuildsAvailableForAppleSiliconMac: return "iosBuildsAvailableForAppleSiliconMac"
                    case .isInternalGroup: return "isInternalGroup"
                    case .name: return "name"
                    case .publicLink: return "publicLink"
                    case .publicLinkEnabled: return "publicLinkEnabled"
                    case .publicLinkId: return "publicLinkId"
                    case .publicLinkLimit: return "publicLinkLimit"
                    case .publicLinkLimitEnabled: return "publicLinkLimitEnabled"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "app": self = .app
                    case "betaTesters": self = .betaTesters
                    case "builds": self = .builds
                    case "createdDate": self = .createdDate
                    case "feedbackEnabled": self = .feedbackEnabled
                    case "hasAccessToAllBuilds": self = .hasAccessToAllBuilds
                    case "iosBuildsAvailableForAppleSiliconMac": self = .iosBuildsAvailableForAppleSiliconMac
                    case "isInternalGroup": self = .isInternalGroup
                    case "name": self = .name
                    case "publicLink": self = .publicLink
                    case "publicLinkEnabled": self = .publicLinkEnabled
                    case "publicLinkId": self = .publicLinkId
                    case "publicLinkLimit": self = .publicLinkLimit
                    case "publicLinkLimitEnabled": self = .publicLinkLimitEnabled
                    default: self = .unknown(rawValue)
                    }
                }
            }

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

            public enum Builds: Hashable, Codable, RawRepresentable {
                case app
                case appEncryptionDeclaration
                case appStoreVersion
                case betaAppReviewSubmission
                case betaBuildLocalizations
                case betaGroups
                case buildAudienceType
                case buildBetaDetail
                case buildBundles
                case computedMinMacOsVersion
                case diagnosticSignatures
                case expirationDate
                case expired
                case iconAssetToken
                case icons
                case individualTesters
                case lsMinimumSystemVersion
                case minOsVersion
                case perfPowerMetrics
                case preReleaseVersion
                case processingState
                case uploadedDate
                case usesNonExemptEncryption
                case version
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .app: return "app"
                    case .appEncryptionDeclaration: return "appEncryptionDeclaration"
                    case .appStoreVersion: return "appStoreVersion"
                    case .betaAppReviewSubmission: return "betaAppReviewSubmission"
                    case .betaBuildLocalizations: return "betaBuildLocalizations"
                    case .betaGroups: return "betaGroups"
                    case .buildAudienceType: return "buildAudienceType"
                    case .buildBetaDetail: return "buildBetaDetail"
                    case .buildBundles: return "buildBundles"
                    case .computedMinMacOsVersion: return "computedMinMacOsVersion"
                    case .diagnosticSignatures: return "diagnosticSignatures"
                    case .expirationDate: return "expirationDate"
                    case .expired: return "expired"
                    case .iconAssetToken: return "iconAssetToken"
                    case .icons: return "icons"
                    case .individualTesters: return "individualTesters"
                    case .lsMinimumSystemVersion: return "lsMinimumSystemVersion"
                    case .minOsVersion: return "minOsVersion"
                    case .perfPowerMetrics: return "perfPowerMetrics"
                    case .preReleaseVersion: return "preReleaseVersion"
                    case .processingState: return "processingState"
                    case .uploadedDate: return "uploadedDate"
                    case .usesNonExemptEncryption: return "usesNonExemptEncryption"
                    case .version: return "version"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "app": self = .app
                    case "appEncryptionDeclaration": self = .appEncryptionDeclaration
                    case "appStoreVersion": self = .appStoreVersion
                    case "betaAppReviewSubmission": self = .betaAppReviewSubmission
                    case "betaBuildLocalizations": self = .betaBuildLocalizations
                    case "betaGroups": self = .betaGroups
                    case "buildAudienceType": self = .buildAudienceType
                    case "buildBetaDetail": self = .buildBetaDetail
                    case "buildBundles": self = .buildBundles
                    case "computedMinMacOsVersion": self = .computedMinMacOsVersion
                    case "diagnosticSignatures": self = .diagnosticSignatures
                    case "expirationDate": self = .expirationDate
                    case "expired": self = .expired
                    case "iconAssetToken": self = .iconAssetToken
                    case "icons": self = .icons
                    case "individualTesters": self = .individualTesters
                    case "lsMinimumSystemVersion": self = .lsMinimumSystemVersion
                    case "minOsVersion": self = .minOsVersion
                    case "perfPowerMetrics": self = .perfPowerMetrics
                    case "preReleaseVersion": self = .preReleaseVersion
                    case "processingState": self = .processingState
                    case "uploadedDate": self = .uploadedDate
                    case "usesNonExemptEncryption": self = .usesNonExemptEncryption
                    case "version": self = .version
                    default: self = .unknown(rawValue)
                    }
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case apps
            case betaGroups
            case builds
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .apps: return "apps"
                case .betaGroups: return "betaGroups"
                case .builds: return "builds"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "apps": self = .apps
                case "betaGroups": self = .betaGroups
                case "builds": self = .builds
                default: self = .unknown(rawValue)
                }
            }
        }

        public struct Limit: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<Self, T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]
        }
    }
}

extension Relation<V1.BetaTesters.ById.GET.Parameters.Fields, [V1.BetaTesters.ById.GET.Parameters.Fields.Apps]?> {
    /// the fields to include for returned resources of type apps
    public static var apps: Relation {
        .init(key: "fields[apps]")
    }
}

extension Relation<V1.BetaTesters.ById.GET.Parameters.Fields, [V1.BetaTesters.ById.GET.Parameters.Fields.BetaGroups]?> {
    /// the fields to include for returned resources of type betaGroups
    public static var betaGroups: Relation {
        .init(key: "fields[betaGroups]")
    }
}

extension Relation<V1.BetaTesters.ById.GET.Parameters.Fields, [V1.BetaTesters.ById.GET.Parameters.Fields.BetaTesters]?> {
    /// the fields to include for returned resources of type betaTesters
    public static var betaTesters: Relation {
        .init(key: "fields[betaTesters]")
    }
}

extension Relation<V1.BetaTesters.ById.GET.Parameters.Fields, [V1.BetaTesters.ById.GET.Parameters.Fields.Builds]?> {
    /// the fields to include for returned resources of type builds
    public static var builds: Relation {
        .init(key: "fields[builds]")
    }
}

extension Relation<V1.BetaTesters.ById.GET.Parameters.Limit, Int?> {
    /// maximum number of related apps returned (when they are included)
    public static var apps: Relation {
        .init(key: "limit[apps]")
    }
}

extension Relation<V1.BetaTesters.ById.GET.Parameters.Limit, Int?> {
    /// maximum number of related betaGroups returned (when they are included)
    public static var betaGroups: Relation {
        .init(key: "limit[betaGroups]")
    }
}

extension Relation<V1.BetaTesters.ById.GET.Parameters.Limit, Int?> {
    /// maximum number of related builds returned (when they are included)
    public static var builds: Relation {
        .init(key: "limit[builds]")
    }
}

// swiftlint:enable all
