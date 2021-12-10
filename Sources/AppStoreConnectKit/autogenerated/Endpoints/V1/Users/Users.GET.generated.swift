// autogenerated

// swiftlint:disable all
import Foundation

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

            public enum Apps: String, Hashable, Codable {
                case appClips
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
                case sku
            }

            public enum Users: String, Hashable, Codable {
                case allAppsVisible
                case firstName
                case lastName
                case provisioningAllowed
                case roles
                case username
                case visibleApps
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

            public enum Roles: String, Hashable, Codable {
                case accessToReports = "ACCESS_TO_REPORTS"
                case accountHolder = "ACCOUNT_HOLDER"
                case admin = "ADMIN"
                case appManager = "APP_MANAGER"
                case cloudManagedAppDistribution = "CLOUD_MANAGED_APP_DISTRIBUTION"
                case cloudManagedDeveloperId = "CLOUD_MANAGED_DEVELOPER_ID"
                case createApps = "CREATE_APPS"
                case customerSupport = "CUSTOMER_SUPPORT"
                case developer = "DEVELOPER"
                case finance = "FINANCE"
                case imageManager = "IMAGE_MANAGER"
                case marketing = "MARKETING"
                case sales = "SALES"
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

        public enum Include: String, Hashable, Codable {
            case visibleApps
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

        public enum Sort: String, Hashable, Codable {
            case lastNameDesc = "-lastName"
            case usernameDesc = "-username"
            case lastName
            case username
        }
    }
}

// swiftlint:enable all
