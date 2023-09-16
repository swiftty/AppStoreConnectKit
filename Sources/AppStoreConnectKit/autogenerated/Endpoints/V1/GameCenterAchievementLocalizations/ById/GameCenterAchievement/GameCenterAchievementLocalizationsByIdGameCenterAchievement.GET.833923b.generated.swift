// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.GameCenterAchievementLocalizations.ById.GameCenterAchievement {
    public struct GET: Endpoint {
        public typealias Response = GameCenterAchievementResponse

        public var path: String {
            "/v1/gameCenterAchievementLocalizations/\(id)/gameCenterAchievement"
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
                URLQueryItem(name: "fields[gameCenterAchievementLocalizations]",
                             value: parameters.fields[.gameCenterAchievementLocalizations]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[gameCenterAchievementReleases]",
                             value: parameters.fields[.gameCenterAchievementReleases]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[gameCenterAchievements]",
                             value: parameters.fields[.gameCenterAchievements]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[gameCenterDetails]",
                             value: parameters.fields[.gameCenterDetails]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[gameCenterGroups]",
                             value: parameters.fields[.gameCenterGroups]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[localizations]",
                             value: parameters.limit[.localizations].map { "\($0)" }),
                URLQueryItem(name: "limit[releases]",
                             value: parameters.limit[.releases].map { "\($0)" })
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Single GameCenterAchievement as `GameCenterAchievementResponse`
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
                return try jsonDecoder.decode(GameCenterAchievementResponse.self, from: data)

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

extension V1.GameCenterAchievementLocalizations.ById.GameCenterAchievement.GET {
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

            public enum GameCenterAchievementLocalizations: Hashable, Codable, RawRepresentable {
                case afterEarnedDescription
                case beforeEarnedDescription
                case gameCenterAchievement
                case gameCenterAchievementImage
                case locale
                case name
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .afterEarnedDescription: return "afterEarnedDescription"
                    case .beforeEarnedDescription: return "beforeEarnedDescription"
                    case .gameCenterAchievement: return "gameCenterAchievement"
                    case .gameCenterAchievementImage: return "gameCenterAchievementImage"
                    case .locale: return "locale"
                    case .name: return "name"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "afterEarnedDescription": self = .afterEarnedDescription
                    case "beforeEarnedDescription": self = .beforeEarnedDescription
                    case "gameCenterAchievement": self = .gameCenterAchievement
                    case "gameCenterAchievementImage": self = .gameCenterAchievementImage
                    case "locale": self = .locale
                    case "name": self = .name
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum GameCenterAchievementReleases: Hashable, Codable, RawRepresentable {
                case gameCenterAchievement
                case gameCenterDetail
                case live
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .gameCenterAchievement: return "gameCenterAchievement"
                    case .gameCenterDetail: return "gameCenterDetail"
                    case .live: return "live"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "gameCenterAchievement": self = .gameCenterAchievement
                    case "gameCenterDetail": self = .gameCenterDetail
                    case "live": self = .live
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum GameCenterAchievements: Hashable, Codable, RawRepresentable {
                case archived
                case gameCenterDetail
                case gameCenterGroup
                case groupAchievement
                case localizations
                case points
                case referenceName
                case releases
                case repeatable
                case showBeforeEarned
                case vendorIdentifier
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .archived: return "archived"
                    case .gameCenterDetail: return "gameCenterDetail"
                    case .gameCenterGroup: return "gameCenterGroup"
                    case .groupAchievement: return "groupAchievement"
                    case .localizations: return "localizations"
                    case .points: return "points"
                    case .referenceName: return "referenceName"
                    case .releases: return "releases"
                    case .repeatable: return "repeatable"
                    case .showBeforeEarned: return "showBeforeEarned"
                    case .vendorIdentifier: return "vendorIdentifier"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "archived": self = .archived
                    case "gameCenterDetail": self = .gameCenterDetail
                    case "gameCenterGroup": self = .gameCenterGroup
                    case "groupAchievement": self = .groupAchievement
                    case "localizations": self = .localizations
                    case "points": self = .points
                    case "referenceName": self = .referenceName
                    case "releases": self = .releases
                    case "repeatable": self = .repeatable
                    case "showBeforeEarned": self = .showBeforeEarned
                    case "vendorIdentifier": self = .vendorIdentifier
                    default: self = .unknown(rawValue)
                    }
                }
            }

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

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type gameCenterAchievementLocalizations
                public static var gameCenterAchievementLocalizations: Relation<[GameCenterAchievementLocalizations]?> {
                    .init(key: "fields[gameCenterAchievementLocalizations]")
                }

                /// the fields to include for returned resources of type gameCenterAchievementReleases
                public static var gameCenterAchievementReleases: Relation<[GameCenterAchievementReleases]?> {
                    .init(key: "fields[gameCenterAchievementReleases]")
                }

                /// the fields to include for returned resources of type gameCenterAchievements
                public static var gameCenterAchievements: Relation<[GameCenterAchievements]?> {
                    .init(key: "fields[gameCenterAchievements]")
                }

                /// the fields to include for returned resources of type gameCenterDetails
                public static var gameCenterDetails: Relation<[GameCenterDetails]?> {
                    .init(key: "fields[gameCenterDetails]")
                }

                /// the fields to include for returned resources of type gameCenterGroups
                public static var gameCenterGroups: Relation<[GameCenterGroups]?> {
                    .init(key: "fields[gameCenterGroups]")
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
            case groupAchievement
            case localizations
            case releases
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .gameCenterDetail: return "gameCenterDetail"
                case .gameCenterGroup: return "gameCenterGroup"
                case .groupAchievement: return "groupAchievement"
                case .localizations: return "localizations"
                case .releases: return "releases"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "gameCenterDetail": self = .gameCenterDetail
                case "gameCenterGroup": self = .gameCenterGroup
                case "groupAchievement": self = .groupAchievement
                case "localizations": self = .localizations
                case "releases": self = .releases
                default: self = .unknown(rawValue)
                }
            }
        }

        public struct Limit: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public struct Relation<T>: Hashable {
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
