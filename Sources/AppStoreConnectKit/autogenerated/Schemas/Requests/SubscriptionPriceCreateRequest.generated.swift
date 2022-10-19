// autogenerated

// swiftlint:disable all
import Foundation

public struct SubscriptionPriceCreateRequest: Hashable, Codable {
    public var data: Data

    public init(data: Data) {
        self.data = data
    }

    private enum CodingKeys: String, CodingKey {
        case data
    }

    public struct Data: Hashable, Codable {
        public var type: `Type`

        public var attributes: Attributes?

        public var relationships: Relationships

        public init(
            type: `Type`,
            attributes: Attributes? = nil,
            relationships: Relationships
        ) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }

        private enum CodingKeys: String, CodingKey {
            case type
            case attributes
            case relationships
        }

        public enum `Type`: String, Hashable, Codable {
            case subscriptionPrices
        }

        public struct Attributes: Hashable, Codable {
            public var preserveCurrentPrice: Bool?

            public var startDate: String?

            public init(
                preserveCurrentPrice: Bool? = nil,
                startDate: String? = nil
            ) {
                self.preserveCurrentPrice = preserveCurrentPrice
                self.startDate = startDate
            }

            private enum CodingKeys: String, CodingKey {
                case preserveCurrentPrice
                case startDate
            }
        }

        public struct Relationships: Hashable, Codable {
            public var subscription: Subscription

            public var subscriptionPricePoint: SubscriptionPricePoint

            public var territory: Territory?

            public init(
                subscription: Subscription,
                subscriptionPricePoint: SubscriptionPricePoint,
                territory: Territory? = nil
            ) {
                self.subscription = subscription
                self.subscriptionPricePoint = subscriptionPricePoint
                self.territory = territory
            }

            private enum CodingKeys: String, CodingKey {
                case subscription
                case subscriptionPricePoint
                case territory
            }

            public struct Subscription: Hashable, Codable {
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
                        case subscriptions
                    }
                }
            }

            public struct SubscriptionPricePoint: Hashable, Codable {
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
                        case subscriptionPricePoints
                    }
                }
            }

            public struct Territory: Hashable, Codable {
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
                        case territories
                    }
                }
            }
        }
    }
}

// swiftlint:enable all