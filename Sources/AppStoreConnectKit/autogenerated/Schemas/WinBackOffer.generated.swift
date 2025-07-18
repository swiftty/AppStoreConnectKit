// autogenerated

// swiftlint:disable all
import Foundation

public struct WinBackOffer: Hashable, Codable, Sendable {
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
        case winBackOffers
    }

    public struct Attributes: Hashable, Codable, Sendable {
        public var customerEligibilityPaidSubscriptionDurationInMonths: Int?

        public var customerEligibilityTimeSinceLastSubscribedInMonths: IntegerRange?

        public var customerEligibilityWaitBetweenOffersInMonths: Int?

        public var duration: SubscriptionOfferDuration?

        public var endDate: String?

        public var offerId: String?

        public var offerMode: SubscriptionOfferMode?

        public var periodCount: Int?

        public var priority: Priority?

        public var promotionIntent: PromotionIntent?

        public var referenceName: String?

        public var startDate: String?

        public init(
            customerEligibilityPaidSubscriptionDurationInMonths: Int? = nil,
            customerEligibilityTimeSinceLastSubscribedInMonths: IntegerRange? = nil,
            customerEligibilityWaitBetweenOffersInMonths: Int? = nil,
            duration: SubscriptionOfferDuration? = nil,
            endDate: String? = nil,
            offerId: String? = nil,
            offerMode: SubscriptionOfferMode? = nil,
            periodCount: Int? = nil,
            priority: Priority? = nil,
            promotionIntent: PromotionIntent? = nil,
            referenceName: String? = nil,
            startDate: String? = nil
        ) {
            self.customerEligibilityPaidSubscriptionDurationInMonths = customerEligibilityPaidSubscriptionDurationInMonths
            self.customerEligibilityTimeSinceLastSubscribedInMonths = customerEligibilityTimeSinceLastSubscribedInMonths
            self.customerEligibilityWaitBetweenOffersInMonths = customerEligibilityWaitBetweenOffersInMonths
            self.duration = duration
            self.endDate = endDate
            self.offerId = offerId
            self.offerMode = offerMode
            self.periodCount = periodCount
            self.priority = priority
            self.promotionIntent = promotionIntent
            self.referenceName = referenceName
            self.startDate = startDate
        }

        private enum CodingKeys: String, CodingKey {
            case customerEligibilityPaidSubscriptionDurationInMonths
            case customerEligibilityTimeSinceLastSubscribedInMonths
            case customerEligibilityWaitBetweenOffersInMonths
            case duration
            case endDate
            case offerId
            case offerMode
            case periodCount
            case priority
            case promotionIntent
            case referenceName
            case startDate
        }

        public struct Priority: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
            public static var high: Self {
                .init(rawValue: "HIGH")
            }

            public static var normal: Self {
                .init(rawValue: "NORMAL")
            }

            public var description: String {
                rawValue
            }

            public var rawValue: String

            public init(rawValue: String) {
                self.rawValue = rawValue
            }
        }

        public struct PromotionIntent: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
            public static var notPromoted: Self {
                .init(rawValue: "NOT_PROMOTED")
            }

            public static var useAutoGeneratedAssets: Self {
                .init(rawValue: "USE_AUTO_GENERATED_ASSETS")
            }

            public var description: String {
                rawValue
            }

            public var rawValue: String

            public init(rawValue: String) {
                self.rawValue = rawValue
            }
        }
    }

    public struct Relationships: Hashable, Codable, Sendable {
        public var prices: Prices?

        public init(prices: Prices? = nil) {
            self.prices = prices
        }

        private enum CodingKeys: String, CodingKey {
            case prices
        }

        public struct Prices: Hashable, Codable, Sendable {
            public var data: [Data]?

            public var links: RelationshipLinks?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: RelationshipLinks? = nil,
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
                    case winBackOfferPrices
                }
            }
        }
    }
}

// swiftlint:enable all
