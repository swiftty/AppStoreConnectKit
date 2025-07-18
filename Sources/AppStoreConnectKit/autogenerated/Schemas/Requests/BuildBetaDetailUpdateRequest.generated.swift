// autogenerated

// swiftlint:disable all
import Foundation

public struct BuildBetaDetailUpdateRequest: Hashable, Codable, Sendable {
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
            case buildBetaDetails
        }

        public struct Attributes: Hashable, Codable, Sendable {
            public var autoNotifyEnabled: Bool?

            public init(autoNotifyEnabled: Bool? = nil) {
                self.autoNotifyEnabled = autoNotifyEnabled
            }

            private enum CodingKeys: String, CodingKey {
                case autoNotifyEnabled
            }
        }
    }
}

// swiftlint:enable all
