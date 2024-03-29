// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterLeaderboardLocalizationUpdateRequest: Hashable, Codable {
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
            case gameCenterLeaderboardLocalizations
        }

        public struct Attributes: Hashable, Codable {
            public var formatterOverride: GameCenterLeaderboardFormatter?

            public var formatterSuffix: String?

            public var formatterSuffixSingular: String?

            public var name: String?

            public init(
                formatterOverride: GameCenterLeaderboardFormatter? = nil,
                formatterSuffix: String? = nil,
                formatterSuffixSingular: String? = nil,
                name: String? = nil
            ) {
                self.formatterOverride = formatterOverride
                self.formatterSuffix = formatterSuffix
                self.formatterSuffixSingular = formatterSuffixSingular
                self.name = name
            }

            private enum CodingKeys: String, CodingKey {
                case formatterOverride
                case formatterSuffix
                case formatterSuffixSingular
                case name
            }
        }
    }
}

// swiftlint:enable all
