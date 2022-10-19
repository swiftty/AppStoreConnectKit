// autogenerated

// swiftlint:disable all
import Foundation

public struct SubscriptionPromotionalOfferInlineCreate: Hashable, Codable {
    public var id: String?

    public var type: `Type`

    public var attributes: Attributes

    public var relationships: Relationships?

    public init(
        id: String? = nil,
        type: `Type`,
        attributes: Attributes,
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
        case subscriptionPromotionalOffers
    }

    public struct Attributes: Hashable, Codable {
        public var duration: SubscriptionOfferDuration

        public var name: String

        public var numberOfPeriods: Int

        public var offerCode: String

        public var offerMode: SubscriptionOfferMode

        public init(
            duration: SubscriptionOfferDuration,
            name: String,
            numberOfPeriods: Int,
            offerCode: String,
            offerMode: SubscriptionOfferMode
        ) {
            self.duration = duration
            self.name = name
            self.numberOfPeriods = numberOfPeriods
            self.offerCode = offerCode
            self.offerMode = offerMode
        }

        private enum CodingKeys: String, CodingKey {
            case duration
            case name
            case numberOfPeriods
            case offerCode
            case offerMode
        }
    }

    public struct Relationships: Hashable, Codable {
        public var prices: Prices?

        public var subscription: Subscription?

        public init(
            prices: Prices? = nil,
            subscription: Subscription? = nil
        ) {
            self.prices = prices
            self.subscription = subscription
        }

        private enum CodingKeys: String, CodingKey {
            case prices
            case subscription
        }

        public struct Prices: Hashable, Codable {
            public var data: [Data]?

            public init(data: [Data]? = nil) {
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
                    case subscriptionPromotionalOfferPrices
                }
            }
        }

        public struct Subscription: Hashable, Codable {
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
                    case subscriptions
                }
            }
        }
    }
}

// swiftlint:enable all