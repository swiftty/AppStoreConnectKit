// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterDetail: Hashable, Codable, Sendable {
    public var id: String

    public var type: `Type`

    public var attributes: Attributes?

    public var relationships: Relationships?

    public var links: ResourceLinks?

    public init(
        id: String,
        type: `Type`,
        attributes: Attributes? = nil,
        relationships: Relationships? = nil,
        links: ResourceLinks? = nil
    ) {
        self.id = id
        self.type = type
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case attributes
        case relationships
        case links
    }

    public enum `Type`: String, Hashable, Codable, Sendable {
        case gameCenterDetails
    }

    public struct Attributes: Hashable, Codable, Sendable {
        public var arcadeEnabled: Bool?

        @available(*, deprecated)
        public var challengeEnabled: Bool?

        public init(
            arcadeEnabled: Bool? = nil,
            challengeEnabled: Bool? = nil
        ) {
            self.arcadeEnabled = arcadeEnabled
            self.challengeEnabled = challengeEnabled
        }

        private enum CodingKeys: String, CodingKey {
            case arcadeEnabled
            case challengeEnabled
        }
    }

    public struct Relationships: Hashable, Codable, Sendable {
        public var achievementReleases: AchievementReleases?

        public var activityReleases: ActivityReleases?

        public var app: App?

        public var challengeReleases: ChallengeReleases?

        public var challengesMinimumPlatformVersions: ChallengesMinimumPlatformVersions?

        public var defaultGroupLeaderboard: DefaultGroupLeaderboard?

        public var defaultLeaderboard: DefaultLeaderboard?

        public var gameCenterAchievements: GameCenterAchievements?

        public var gameCenterActivities: GameCenterActivities?

        public var gameCenterAppVersions: GameCenterAppVersions?

        public var gameCenterChallenges: GameCenterChallenges?

        public var gameCenterGroup: GameCenterGroup?

        public var gameCenterLeaderboardSets: GameCenterLeaderboardSets?

        public var gameCenterLeaderboards: GameCenterLeaderboards?

        public var leaderboardReleases: LeaderboardReleases?

        public var leaderboardSetReleases: LeaderboardSetReleases?

        public init(
            achievementReleases: AchievementReleases? = nil,
            activityReleases: ActivityReleases? = nil,
            app: App? = nil,
            challengeReleases: ChallengeReleases? = nil,
            challengesMinimumPlatformVersions: ChallengesMinimumPlatformVersions? = nil,
            defaultGroupLeaderboard: DefaultGroupLeaderboard? = nil,
            defaultLeaderboard: DefaultLeaderboard? = nil,
            gameCenterAchievements: GameCenterAchievements? = nil,
            gameCenterActivities: GameCenterActivities? = nil,
            gameCenterAppVersions: GameCenterAppVersions? = nil,
            gameCenterChallenges: GameCenterChallenges? = nil,
            gameCenterGroup: GameCenterGroup? = nil,
            gameCenterLeaderboardSets: GameCenterLeaderboardSets? = nil,
            gameCenterLeaderboards: GameCenterLeaderboards? = nil,
            leaderboardReleases: LeaderboardReleases? = nil,
            leaderboardSetReleases: LeaderboardSetReleases? = nil
        ) {
            self.achievementReleases = achievementReleases
            self.activityReleases = activityReleases
            self.app = app
            self.challengeReleases = challengeReleases
            self.challengesMinimumPlatformVersions = challengesMinimumPlatformVersions
            self.defaultGroupLeaderboard = defaultGroupLeaderboard
            self.defaultLeaderboard = defaultLeaderboard
            self.gameCenterAchievements = gameCenterAchievements
            self.gameCenterActivities = gameCenterActivities
            self.gameCenterAppVersions = gameCenterAppVersions
            self.gameCenterChallenges = gameCenterChallenges
            self.gameCenterGroup = gameCenterGroup
            self.gameCenterLeaderboardSets = gameCenterLeaderboardSets
            self.gameCenterLeaderboards = gameCenterLeaderboards
            self.leaderboardReleases = leaderboardReleases
            self.leaderboardSetReleases = leaderboardSetReleases
        }

        private enum CodingKeys: String, CodingKey {
            case achievementReleases
            case activityReleases
            case app
            case challengeReleases
            case challengesMinimumPlatformVersions
            case defaultGroupLeaderboard
            case defaultLeaderboard
            case gameCenterAchievements
            case gameCenterActivities
            case gameCenterAppVersions
            case gameCenterChallenges
            case gameCenterGroup
            case gameCenterLeaderboardSets
            case gameCenterLeaderboards
            case leaderboardReleases
            case leaderboardSetReleases
        }

        public struct AchievementReleases: Hashable, Codable, Sendable {
            public var data: [Data]?

            public var links: RelationshipLinks?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: RelationshipLinks? = nil,
                meta: PagingInformation? = nil
            ) {
                self.data = data
                self.links = links
                self.meta = meta
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
                case meta
            }

            public struct Data: Hashable, Codable, Sendable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case gameCenterAchievementReleases
                }
            }
        }

        public struct ActivityReleases: Hashable, Codable, Sendable {
            public var data: [Data]?

            public var links: RelationshipLinks?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: RelationshipLinks? = nil,
                meta: PagingInformation? = nil
            ) {
                self.data = data
                self.links = links
                self.meta = meta
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
                case meta
            }

            public struct Data: Hashable, Codable, Sendable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case gameCenterActivityVersionReleases
                }
            }
        }

        public struct App: Hashable, Codable, Sendable {
            public var data: Data?

            public init(data: Data? = nil) {
                self.data = data
            }

            private enum CodingKeys: String, CodingKey {
                case data
            }

            public struct Data: Hashable, Codable, Sendable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case apps
                }
            }
        }

        public struct ChallengeReleases: Hashable, Codable, Sendable {
            public var data: [Data]?

            public var links: RelationshipLinks?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: RelationshipLinks? = nil,
                meta: PagingInformation? = nil
            ) {
                self.data = data
                self.links = links
                self.meta = meta
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
                case meta
            }

            public struct Data: Hashable, Codable, Sendable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case gameCenterChallengeVersionReleases
                }
            }
        }

        public struct ChallengesMinimumPlatformVersions: Hashable, Codable, Sendable {
            public var data: [Data]?

            public var links: RelationshipLinks?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: RelationshipLinks? = nil,
                meta: PagingInformation? = nil
            ) {
                self.data = data
                self.links = links
                self.meta = meta
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
                case meta
            }

            public struct Data: Hashable, Codable, Sendable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case appStoreVersions
                }
            }
        }

        public struct DefaultGroupLeaderboard: Hashable, Codable, Sendable {
            public var data: Data?

            public init(data: Data? = nil) {
                self.data = data
            }

            private enum CodingKeys: String, CodingKey {
                case data
            }

            public struct Data: Hashable, Codable, Sendable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case gameCenterLeaderboards
                }
            }
        }

        public struct DefaultLeaderboard: Hashable, Codable, Sendable {
            public var data: Data?

            public init(data: Data? = nil) {
                self.data = data
            }

            private enum CodingKeys: String, CodingKey {
                case data
            }

            public struct Data: Hashable, Codable, Sendable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case gameCenterLeaderboards
                }
            }
        }

        public struct GameCenterAchievements: Hashable, Codable, Sendable {
            public var data: [Data]?

            public var links: RelationshipLinks?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: RelationshipLinks? = nil,
                meta: PagingInformation? = nil
            ) {
                self.data = data
                self.links = links
                self.meta = meta
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
                case meta
            }

            public struct Data: Hashable, Codable, Sendable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case gameCenterAchievements
                }
            }
        }

        public struct GameCenterActivities: Hashable, Codable, Sendable {
            public var data: [Data]?

            public var links: RelationshipLinks?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: RelationshipLinks? = nil,
                meta: PagingInformation? = nil
            ) {
                self.data = data
                self.links = links
                self.meta = meta
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
                case meta
            }

            public struct Data: Hashable, Codable, Sendable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case gameCenterActivities
                }
            }
        }

        public struct GameCenterAppVersions: Hashable, Codable, Sendable {
            public var data: [Data]?

            public var links: RelationshipLinks?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: RelationshipLinks? = nil,
                meta: PagingInformation? = nil
            ) {
                self.data = data
                self.links = links
                self.meta = meta
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
                case meta
            }

            public struct Data: Hashable, Codable, Sendable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case gameCenterAppVersions
                }
            }
        }

        public struct GameCenterChallenges: Hashable, Codable, Sendable {
            public var data: [Data]?

            public var links: RelationshipLinks?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: RelationshipLinks? = nil,
                meta: PagingInformation? = nil
            ) {
                self.data = data
                self.links = links
                self.meta = meta
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
                case meta
            }

            public struct Data: Hashable, Codable, Sendable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case gameCenterChallenges
                }
            }
        }

        public struct GameCenterGroup: Hashable, Codable, Sendable {
            public var data: Data?

            public var links: RelationshipLinks?

            public init(
                data: Data? = nil,
                links: RelationshipLinks? = nil
            ) {
                self.data = data
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
            }

            public struct Data: Hashable, Codable, Sendable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case gameCenterGroups
                }
            }
        }

        public struct GameCenterLeaderboardSets: Hashable, Codable, Sendable {
            public var data: [Data]?

            public var links: RelationshipLinks?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: RelationshipLinks? = nil,
                meta: PagingInformation? = nil
            ) {
                self.data = data
                self.links = links
                self.meta = meta
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
                case meta
            }

            public struct Data: Hashable, Codable, Sendable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case gameCenterLeaderboardSets
                }
            }
        }

        public struct GameCenterLeaderboards: Hashable, Codable, Sendable {
            public var data: [Data]?

            public var links: RelationshipLinks?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: RelationshipLinks? = nil,
                meta: PagingInformation? = nil
            ) {
                self.data = data
                self.links = links
                self.meta = meta
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
                case meta
            }

            public struct Data: Hashable, Codable, Sendable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case gameCenterLeaderboards
                }
            }
        }

        public struct LeaderboardReleases: Hashable, Codable, Sendable {
            public var data: [Data]?

            public var links: RelationshipLinks?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: RelationshipLinks? = nil,
                meta: PagingInformation? = nil
            ) {
                self.data = data
                self.links = links
                self.meta = meta
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
                case meta
            }

            public struct Data: Hashable, Codable, Sendable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case gameCenterLeaderboardReleases
                }
            }
        }

        public struct LeaderboardSetReleases: Hashable, Codable, Sendable {
            public var data: [Data]?

            public var links: RelationshipLinks?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: RelationshipLinks? = nil,
                meta: PagingInformation? = nil
            ) {
                self.data = data
                self.links = links
                self.meta = meta
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
                case meta
            }

            public struct Data: Hashable, Codable, Sendable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case gameCenterLeaderboardSetReleases
                }
            }
        }
    }
}

// swiftlint:enable all
