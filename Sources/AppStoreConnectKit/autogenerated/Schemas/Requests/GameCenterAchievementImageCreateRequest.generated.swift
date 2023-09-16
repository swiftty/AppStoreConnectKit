// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterAchievementImageCreateRequest: Hashable, Codable {
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
            case gameCenterAchievementImages
        }

        public struct Attributes: Hashable, Codable {
            public var fileName: String

            public var fileSize: Int

            public init(
                fileName: String,
                fileSize: Int
            ) {
                self.fileName = fileName
                self.fileSize = fileSize
            }

            private enum CodingKeys: String, CodingKey {
                case fileName
                case fileSize
            }
        }

        public struct Relationships: Hashable, Codable {
            public var gameCenterAchievementLocalization: GameCenterAchievementLocalization

            public init(gameCenterAchievementLocalization: GameCenterAchievementLocalization) {
                self.gameCenterAchievementLocalization = gameCenterAchievementLocalization
            }

            private enum CodingKeys: String, CodingKey {
                case gameCenterAchievementLocalization
            }

            public struct GameCenterAchievementLocalization: Hashable, Codable {
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
                        case gameCenterAchievementLocalizations
                    }
                }
            }
        }
    }
}

// swiftlint:enable all
