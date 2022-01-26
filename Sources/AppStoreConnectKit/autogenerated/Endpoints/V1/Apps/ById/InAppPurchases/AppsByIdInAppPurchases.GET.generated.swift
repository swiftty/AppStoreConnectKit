// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.Apps.ById.InAppPurchases {
    public struct GET: Endpoint {
        public typealias Response = InAppPurchasesResponse

        public var path: String {
            "/v1/apps/\(id)/inAppPurchases"
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
                URLQueryItem(name: "fields[inAppPurchases]",
                             value: parameters.fields[.inAppPurchases]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[canBeSubmitted]",
                             value: parameters.filter[.canBeSubmitted]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[inAppPurchaseType]",
                             value: parameters.filter[.inAppPurchaseType]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[apps]",
                             value: parameters.limit[.apps].map { "\($0)" }),
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

        /// - Returns: **200**, List of related resources as `InAppPurchasesResponse`
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
                return try jsonDecoder.decode(InAppPurchasesResponse.self, from: data)

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

extension V1.Apps.ById.InAppPurchases.GET {
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

            public enum Apps: Hashable, Codable, RawRepresentable {
                case appClips
                case appCustomProductPages
                case appEvents
                case appInfos
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
                case endUserLicenseAgreement
                case gameCenterEnabledVersions
                case inAppPurchases
                case isOrEverWasMadeForKids
                case name
                case perfPowerMetrics
                case preOrder
                case preReleaseVersions
                case prices
                case primaryLocale
                case reviewSubmissions
                case sku
                case subscriptionStatusUrl
                case subscriptionStatusUrlForSandbox
                case subscriptionStatusUrlVersion
                case subscriptionStatusUrlVersionForSandbox
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appClips: return "appClips"
                    case .appCustomProductPages: return "appCustomProductPages"
                    case .appEvents: return "appEvents"
                    case .appInfos: return "appInfos"
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
                    case .endUserLicenseAgreement: return "endUserLicenseAgreement"
                    case .gameCenterEnabledVersions: return "gameCenterEnabledVersions"
                    case .inAppPurchases: return "inAppPurchases"
                    case .isOrEverWasMadeForKids: return "isOrEverWasMadeForKids"
                    case .name: return "name"
                    case .perfPowerMetrics: return "perfPowerMetrics"
                    case .preOrder: return "preOrder"
                    case .preReleaseVersions: return "preReleaseVersions"
                    case .prices: return "prices"
                    case .primaryLocale: return "primaryLocale"
                    case .reviewSubmissions: return "reviewSubmissions"
                    case .sku: return "sku"
                    case .subscriptionStatusUrl: return "subscriptionStatusUrl"
                    case .subscriptionStatusUrlForSandbox: return "subscriptionStatusUrlForSandbox"
                    case .subscriptionStatusUrlVersion: return "subscriptionStatusUrlVersion"
                    case .subscriptionStatusUrlVersionForSandbox: return "subscriptionStatusUrlVersionForSandbox"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "appClips": self = .appClips
                    case "appCustomProductPages": self = .appCustomProductPages
                    case "appEvents": self = .appEvents
                    case "appInfos": self = .appInfos
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
                    case "endUserLicenseAgreement": self = .endUserLicenseAgreement
                    case "gameCenterEnabledVersions": self = .gameCenterEnabledVersions
                    case "inAppPurchases": self = .inAppPurchases
                    case "isOrEverWasMadeForKids": self = .isOrEverWasMadeForKids
                    case "name": self = .name
                    case "perfPowerMetrics": self = .perfPowerMetrics
                    case "preOrder": self = .preOrder
                    case "preReleaseVersions": self = .preReleaseVersions
                    case "prices": self = .prices
                    case "primaryLocale": self = .primaryLocale
                    case "reviewSubmissions": self = .reviewSubmissions
                    case "sku": self = .sku
                    case "subscriptionStatusUrl": self = .subscriptionStatusUrl
                    case "subscriptionStatusUrlForSandbox": self = .subscriptionStatusUrlForSandbox
                    case "subscriptionStatusUrlVersion": self = .subscriptionStatusUrlVersion
                    case "subscriptionStatusUrlVersionForSandbox": self = .subscriptionStatusUrlVersionForSandbox
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum InAppPurchases: Hashable, Codable, RawRepresentable {
                case apps
                case inAppPurchaseType
                case productId
                case referenceName
                case state
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .apps: return "apps"
                    case .inAppPurchaseType: return "inAppPurchaseType"
                    case .productId: return "productId"
                    case .referenceName: return "referenceName"
                    case .state: return "state"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "apps": self = .apps
                    case "inAppPurchaseType": self = .inAppPurchaseType
                    case "productId": self = .productId
                    case "referenceName": self = .referenceName
                    case "state": self = .state
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type apps
                public static var apps: Relation<[Apps]?> {
                    .init(key: "fields[apps]")
                }

                /// the fields to include for returned resources of type inAppPurchases
                public static var inAppPurchases: Relation<[InAppPurchases]?> {
                    .init(key: "fields[inAppPurchases]")
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

            public enum InAppPurchaseType: Hashable, Codable, RawRepresentable {
                case automaticallyRenewableSubscription
                case consumable
                case freeSubscription
                case nonConsumable
                case nonRenewingSubscription
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .automaticallyRenewableSubscription: return "AUTOMATICALLY_RENEWABLE_SUBSCRIPTION"
                    case .consumable: return "CONSUMABLE"
                    case .freeSubscription: return "FREE_SUBSCRIPTION"
                    case .nonConsumable: return "NON_CONSUMABLE"
                    case .nonRenewingSubscription: return "NON_RENEWING_SUBSCRIPTION"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "AUTOMATICALLY_RENEWABLE_SUBSCRIPTION": self = .automaticallyRenewableSubscription
                    case "CONSUMABLE": self = .consumable
                    case "FREE_SUBSCRIPTION": self = .freeSubscription
                    case "NON_CONSUMABLE": self = .nonConsumable
                    case "NON_RENEWING_SUBSCRIPTION": self = .nonRenewingSubscription
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// filter by canBeSubmitted
                public static var canBeSubmitted: Relation<[String]?> {
                    .init(key: "filter[canBeSubmitted]")
                }

                /// filter by attribute 'inAppPurchaseType'
                public static var inAppPurchaseType: Relation<[InAppPurchaseType]?> {
                    .init(key: "filter[inAppPurchaseType]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case apps
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .apps: return "apps"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "apps": self = .apps
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
                /// maximum number of related apps returned (when they are included)
                public static var apps: Relation<Int?> {
                    .init(key: "limit[apps]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Sort: Hashable, Codable, RawRepresentable {
            case inAppPurchaseType
            case inAppPurchaseTypeDesc
            case productId
            case productIdDesc
            case referenceName
            case referenceNameDesc
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .inAppPurchaseType: return "inAppPurchaseType"
                case .inAppPurchaseTypeDesc: return "-inAppPurchaseType"
                case .productId: return "productId"
                case .productIdDesc: return "-productId"
                case .referenceName: return "referenceName"
                case .referenceNameDesc: return "-referenceName"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "inAppPurchaseType": self = .inAppPurchaseType
                case "-inAppPurchaseType": self = .inAppPurchaseTypeDesc
                case "productId": self = .productId
                case "-productId": self = .productIdDesc
                case "referenceName": self = .referenceName
                case "-referenceName": self = .referenceNameDesc
                default: self = .unknown(rawValue)
                }
            }
        }
    }
}

// swiftlint:enable all
