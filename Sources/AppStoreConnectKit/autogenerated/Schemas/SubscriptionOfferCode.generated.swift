// autogenerated

// swiftlint:disable all
import Foundation

public struct SubscriptionOfferCode: Hashable, Codable {
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

    public enum `Type`: String, Hashable, Codable {
        case subscriptionOfferCodes
    }

    public struct Attributes: Hashable, Codable {
        public var active: Bool?

        public var customerEligibilities: [SubscriptionCustomerEligibility]?

        public var duration: SubscriptionOfferDuration?

        public var name: String?

        public var numberOfPeriods: Int?

        public var offerEligibility: SubscriptionOfferEligibility?

        public var offerMode: SubscriptionOfferMode?

        public var totalNumberOfCodes: Int?

        public init(
            active: Bool? = nil,
            customerEligibilities: [SubscriptionCustomerEligibility]? = nil,
            duration: SubscriptionOfferDuration? = nil,
            name: String? = nil,
            numberOfPeriods: Int? = nil,
            offerEligibility: SubscriptionOfferEligibility? = nil,
            offerMode: SubscriptionOfferMode? = nil,
            totalNumberOfCodes: Int? = nil
        ) {
            self.active = active
            self.customerEligibilities = customerEligibilities
            self.duration = duration
            self.name = name
            self.numberOfPeriods = numberOfPeriods
            self.offerEligibility = offerEligibility
            self.offerMode = offerMode
            self.totalNumberOfCodes = totalNumberOfCodes
        }

        private enum CodingKeys: String, CodingKey {
            case active
            case customerEligibilities
            case duration
            case name
            case numberOfPeriods
            case offerEligibility
            case offerMode
            case totalNumberOfCodes
        }
    }

    public struct Relationships: Hashable, Codable {
        public var customCodes: CustomCodes?

        public var oneTimeUseCodes: OneTimeUseCodes?

        public var prices: Prices?

        public var subscription: Subscription?

        public init(
            customCodes: CustomCodes? = nil,
            oneTimeUseCodes: OneTimeUseCodes? = nil,
            prices: Prices? = nil,
            subscription: Subscription? = nil
        ) {
            self.customCodes = customCodes
            self.oneTimeUseCodes = oneTimeUseCodes
            self.prices = prices
            self.subscription = subscription
        }

        private enum CodingKeys: String, CodingKey {
            case customCodes
            case oneTimeUseCodes
            case prices
            case subscription
        }

        public struct CustomCodes: Hashable, Codable {
            public var data: [Data]?

            public var links: Links?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: Links? = nil,
                meta: PagingInformation? = nil
            ) {
                self.data = data
                self.links = links
                self.meta = meta
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
                case meta
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
                    case subscriptionOfferCodeCustomCodes
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

        public struct OneTimeUseCodes: Hashable, Codable {
            public var data: [Data]?

            public var links: Links?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: Links? = nil,
                meta: PagingInformation? = nil
            ) {
                self.data = data
                self.links = links
                self.meta = meta
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
                case meta
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
                    case subscriptionOfferCodeOneTimeUseCodes
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

        public struct Prices: Hashable, Codable {
            public var data: [Data]?

            public var links: Links?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: Links? = nil,
                meta: PagingInformation? = nil
            ) {
                self.data = data
                self.links = links
                self.meta = meta
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
                case meta
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
                    case subscriptionOfferCodePrices
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

        public struct Subscription: Hashable, Codable {
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
                    case subscriptions
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
