// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.GameCenterDetails.ById.GameCenterAppVersions {
    public struct GET: Endpoint {
        public typealias Response = GameCenterAppVersionsResponse

        public var path: String {
            "/v1/gameCenterDetails/\(id)/gameCenterAppVersions"
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
                URLQueryItem(name: "fields[appStoreVersions]",
                             value: parameters.fields[.appStoreVersions]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[gameCenterAppVersions]",
                             value: parameters.fields[.gameCenterAppVersions]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[enabled]",
                             value: parameters.filter[.enabled]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[compatibilityVersions]",
                             value: parameters.limit[.compatibilityVersions].map { "\($0)" }),
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

        /// - Returns: **200**, List of GameCenterAppVersions as `GameCenterAppVersionsResponse`
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
                return try jsonDecoder.decode(GameCenterAppVersionsResponse.self, from: data)

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

extension V1.GameCenterDetails.ById.GameCenterAppVersions.GET {
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

            public enum GameCenterAppVersions: Hashable, Codable, RawRepresentable {
                case appStoreVersion
                case compatibilityVersions
                case enabled
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appStoreVersion: return "appStoreVersion"
                    case .compatibilityVersions: return "compatibilityVersions"
                    case .enabled: return "enabled"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "appStoreVersion": self = .appStoreVersion
                    case "compatibilityVersions": self = .compatibilityVersions
                    case "enabled": self = .enabled
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type appStoreVersions
                public static var appStoreVersions: Relation<[AppStoreVersions]?> {
                    .init(key: "fields[appStoreVersions]")
                }

                /// the fields to include for returned resources of type gameCenterAppVersions
                public static var gameCenterAppVersions: Relation<[GameCenterAppVersions]?> {
                    .init(key: "fields[gameCenterAppVersions]")
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
                /// filter by attribute 'enabled'
                public static var enabled: Relation<[String]?> {
                    .init(key: "filter[enabled]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case appStoreVersion
            case compatibilityVersions
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .appStoreVersion: return "appStoreVersion"
                case .compatibilityVersions: return "compatibilityVersions"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "appStoreVersion": self = .appStoreVersion
                case "compatibilityVersions": self = .compatibilityVersions
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
                /// maximum number of related compatibilityVersions returned (when they are included)
                public static var compatibilityVersions: Relation<Int?> {
                    .init(key: "limit[compatibilityVersions]")
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
