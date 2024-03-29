// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterLeaderboardSetLocalizationCreateRequest: Hashable, Codable {
    public var data: Data

    public init(data: Data) {
        self.data = data
    }

    private enum CodingKeys: String, CodingKey {
        case data
    }

    public struct Data: Hashable, Codable {
        public var type: `Type`

        public var attributes: Attributes

        public var relationships: Relationships

        public init(
            type: `Type`,
            attributes: Attributes,
            relationships: Relationships
        ) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }

        private enum CodingKeys: String, CodingKey {
            case type
            case attributes
            case relationships
        }

        public enum `Type`: String, Hashable, Codable {
            case gameCenterLeaderboardSetLocalizations
        }

        public struct Attributes: Hashable, Codable {
            public var locale: String

            public var name: String

            public init(
                locale: String,
                name: String
            ) {
                self.locale = locale
                self.name = name
            }

            private enum CodingKeys: String, CodingKey {
                case locale
                case name
            }
        }

        public struct Relationships: Hashable, Codable {
            public var gameCenterLeaderboardSet: GameCenterLeaderboardSet

            public init(gameCenterLeaderboardSet: GameCenterLeaderboardSet) {
                self.gameCenterLeaderboardSet = gameCenterLeaderboardSet
            }

            private enum CodingKeys: String, CodingKey {
                case gameCenterLeaderboardSet
            }

            public struct GameCenterLeaderboardSet: Hashable, Codable {
                public var data: Data

                public init(data: Data) {
                    self.data = data
                }

                private enum CodingKeys: String, CodingKey {
                    case data
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
                        case gameCenterLeaderboardSets
                    }
                }
            }
        }
    }
}

// swiftlint:enable all
