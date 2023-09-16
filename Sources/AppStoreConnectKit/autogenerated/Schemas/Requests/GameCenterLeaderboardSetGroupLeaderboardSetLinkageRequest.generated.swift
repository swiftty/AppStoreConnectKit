// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterLeaderboardSetGroupLeaderboardSetLinkageRequest: Hashable, Codable {
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

// swiftlint:enable all
