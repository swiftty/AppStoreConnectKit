// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterGroup: Hashable, Codable, Sendable {
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
        case gameCenterGroups
    }

    public struct Attributes: Hashable, Codable, Sendable {
        public var referenceName: String?

        public init(referenceName: String? = nil) {
            self.referenceName = referenceName
        }

        private enum CodingKeys: String, CodingKey {
            case referenceName
        }
    }

    public struct Relationships: Hashable, Codable, Sendable {
        public var gameCenterAchievements: GameCenterAchievements?

        public var gameCenterActivities: GameCenterActivities?

        public var gameCenterChallenges: GameCenterChallenges?

        public var gameCenterDetails: GameCenterDetails?

        public var gameCenterLeaderboardSets: GameCenterLeaderboardSets?

        public var gameCenterLeaderboards: GameCenterLeaderboards?

        public init(
            gameCenterAchievements: GameCenterAchievements? = nil,
            gameCenterActivities: GameCenterActivities? = nil,
            gameCenterChallenges: GameCenterChallenges? = nil,
            gameCenterDetails: GameCenterDetails? = nil,
            gameCenterLeaderboardSets: GameCenterLeaderboardSets? = nil,
            gameCenterLeaderboards: GameCenterLeaderboards? = nil
        ) {
            self.gameCenterAchievements = gameCenterAchievements
            self.gameCenterActivities = gameCenterActivities
            self.gameCenterChallenges = gameCenterChallenges
            self.gameCenterDetails = gameCenterDetails
            self.gameCenterLeaderboardSets = gameCenterLeaderboardSets
            self.gameCenterLeaderboards = gameCenterLeaderboards
        }

        private enum CodingKeys: String, CodingKey {
            case gameCenterAchievements
            case gameCenterActivities
            case gameCenterChallenges
            case gameCenterDetails
            case gameCenterLeaderboardSets
            case gameCenterLeaderboards
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

        public struct GameCenterDetails: Hashable, Codable, Sendable {
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
                    case gameCenterDetails
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
    }
}

// swiftlint:enable all
