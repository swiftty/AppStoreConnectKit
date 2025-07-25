// autogenerated

// swiftlint:disable all
import Foundation

public struct InAppPurchasePrice: Hashable, Codable, Sendable {
    public var id: String

    public var type: `Type`

    public var attributes: Attributes?

    public var relationships: Relationships?

    public var links: ResourceLinks?

    public init(
        id: String,
        type: `Type`,
        attributes: Attributes? = nil,
        relationships: Relationships? = nil,
        links: ResourceLinks? = nil
    ) {
        self.id = id
        self.type = type
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case attributes
        case relationships
        case links
    }

    public enum `Type`: String, Hashable, Codable, Sendable {
        case inAppPurchasePrices
    }

    public struct Attributes: Hashable, Codable, Sendable {
        public var endDate: String?

        public var manual: Bool?

        public var startDate: String?

        public init(
            endDate: String? = nil,
            manual: Bool? = nil,
            startDate: String? = nil
        ) {
            self.endDate = endDate
            self.manual = manual
            self.startDate = startDate
        }

        private enum CodingKeys: String, CodingKey {
            case endDate
            case manual
            case startDate
        }
    }

    public struct Relationships: Hashable, Codable, Sendable {
        public var inAppPurchasePricePoint: InAppPurchasePricePoint?

        public var territory: Territory?

        public init(
            inAppPurchasePricePoint: InAppPurchasePricePoint? = nil,
            territory: Territory? = nil
        ) {
            self.inAppPurchasePricePoint = inAppPurchasePricePoint
            self.territory = territory
        }

        private enum CodingKeys: String, CodingKey {
            case inAppPurchasePricePoint
            case territory
        }

        public struct InAppPurchasePricePoint: Hashable, Codable, Sendable {
            public var data: Data?

            public init(data: Data? = nil) {
                self.data = data
            }

            private enum CodingKeys: String, CodingKey {
                case data
            }

            public struct Data: Hashable, Codable, Sendable {
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

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case inAppPurchasePricePoints
                }
            }
        }

        public struct Territory: Hashable, Codable, Sendable {
            public var data: Data?

            public init(data: Data? = nil) {
                self.data = data
            }

            private enum CodingKeys: String, CodingKey {
                case data
            }

            public struct Data: Hashable, Codable, Sendable {
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

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case territories
                }
            }
        }
    }
}

// swiftlint:enable all
