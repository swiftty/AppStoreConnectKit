// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterMatchmakingRuleSetCreateRequest: Hashable, Codable {
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

        public init(
            type: `Type`,
            attributes: Attributes
        ) {
            self.type = type
            self.attributes = attributes
        }

        private enum CodingKeys: String, CodingKey {
            case type
            case attributes
        }

        public enum `Type`: String, Hashable, Codable {
            case gameCenterMatchmakingRuleSets
        }

        public struct Attributes: Hashable, Codable {
            public var maxPlayers: Int

            public var minPlayers: Int

            public var referenceName: String

            public var ruleLanguageVersion: Int

            public init(
                maxPlayers: Int,
                minPlayers: Int,
                referenceName: String,
                ruleLanguageVersion: Int
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
    }
}

// swiftlint:enable all
