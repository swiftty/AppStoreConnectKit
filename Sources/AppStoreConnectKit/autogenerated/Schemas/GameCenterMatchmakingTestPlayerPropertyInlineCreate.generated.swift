// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterMatchmakingTestPlayerPropertyInlineCreate: Hashable, Codable, Sendable {
    public var id: String?

    public var type: `Type`

    public var attributes: Attributes

    public init(
        id: String? = nil,
        type: `Type`,
        attributes: Attributes
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
        case gameCenterMatchmakingTestPlayerProperties
    }

    public struct Attributes: Hashable, Codable, Sendable {
        public var playerId: String

        public var properties: [Property]?

        public init(
            playerId: String,
            properties: [Property]? = nil
        ) {
            self.playerId = playerId
            self.properties = properties
        }

        private enum CodingKeys: String, CodingKey {
            case playerId
            case properties
        }
    }
}

// swiftlint:enable all
