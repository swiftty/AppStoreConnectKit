// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterMatchmakingTeam: Hashable, Codable {
    public var id: String

    public var type: `Type`

    public var attributes: Attributes?

    public var links: ResourceLinks?

    public init(
        id: String,
        type: `Type`,
        attributes: Attributes? = nil,
        links: ResourceLinks? = nil
    ) {
        self.id = id
        self.type = type
        self.attributes = attributes
        self.links = links
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case attributes
        case links
    }

    public enum `Type`: String, Hashable, Codable {
        case gameCenterMatchmakingTeams
    }

    public struct Attributes: Hashable, Codable {
        public var maxPlayers: Int?

        public var minPlayers: Int?

        public var referenceName: String?

        public init(
            maxPlayers: Int? = nil,
            minPlayers: Int? = nil,
            referenceName: String? = nil
        ) {
            self.maxPlayers = maxPlayers
            self.minPlayers = minPlayers
            self.referenceName = referenceName
        }

        private enum CodingKeys: String, CodingKey {
            case maxPlayers
            case minPlayers
            case referenceName
        }
    }
}

// swiftlint:enable all
