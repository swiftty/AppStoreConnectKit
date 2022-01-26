// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.Users {
    public struct GET: Endpoint {
        public typealias Response = UsersResponse

        public var path: String {
            "/v1/users"
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
                URLQueryItem(name: "fields[users]",
                             value: parameters.fields[.users]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[roles]",
                             value: parameters.filter[.roles]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[username]",
                             value: parameters.filter[.username]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[visibleApps]",
                             value: parameters.filter[.visibleApps]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[visibleApps]",
                             value: parameters.limit[.visibleApps].map { "\($0)" }),
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

        /// - Returns: **200**, List of Users as `UsersResponse`
        /// - Throws: **400**, Parameter error(s) as `ErrorResponse`
        /// - Throws: **403**, Forbidden error as `ErrorResponse`
        public static func response(from data: Data, urlResponse: HTTPURLResponse) throws -> Response {
            var jsonDecoder: JSONDecoder {
                let decoder = JSONDecoder()
                return decoder
            }

            switch urlResponse.statusCode {
            case 200:
                return try jsonDecoder.decode(UsersResponse.self, from: data)

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

extension V1.Users.GET {
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

            public enum Users: Hashable, Codable, RawRepresentable {
                case allAppsVisible
                case firstName
                case lastName
                case provisioningAllowed
                case roles
                case username
                case visibleApps
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .allAppsVisible: return "allAppsVisible"
                    case .firstName: return "firstName"
                    case .lastName: return "lastName"
                    case .provisioningAllowed: return "provisioningAllowed"
                    case .roles: return "roles"
                    case .username: return "username"
                    case .visibleApps: return "visibleApps"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "allAppsVisible": self = .allAppsVisible
                    case "firstName": self = .firstName
                    case "lastName": self = .lastName
                    case "provisioningAllowed": self = .provisioningAllowed
                    case "roles": self = .roles
                    case "username": self = .username
                    case "visibleApps": self = .visibleApps
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type apps
                public static var apps: Relation<[Apps]?> {
                    .init(key: "fields[apps]")
                }

                /// the fields to include for returned resources of type users
                public static var users: Relation<[Users]?> {
                    .init(key: "fields[users]")
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

            public enum Roles: Hashable, Codable, RawRepresentable {
                case accessToReports
                case accountHolder
                case admin
                case appManager
                case cloudManagedAppDistribution
                case cloudManagedDeveloperId
                case createApps
                case customerSupport
                case developer
                case finance
                case imageManager
                case marketing
                case sales
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .accessToReports: return "ACCESS_TO_REPORTS"
                    case .accountHolder: return "ACCOUNT_HOLDER"
                    case .admin: return "ADMIN"
                    case .appManager: return "APP_MANAGER"
                    case .cloudManagedAppDistribution: return "CLOUD_MANAGED_APP_DISTRIBUTION"
                    case .cloudManagedDeveloperId: return "CLOUD_MANAGED_DEVELOPER_ID"
                    case .createApps: return "CREATE_APPS"
                    case .customerSupport: return "CUSTOMER_SUPPORT"
                    case .developer: return "DEVELOPER"
                    case .finance: return "FINANCE"
                    case .imageManager: return "IMAGE_MANAGER"
                    case .marketing: return "MARKETING"
                    case .sales: return "SALES"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "ACCESS_TO_REPORTS": self = .accessToReports
                    case "ACCOUNT_HOLDER": self = .accountHolder
                    case "ADMIN": self = .admin
                    case "APP_MANAGER": self = .appManager
                    case "CLOUD_MANAGED_APP_DISTRIBUTION": self = .cloudManagedAppDistribution
                    case "CLOUD_MANAGED_DEVELOPER_ID": self = .cloudManagedDeveloperId
                    case "CREATE_APPS": self = .createApps
                    case "CUSTOMER_SUPPORT": self = .customerSupport
                    case "DEVELOPER": self = .developer
                    case "FINANCE": self = .finance
                    case "IMAGE_MANAGER": self = .imageManager
                    case "MARKETING": self = .marketing
                    case "SALES": self = .sales
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// filter by attribute 'roles'
                public static var roles: Relation<[Roles]?> {
                    .init(key: "filter[roles]")
                }

                /// filter by attribute 'username'
                public static var username: Relation<[String]?> {
                    .init(key: "filter[username]")
                }

                /// filter by id(s) of related 'visibleApps'
                public static var visibleApps: Relation<[String]?> {
                    .init(key: "filter[visibleApps]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case visibleApps
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .visibleApps: return "visibleApps"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "visibleApps": self = .visibleApps
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
                /// maximum number of related visibleApps returned (when they are included)
                public static var visibleApps: Relation<Int?> {
                    .init(key: "limit[visibleApps]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Sort: Hashable, Codable, RawRepresentable {
            case lastName
            case lastNameDesc
            case username
            case usernameDesc
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .lastName: return "lastName"
                case .lastNameDesc: return "-lastName"
                case .username: return "username"
                case .usernameDesc: return "-username"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "lastName": self = .lastName
                case "-lastName": self = .lastNameDesc
                case "username": self = .username
                case "-username": self = .usernameDesc
                default: self = .unknown(rawValue)
                }
            }
        }
    }
}

// swiftlint:enable all
