// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.GameCenterDetails.ById.GameCenterLeaderboards {
    public struct GET: Endpoint {
        public typealias Response = GameCenterLeaderboardsResponse

        public var path: String {
            "/v1/gameCenterDetails/\(id)/gameCenterLeaderboards"
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
                URLQueryItem(name: "fields[gameCenterDetails]",
                             value: parameters.fields[.gameCenterDetails]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[gameCenterGroups]",
                             value: parameters.fields[.gameCenterGroups]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[gameCenterLeaderboardLocalizations]",
                             value: parameters.fields[.gameCenterLeaderboardLocalizations]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[gameCenterLeaderboardReleases]",
                             value: parameters.fields[.gameCenterLeaderboardReleases]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[gameCenterLeaderboardSets]",
                             value: parameters.fields[.gameCenterLeaderboardSets]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[gameCenterLeaderboards]",
                             value: parameters.fields[.gameCenterLeaderboards]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[archived]",
                             value: parameters.filter[.archived]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[id]",
                             value: parameters.filter[.id]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[referenceName]",
                             value: parameters.filter[.referenceName]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[gameCenterLeaderboardSets]",
                             value: parameters.limit[.gameCenterLeaderboardSets].map { "\($0)" }),
                URLQueryItem(name: "limit[localizations]",
                             value: parameters.limit[.localizations].map { "\($0)" }),
                URLQueryItem(name: "limit[releases]",
                             value: parameters.limit[.releases].map { "\($0)" }),
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

        /// - Returns: **200**, List of GameCenterLeaderboards as `GameCenterLeaderboardsResponse`
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
                return try jsonDecoder.decode(GameCenterLeaderboardsResponse.self, from: data)

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

extension V1.GameCenterDetails.ById.GameCenterLeaderboards.GET {
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

            public enum GameCenterDetails: Hashable, Codable, RawRepresentable {
                case achievementReleases
                case app
                case arcadeEnabled
                case challengeEnabled
                case defaultGroupLeaderboard
                case defaultLeaderboard
                case gameCenterAchievements
                case gameCenterAppVersions
                case gameCenterGroup
                case gameCenterLeaderboardSets
                case gameCenterLeaderboards
                case leaderboardReleases
                case leaderboardSetReleases
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .achievementReleases: return "achievementReleases"
                    case .app: return "app"
                    case .arcadeEnabled: return "arcadeEnabled"
                    case .challengeEnabled: return "challengeEnabled"
                    case .defaultGroupLeaderboard: return "defaultGroupLeaderboard"
                    case .defaultLeaderboard: return "defaultLeaderboard"
                    case .gameCenterAchievements: return "gameCenterAchievements"
                    case .gameCenterAppVersions: return "gameCenterAppVersions"
                    case .gameCenterGroup: return "gameCenterGroup"
                    case .gameCenterLeaderboardSets: return "gameCenterLeaderboardSets"
                    case .gameCenterLeaderboards: return "gameCenterLeaderboards"
                    case .leaderboardReleases: return "leaderboardReleases"
                    case .leaderboardSetReleases: return "leaderboardSetReleases"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "achievementReleases": self = .achievementReleases
                    case "app": self = .app
                    case "arcadeEnabled": self = .arcadeEnabled
                    case "challengeEnabled": self = .challengeEnabled
                    case "defaultGroupLeaderboard": self = .defaultGroupLeaderboard
                    case "defaultLeaderboard": self = .defaultLeaderboard
                    case "gameCenterAchievements": self = .gameCenterAchievements
                    case "gameCenterAppVersions": self = .gameCenterAppVersions
                    case "gameCenterGroup": self = .gameCenterGroup
                    case "gameCenterLeaderboardSets": self = .gameCenterLeaderboardSets
                    case "gameCenterLeaderboards": self = .gameCenterLeaderboards
                    case "leaderboardReleases": self = .leaderboardReleases
                    case "leaderboardSetReleases": self = .leaderboardSetReleases
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum GameCenterGroups: Hashable, Codable, RawRepresentable {
                case gameCenterAchievements
                case gameCenterDetails
                case gameCenterLeaderboardSets
                case gameCenterLeaderboards
                case referenceName
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .gameCenterAchievements: return "gameCenterAchievements"
                    case .gameCenterDetails: return "gameCenterDetails"
                    case .gameCenterLeaderboardSets: return "gameCenterLeaderboardSets"
                    case .gameCenterLeaderboards: return "gameCenterLeaderboards"
                    case .referenceName: return "referenceName"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "gameCenterAchievements": self = .gameCenterAchievements
                    case "gameCenterDetails": self = .gameCenterDetails
                    case "gameCenterLeaderboardSets": self = .gameCenterLeaderboardSets
                    case "gameCenterLeaderboards": self = .gameCenterLeaderboards
                    case "referenceName": self = .referenceName
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum GameCenterLeaderboardLocalizations: Hashable, Codable, RawRepresentable {
                case formatterOverride
                case formatterSuffix
                case formatterSuffixSingular
                case gameCenterLeaderboard
                case gameCenterLeaderboardImage
                case locale
                case name
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .formatterOverride: return "formatterOverride"
                    case .formatterSuffix: return "formatterSuffix"
                    case .formatterSuffixSingular: return "formatterSuffixSingular"
                    case .gameCenterLeaderboard: return "gameCenterLeaderboard"
                    case .gameCenterLeaderboardImage: return "gameCenterLeaderboardImage"
                    case .locale: return "locale"
                    case .name: return "name"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "formatterOverride": self = .formatterOverride
                    case "formatterSuffix": self = .formatterSuffix
                    case "formatterSuffixSingular": self = .formatterSuffixSingular
                    case "gameCenterLeaderboard": self = .gameCenterLeaderboard
                    case "gameCenterLeaderboardImage": self = .gameCenterLeaderboardImage
                    case "locale": self = .locale
                    case "name": self = .name
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum GameCenterLeaderboardReleases: Hashable, Codable, RawRepresentable {
                case gameCenterDetail
                case gameCenterLeaderboard
                case live
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .gameCenterDetail: return "gameCenterDetail"
                    case .gameCenterLeaderboard: return "gameCenterLeaderboard"
                    case .live: return "live"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "gameCenterDetail": self = .gameCenterDetail
                    case "gameCenterLeaderboard": self = .gameCenterLeaderboard
                    case "live": self = .live
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum GameCenterLeaderboardSets: Hashable, Codable, RawRepresentable {
                case gameCenterDetail
                case gameCenterGroup
                case gameCenterLeaderboards
                case groupLeaderboardSet
                case localizations
                case referenceName
                case releases
                case vendorIdentifier
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .gameCenterDetail: return "gameCenterDetail"
                    case .gameCenterGroup: return "gameCenterGroup"
                    case .gameCenterLeaderboards: return "gameCenterLeaderboards"
                    case .groupLeaderboardSet: return "groupLeaderboardSet"
                    case .localizations: return "localizations"
                    case .referenceName: return "referenceName"
                    case .releases: return "releases"
                    case .vendorIdentifier: return "vendorIdentifier"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "gameCenterDetail": self = .gameCenterDetail
                    case "gameCenterGroup": self = .gameCenterGroup
                    case "gameCenterLeaderboards": self = .gameCenterLeaderboards
                    case "groupLeaderboardSet": self = .groupLeaderboardSet
                    case "localizations": self = .localizations
                    case "referenceName": self = .referenceName
                    case "releases": self = .releases
                    case "vendorIdentifier": self = .vendorIdentifier
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum GameCenterLeaderboards: Hashable, Codable, RawRepresentable {
                case archived
                case defaultFormatter
                case gameCenterDetail
                case gameCenterGroup
                case gameCenterLeaderboardSets
                case groupLeaderboard
                case localizations
                case recurrenceDuration
                case recurrenceRule
                case recurrenceStartDate
                case referenceName
                case releases
                case scoreRangeEnd
                case scoreRangeStart
                case scoreSortType
                case submissionType
                case vendorIdentifier
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .archived: return "archived"
                    case .defaultFormatter: return "defaultFormatter"
                    case .gameCenterDetail: return "gameCenterDetail"
                    case .gameCenterGroup: return "gameCenterGroup"
                    case .gameCenterLeaderboardSets: return "gameCenterLeaderboardSets"
                    case .groupLeaderboard: return "groupLeaderboard"
                    case .localizations: return "localizations"
                    case .recurrenceDuration: return "recurrenceDuration"
                    case .recurrenceRule: return "recurrenceRule"
                    case .recurrenceStartDate: return "recurrenceStartDate"
                    case .referenceName: return "referenceName"
                    case .releases: return "releases"
                    case .scoreRangeEnd: return "scoreRangeEnd"
                    case .scoreRangeStart: return "scoreRangeStart"
                    case .scoreSortType: return "scoreSortType"
                    case .submissionType: return "submissionType"
                    case .vendorIdentifier: return "vendorIdentifier"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "archived": self = .archived
                    case "defaultFormatter": self = .defaultFormatter
                    case "gameCenterDetail": self = .gameCenterDetail
                    case "gameCenterGroup": self = .gameCenterGroup
                    case "gameCenterLeaderboardSets": self = .gameCenterLeaderboardSets
                    case "groupLeaderboard": self = .groupLeaderboard
                    case "localizations": self = .localizations
                    case "recurrenceDuration": self = .recurrenceDuration
                    case "recurrenceRule": self = .recurrenceRule
                    case "recurrenceStartDate": self = .recurrenceStartDate
                    case "referenceName": self = .referenceName
                    case "releases": self = .releases
                    case "scoreRangeEnd": self = .scoreRangeEnd
                    case "scoreRangeStart": self = .scoreRangeStart
                    case "scoreSortType": self = .scoreSortType
                    case "submissionType": self = .submissionType
                    case "vendorIdentifier": self = .vendorIdentifier
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type gameCenterDetails
                public static var gameCenterDetails: Relation<[GameCenterDetails]?> {
                    .init(key: "fields[gameCenterDetails]")
                }

                /// the fields to include for returned resources of type gameCenterGroups
                public static var gameCenterGroups: Relation<[GameCenterGroups]?> {
                    .init(key: "fields[gameCenterGroups]")
                }

                /// the fields to include for returned resources of type gameCenterLeaderboardLocalizations
                public static var gameCenterLeaderboardLocalizations: Relation<[GameCenterLeaderboardLocalizations]?> {
                    .init(key: "fields[gameCenterLeaderboardLocalizations]")
                }

                /// the fields to include for returned resources of type gameCenterLeaderboardReleases
                public static var gameCenterLeaderboardReleases: Relation<[GameCenterLeaderboardReleases]?> {
                    .init(key: "fields[gameCenterLeaderboardReleases]")
                }

                /// the fields to include for returned resources of type gameCenterLeaderboardSets
                public static var gameCenterLeaderboardSets: Relation<[GameCenterLeaderboardSets]?> {
                    .init(key: "fields[gameCenterLeaderboardSets]")
                }

                /// the fields to include for returned resources of type gameCenterLeaderboards
                public static var gameCenterLeaderboards: Relation<[GameCenterLeaderboards]?> {
                    .init(key: "fields[gameCenterLeaderboards]")
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
                /// filter by attribute 'archived'
                public static var archived: Relation<[String]?> {
                    .init(key: "filter[archived]")
                }

                /// filter by id(s)
                public static var id: Relation<[String]?> {
                    .init(key: "filter[id]")
                }

                /// filter by attribute 'referenceName'
                public static var referenceName: Relation<[String]?> {
                    .init(key: "filter[referenceName]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case gameCenterDetail
            case gameCenterGroup
            case gameCenterLeaderboardSets
            case groupLeaderboard
            case localizations
            case releases
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .gameCenterDetail: return "gameCenterDetail"
                case .gameCenterGroup: return "gameCenterGroup"
                case .gameCenterLeaderboardSets: return "gameCenterLeaderboardSets"
                case .groupLeaderboard: return "groupLeaderboard"
                case .localizations: return "localizations"
                case .releases: return "releases"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "gameCenterDetail": self = .gameCenterDetail
                case "gameCenterGroup": self = .gameCenterGroup
                case "gameCenterLeaderboardSets": self = .gameCenterLeaderboardSets
                case "groupLeaderboard": self = .groupLeaderboard
                case "localizations": self = .localizations
                case "releases": self = .releases
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
                /// maximum number of related gameCenterLeaderboardSets returned (when they are included)
                public static var gameCenterLeaderboardSets: Relation<Int?> {
                    .init(key: "limit[gameCenterLeaderboardSets]")
                }

                /// maximum number of related localizations returned (when they are included)
                public static var localizations: Relation<Int?> {
                    .init(key: "limit[localizations]")
                }

                /// maximum number of related releases returned (when they are included)
                public static var releases: Relation<Int?> {
                    .init(key: "limit[releases]")
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
