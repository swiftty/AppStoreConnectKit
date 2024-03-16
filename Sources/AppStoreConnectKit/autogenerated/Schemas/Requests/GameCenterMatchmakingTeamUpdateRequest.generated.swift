// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterMatchmakingTeamUpdateRequest: Hashable, Codable {
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

        public enum `Type`: String, Hashable, Codable {
            case gameCenterMatchmakingTeams
        }

        public struct Attributes: Hashable, Codable {
            public var maxPlayers: Int?

            public var minPlayers: Int?

            public init(
                maxPlayers: Int? = nil,
                minPlayers: Int? = nil
            ) {
                self.maxPlayers = maxPlayers
                self.minPlayers = minPlayers
            }

            private enum CodingKeys: String, CodingKey {
                case maxPlayers
                case minPlayers
            }
        }
    }
}

// swiftlint:enable all