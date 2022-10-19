// autogenerated

// swiftlint:disable all
import Foundation

public struct SubscriptionPromotionalOfferPrice: Hashable, Codable {
    public var id: String

    public var type: `Type`

    public var relationships: Relationships?

    public var links: ResourceLinks

    public init(
        id: String,
        type: `Type`,
        relationships: Relationships? = nil,
        links: ResourceLinks
    ) {
        self.id = id
        self.type = type
        self.relationships = relationships
        self.links = links
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case relationships
        case links
    }

    public enum `Type`: String, Hashable, Codable {
        case subscriptionPromotionalOfferPrices
    }

    public struct Relationships: Hashable, Codable {
        public var subscriptionPricePoint: SubscriptionPricePoint?

        public var territory: Territory?

        public init(
            subscriptionPricePoint: SubscriptionPricePoint? = nil,
            territory: Territory? = nil
        ) {
            self.subscriptionPricePoint = subscriptionPricePoint
            self.territory = territory
        }

        private enum CodingKeys: String, CodingKey {
            case subscriptionPricePoint
            case territory
        }

        public struct SubscriptionPricePoint: Hashable, Codable {
            public var data: Data?

            public var links: Links?

            public init(
                data: Data? = nil,
                links: Links? = nil
            ) {
                self.data = data
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
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
                    case subscriptionPricePoints
                }
            }

            public struct Links: Hashable, Codable {
                public var related: URL?

                public var `self`: URL?

                public init(
                    related: URL? = nil,
                    self _self: URL? = nil
                ) {
                    self.related = related
                    self.`self` = _self
                }

                private enum CodingKeys: String, CodingKey {
                    case related
                    case `self` = "self"
                }
            }
        }

        public struct Territory: Hashable, Codable {
            public var data: Data?

            public var links: Links?

            public init(
                data: Data? = nil,
                links: Links? = nil
            ) {
                self.data = data
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
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
                    case territories
                }
            }

            public struct Links: Hashable, Codable {
                public var related: URL?

                public var `self`: URL?

                public init(
                    related: URL? = nil,
                    self _self: URL? = nil
                ) {
                    self.related = related
                    self.`self` = _self
                }

                private enum CodingKeys: String, CodingKey {
                    case related
                    case `self` = "self"
                }
            }
        }
    }
}

// swiftlint:enable all
