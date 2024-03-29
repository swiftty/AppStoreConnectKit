// autogenerated

// swiftlint:disable all
import Foundation

public struct InAppPurchasePriceInlineCreate: Hashable, Codable {
    public var id: String?

    public var type: `Type`

    public var attributes: Attributes?

    public var relationships: Relationships?

    public init(
        id: String? = nil,
        type: `Type`,
        attributes: Attributes? = nil,
        relationships: Relationships? = nil
    ) {
        self.id = id
        self.type = type
        self.attributes = attributes
        self.relationships = relationships
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case attributes
        case relationships
    }

    public enum `Type`: String, Hashable, Codable {
        case inAppPurchasePrices
    }

    public struct Attributes: Hashable, Codable {
        public var endDate: String?

        public var startDate: String?

        public init(
            endDate: String? = nil,
            startDate: String? = nil
        ) {
            self.endDate = endDate
            self.startDate = startDate
        }

        private enum CodingKeys: String, CodingKey {
            case endDate
            case startDate
        }
    }

    public struct Relationships: Hashable, Codable {
        public var inAppPurchasePricePoint: InAppPurchasePricePoint?

        public var inAppPurchaseV2: InAppPurchaseV2?

        public init(
            inAppPurchasePricePoint: InAppPurchasePricePoint? = nil,
            inAppPurchaseV2: InAppPurchaseV2? = nil
        ) {
            self.inAppPurchasePricePoint = inAppPurchasePricePoint
            self.inAppPurchaseV2 = inAppPurchaseV2
        }

        private enum CodingKeys: String, CodingKey {
            case inAppPurchasePricePoint
            case inAppPurchaseV2
        }

        public struct InAppPurchasePricePoint: Hashable, Codable {
            public var data: Data?

            public init(data: Data? = nil) {
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
                    case inAppPurchasePricePoints
                }
            }
        }

        public struct InAppPurchaseV2: Hashable, Codable {
            public var data: Data?

            public init(data: Data? = nil) {
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
                    case inAppPurchases
                }
            }
        }
    }
}

// swiftlint:enable all
