// autogenerated

// swiftlint:disable all
import Foundation

extension V1.BetaGroups {
    public struct GET: Endpoint {
        public typealias Response = BetaGroupsResponse

        public var path: String {
            "/v1/betaGroups"
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
                URLQueryItem(name: "fields[betaGroups]",
                             value: parameters.fields[.betaGroups]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[betaTesters]",
                             value: parameters.fields[.betaTesters]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[builds]",
                             value: parameters.fields[.builds]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[app]",
                             value: parameters.filter[.app]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[builds]",
                             value: parameters.filter[.builds]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[id]",
                             value: parameters.filter[.id]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[isInternalGroup]",
                             value: parameters.filter[.isInternalGroup]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[name]",
                             value: parameters.filter[.name]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[publicLinkEnabled]",
                             value: parameters.filter[.publicLinkEnabled]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[publicLinkLimitEnabled]",
                             value: parameters.filter[.publicLinkLimitEnabled]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[publicLink]",
                             value: parameters.filter[.publicLink]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[betaTesters]",
                             value: parameters.limit[.betaTesters].map { "\($0)" }),
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

        /// - Returns: **200**, List of BetaGroups as `BetaGroupsResponse`
        /// - Throws: **400**, Parameter error(s) as `ErrorResponse`
        /// - Throws: **403**, Forbidden error as `ErrorResponse`
        public static func response(from data: Data, urlResponse: HTTPURLResponse) throws -> Response {
            var jsonDecoder: JSONDecoder {
                let decoder = JSONDecoder()
                return decoder
            }

            switch urlResponse.statusCode {
            case 200:
                return try jsonDecoder.decode(BetaGroupsResponse.self, from: data)

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

extension V1.BetaGroups.GET {
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

            public enum BetaGroups: String, Hashable, Codable {
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
            }

            public enum BetaTesters: String, Hashable, Codable {
                case apps
                case betaGroups
                case builds
                case email
                case firstName
                case inviteType
                case lastName
            }

            public enum Builds: String, Hashable, Codable {
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
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type apps
                public static var apps: Relation<[Apps]?> {
                    .init(key: "fields[apps]")
                }

                /// the fields to include for returned resources of type betaGroups
                public static var betaGroups: Relation<[BetaGroups]?> {
                    .init(key: "fields[betaGroups]")
                }

                /// the fields to include for returned resources of type betaTesters
                public static var betaTesters: Relation<[BetaTesters]?> {
                    .init(key: "fields[betaTesters]")
                }

                /// the fields to include for returned resources of type builds
                public static var builds: Relation<[Builds]?> {
                    .init(key: "fields[builds]")
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
                /// filter by id(s) of related 'app'
                public static var app: Relation<[String]?> {
                    .init(key: "filter[app]")
                }

                /// filter by id(s) of related 'builds'
                public static var builds: Relation<[String]?> {
                    .init(key: "filter[builds]")
                }

                /// filter by id(s)
                public static var id: Relation<[String]?> {
                    .init(key: "filter[id]")
                }

                /// filter by attribute 'isInternalGroup'
                public static var isInternalGroup: Relation<[String]?> {
                    .init(key: "filter[isInternalGroup]")
                }

                /// filter by attribute 'name'
                public static var name: Relation<[String]?> {
                    .init(key: "filter[name]")
                }

                /// filter by attribute 'publicLinkEnabled'
                public static var publicLinkEnabled: Relation<[String]?> {
                    .init(key: "filter[publicLinkEnabled]")
                }

                /// filter by attribute 'publicLinkLimitEnabled'
                public static var publicLinkLimitEnabled: Relation<[String]?> {
                    .init(key: "filter[publicLinkLimitEnabled]")
                }

                /// filter by attribute 'publicLink'
                public static var publicLink: Relation<[String]?> {
                    .init(key: "filter[publicLink]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: String, Hashable, Codable {
            case app
            case betaTesters
            case builds
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
                /// maximum number of related betaTesters returned (when they are included)
                public static var betaTesters: Relation<Int?> {
                    .init(key: "limit[betaTesters]")
                }

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

        public enum Sort: String, Hashable, Codable {
            case createdDateDesc = "-createdDate"
            case nameDesc = "-name"
            case publicLinkEnabledDesc = "-publicLinkEnabled"
            case publicLinkLimitDesc = "-publicLinkLimit"
            case createdDate
            case name
            case publicLinkEnabled
            case publicLinkLimit
        }
    }
}

// swiftlint:enable all
