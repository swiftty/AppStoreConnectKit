// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterMatchmakingRuleSet: Hashable, Codable {
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

    public enum `Type`: String, Hashable, Codable {
        case gameCenterMatchmakingRuleSets
    }

    public struct Attributes: Hashable, Codable {
        public var maxPlayers: Int?

        public var minPlayers: Int?

        public var referenceName: String?

        public var ruleLanguageVersion: Int?

        public init(
            maxPlayers: Int? = nil,
            minPlayers: Int? = nil,
            referenceName: String? = nil,
            ruleLanguageVersion: Int? = nil
        ) {
            self.maxPlayers = maxPlayers
            self.minPlayers = minPlayers
            self.referenceName = referenceName
            self.ruleLanguageVersion = ruleLanguageVersion
        }

        private enum CodingKeys: String, CodingKey {
            case maxPlayers
            case minPlayers
            case referenceName
            case ruleLanguageVersion
        }
    }

    public struct Relationships: Hashable, Codable {
        public var matchmakingQueues: MatchmakingQueues?

        public var rules: Rules?

        public var teams: Teams?

        public init(
            matchmakingQueues: MatchmakingQueues? = nil,
            rules: Rules? = nil,
            teams: Teams? = nil
        ) {
            self.matchmakingQueues = matchmakingQueues
            self.rules = rules
            self.teams = teams
        }

        private enum CodingKeys: String, CodingKey {
            case matchmakingQueues
            case rules
            case teams
        }

        public struct MatchmakingQueues: Hashable, Codable {
            public var data: [Data]?

            public var links: Links?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: Links? = nil,
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

            public struct Data: Hashable, Codable {
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

                public enum `Type`: String, Hashable, Codable {
                    case gameCenterMatchmakingQueues
                }
            }

            public struct Links: Hashable, Codable {
                public var related: URL?

                public var `self`: URL?

                public init(
                    related: URL? = nil,
                    self _self: URL? = nil
                ) {
                    self.related = related
                    self.`self` = _self
                }

                private enum CodingKeys: String, CodingKey {
                    case related
                    case `self` = "self"
                }
            }
        }

        public struct Rules: Hashable, Codable {
            public var data: [Data]?

            public var links: Links?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: Links? = nil,
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

            public struct Data: Hashable, Codable {
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

                public enum `Type`: String, Hashable, Codable {
                    case gameCenterMatchmakingRules
                }
            }

            public struct Links: Hashable, Codable {
                public var related: URL?

                public var `self`: URL?

                public init(
                    related: URL? = nil,
                    self _self: URL? = nil
                ) {
                    self.related = related
                    self.`self` = _self
                }

                private enum CodingKeys: String, CodingKey {
                    case related
                    case `self` = "self"
                }
            }
        }

        public struct Teams: Hashable, Codable {
            public var data: [Data]?

            public var links: Links?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: Links? = nil,
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

            public struct Data: Hashable, Codable {
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

                public enum `Type`: String, Hashable, Codable {
                    case gameCenterMatchmakingTeams
                }
            }

            public struct Links: Hashable, Codable {
                public var related: URL?

                public var `self`: URL?

                public init(
                    related: URL? = nil,
                    self _self: URL? = nil
                ) {
                    self.related = related
                    self.`self` = _self
                }

                private enum CodingKeys: String, CodingKey {
                    case related
                    case `self` = "self"
                }
            }
        }
    }
}

// swiftlint:enable all