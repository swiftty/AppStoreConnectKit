// autogenerated

// swiftlint:disable all
import Foundation

extension V1.BundleIds.ById {
    public struct GET: Endpoint {
        public typealias Response = BundleIdResponse

        public var path: String {
            "/v1/bundleIds/\(id)"
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
                URLQueryItem(name: "fields[bundleIdCapabilities]",
                             value: parameters.fields[.bundleIdCapabilities]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[bundleIds]",
                             value: parameters.fields[.bundleIds]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[profiles]",
                             value: parameters.fields[.profiles]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[bundleIdCapabilities]",
                             value: parameters.limit[.bundleIdCapabilities].map { "\($0)" }),
                URLQueryItem(name: "limit[profiles]",
                             value: parameters.limit[.profiles].map { "\($0)" })
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Single BundleId as `BundleIdResponse`
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
                return try jsonDecoder.decode(BundleIdResponse.self, from: data)

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

extension V1.BundleIds.ById.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        public var limit: Limit = Limit()

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

            public enum BundleIdCapabilities: String, Hashable, Codable {
                case bundleId
                case capabilityType
                case settings
            }

            public enum BundleIds: String, Hashable, Codable {
                case app
                case bundleIdCapabilities
                case identifier
                case name
                case platform
                case profiles
                case seedId
            }

            public enum Profiles: String, Hashable, Codable {
                case bundleId
                case certificates
                case createdDate
                case devices
                case expirationDate
                case name
                case platform
                case profileContent
                case profileState
                case profileType
                case uuid
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type apps
                public static var apps: Relation<[Apps]?> {
                    .init(key: "fields[apps]")
                }

                /// the fields to include for returned resources of type bundleIdCapabilities
                public static var bundleIdCapabilities: Relation<[BundleIdCapabilities]?> {
                    .init(key: "fields[bundleIdCapabilities]")
                }

                /// the fields to include for returned resources of type bundleIds
                public static var bundleIds: Relation<[BundleIds]?> {
                    .init(key: "fields[bundleIds]")
                }

                /// the fields to include for returned resources of type profiles
                public static var profiles: Relation<[Profiles]?> {
                    .init(key: "fields[profiles]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: String, Hashable, Codable {
            case app
            case bundleIdCapabilities
            case profiles
        }

        public struct Limit: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public struct Relation<T>: Hashable {
                /// maximum number of related bundleIdCapabilities returned (when they are included)
                public static var bundleIdCapabilities: Relation<Int?> {
                    .init(key: "limit[bundleIdCapabilities]")
                }

                /// maximum number of related profiles returned (when they are included)
                public static var profiles: Relation<Int?> {
                    .init(key: "limit[profiles]")
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
