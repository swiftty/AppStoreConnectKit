// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterAchievementUpdateRequest: Hashable, Codable, Sendable {
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
            case gameCenterAchievements
        }

        public struct Attributes: Hashable, Codable, Sendable {
            public var activityProperties: [String: String]?

            public var archived: Bool?

            public var points: Int?

            public var referenceName: String?

            public var repeatable: Bool?

            public var showBeforeEarned: Bool?

            public init(
                activityProperties: [String: String]? = nil,
                archived: Bool? = nil,
                points: Int? = nil,
                referenceName: String? = nil,
                repeatable: Bool? = nil,
                showBeforeEarned: Bool? = nil
            ) {
                self.activityProperties = activityProperties
                self.archived = archived
                self.points = points
                self.referenceName = referenceName
                self.repeatable = repeatable
                self.showBeforeEarned = showBeforeEarned
            }

            private enum CodingKeys: String, CodingKey {
                case activityProperties
                case archived
                case points
                case referenceName
                case repeatable
                case showBeforeEarned
            }
        }
    }
}

// swiftlint:enable all
