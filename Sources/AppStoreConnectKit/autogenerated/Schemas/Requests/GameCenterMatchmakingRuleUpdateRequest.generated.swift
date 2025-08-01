// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterMatchmakingRuleUpdateRequest: Hashable, Codable, Sendable {
    public var data: Data

    public init(data: Data) {
        self.data = data
    }

    private enum CodingKeys: String, CodingKey {
        case data
    }

    public struct Data: Hashable, Codable, Sendable {
        public var id: String

        public var type: `Type`

        public var attributes: Attributes?

        public init(
            id: String,
            type: `Type`,
            attributes: Attributes? = nil
        ) {
            self.id = id
            self.type = type
            self.attributes = attributes
        }

        private enum CodingKeys: String, CodingKey {
            case id
            case type
            case attributes
        }

        public enum `Type`: String, Hashable, Codable, Sendable {
            case gameCenterMatchmakingRules
        }

        public struct Attributes: Hashable, Codable, Sendable {
            public var description: String?

            public var expression: String?

            public var weight: Float?

            public init(
                description: String? = nil,
                expression: String? = nil,
                weight: Float? = nil
            ) {
                self.description = description
                self.expression = expression
                self.weight = weight
            }

            private enum CodingKeys: String, CodingKey {
                case description
                case expression
                case weight
            }
        }
    }
}

// swiftlint:enable all
