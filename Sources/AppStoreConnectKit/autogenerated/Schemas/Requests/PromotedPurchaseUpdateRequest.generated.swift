// autogenerated

// swiftlint:disable all
import Foundation

public struct PromotedPurchaseUpdateRequest: Hashable, Codable {
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
            case promotedPurchases
        }

        public struct Attributes: Hashable, Codable {
            public var enabled: Bool?

            public var visibleForAllUsers: Bool?

            public init(
                enabled: Bool? = nil,
                visibleForAllUsers: Bool? = nil
            ) {
                self.enabled = enabled
                self.visibleForAllUsers = visibleForAllUsers
            }

            private enum CodingKeys: String, CodingKey {
                case enabled
                case visibleForAllUsers
            }
        }
    }
}

// swiftlint:enable all
