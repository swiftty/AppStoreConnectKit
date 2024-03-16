// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterAchievementLocalizationUpdateRequest: Hashable, Codable {
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
            case gameCenterAchievementLocalizations
        }

        public struct Attributes: Hashable, Codable {
            public var afterEarnedDescription: String?

            public var beforeEarnedDescription: String?

            public var name: String?

            public init(
                afterEarnedDescription: String? = nil,
                beforeEarnedDescription: String? = nil,
                name: String? = nil
            ) {
                self.afterEarnedDescription = afterEarnedDescription
                self.beforeEarnedDescription = beforeEarnedDescription
                self.name = name
            }

            private enum CodingKeys: String, CodingKey {
                case afterEarnedDescription
                case beforeEarnedDescription
                case name
            }
        }
    }
}

// swiftlint:enable all