// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterLeaderboardSetCreateRequest: Hashable, Codable, Sendable {
    public var data: Data

    public init(data: Data) {
        self.data = data
    }

    private enum CodingKeys: String, CodingKey {
        case data
    }

    public struct Data: Hashable, Codable, Sendable {
        public var type: `Type`

        public var attributes: Attributes

        public var relationships: Relationships?

        public init(
            type: `Type`,
            attributes: Attributes,
            relationships: Relationships? = nil
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

        public enum `Type`: String, Hashable, Codable, Sendable {
            case gameCenterLeaderboardSets
        }

        public struct Attributes: Hashable, Codable, Sendable {
            public var referenceName: String

            public var vendorIdentifier: String

            public init(
                referenceName: String,
                vendorIdentifier: String
            ) {
                self.referenceName = referenceName
                self.vendorIdentifier = vendorIdentifier
            }

            private enum CodingKeys: String, CodingKey {
                case referenceName
                case vendorIdentifier
            }
        }

        public struct Relationships: Hashable, Codable, Sendable {
            public var gameCenterDetail: GameCenterDetail?

            public var gameCenterGroup: GameCenterGroup?

            public var gameCenterLeaderboards: GameCenterLeaderboards?

            public init(
                gameCenterDetail: GameCenterDetail? = nil,
                gameCenterGroup: GameCenterGroup? = nil,
                gameCenterLeaderboards: GameCenterLeaderboards? = nil
            ) {
                self.gameCenterDetail = gameCenterDetail
                self.gameCenterGroup = gameCenterGroup
                self.gameCenterLeaderboards = gameCenterLeaderboards
            }

            private enum CodingKeys: String, CodingKey {
                case gameCenterDetail
                case gameCenterGroup
                case gameCenterLeaderboards
            }

            public struct GameCenterDetail: Hashable, Codable, Sendable {
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
                        case gameCenterDetails
                    }
                }
            }

            public struct GameCenterGroup: Hashable, Codable, Sendable {
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
                        case gameCenterGroups
                    }
                }
            }

            public struct GameCenterLeaderboards: Hashable, Codable, Sendable {
                public var data: [Data]?

                public init(data: [Data]? = nil) {
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
        }
    }
}

// swiftlint:enable all
