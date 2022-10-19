// autogenerated

// swiftlint:disable all
import Foundation

public struct Subscription: Hashable, Codable {
    public var id: String

    public var type: `Type`

    public var attributes: Attributes?

    public var relationships: Relationships?

    public var links: ResourceLinks

    public init(
        id: String,
        type: `Type`,
        attributes: Attributes? = nil,
        relationships: Relationships? = nil,
        links: ResourceLinks
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
        case subscriptions
    }

    public struct Attributes: Hashable, Codable {
        public var availableInAllTerritories: Bool?

        public var familySharable: Bool?

        public var groupLevel: Int?

        public var name: String?

        public var productId: String?

        public var reviewNote: String?

        public var state: State?

        public var subscriptionPeriod: SubscriptionPeriod?

        public init(
            availableInAllTerritories: Bool? = nil,
            familySharable: Bool? = nil,
            groupLevel: Int? = nil,
            name: String? = nil,
            productId: String? = nil,
            reviewNote: String? = nil,
            state: State? = nil,
            subscriptionPeriod: SubscriptionPeriod? = nil
        ) {
            self.availableInAllTerritories = availableInAllTerritories
            self.familySharable = familySharable
            self.groupLevel = groupLevel
            self.name = name
            self.productId = productId
            self.reviewNote = reviewNote
            self.state = state
            self.subscriptionPeriod = subscriptionPeriod
        }

        private enum CodingKeys: String, CodingKey {
            case availableInAllTerritories
            case familySharable
            case groupLevel
            case name
            case productId
            case reviewNote
            case state
            case subscriptionPeriod
        }

        public enum State: Hashable, Codable, RawRepresentable {
            case approved
            case developerActionNeeded
            case developerRemovedFromSale
            case inReview
            case missingMetadata
            case pendingBinaryApproval
            case readyToSubmit
            case rejected
            case removedFromSale
            case waitingForReview
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .approved: return "APPROVED"
                case .developerActionNeeded: return "DEVELOPER_ACTION_NEEDED"
                case .developerRemovedFromSale: return "DEVELOPER_REMOVED_FROM_SALE"
                case .inReview: return "IN_REVIEW"
                case .missingMetadata: return "MISSING_METADATA"
                case .pendingBinaryApproval: return "PENDING_BINARY_APPROVAL"
                case .readyToSubmit: return "READY_TO_SUBMIT"
                case .rejected: return "REJECTED"
                case .removedFromSale: return "REMOVED_FROM_SALE"
                case .waitingForReview: return "WAITING_FOR_REVIEW"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "APPROVED": self = .approved
                case "DEVELOPER_ACTION_NEEDED": self = .developerActionNeeded
                case "DEVELOPER_REMOVED_FROM_SALE": self = .developerRemovedFromSale
                case "IN_REVIEW": self = .inReview
                case "MISSING_METADATA": self = .missingMetadata
                case "PENDING_BINARY_APPROVAL": self = .pendingBinaryApproval
                case "READY_TO_SUBMIT": self = .readyToSubmit
                case "REJECTED": self = .rejected
                case "REMOVED_FROM_SALE": self = .removedFromSale
                case "WAITING_FOR_REVIEW": self = .waitingForReview
                default: self = .unknown(rawValue)
                }
            }
        }

        public enum SubscriptionPeriod: Hashable, Codable, RawRepresentable {
            case oneMonth
            case oneWeek
            case oneYear
            case sixMonths
            case threeMonths
            case twoMonths
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .oneMonth: return "ONE_MONTH"
                case .oneWeek: return "ONE_WEEK"
                case .oneYear: return "ONE_YEAR"
                case .sixMonths: return "SIX_MONTHS"
                case .threeMonths: return "THREE_MONTHS"
                case .twoMonths: return "TWO_MONTHS"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "ONE_MONTH": self = .oneMonth
                case "ONE_WEEK": self = .oneWeek
                case "ONE_YEAR": self = .oneYear
                case "SIX_MONTHS": self = .sixMonths
                case "THREE_MONTHS": self = .threeMonths
                case "TWO_MONTHS": self = .twoMonths
                default: self = .unknown(rawValue)
                }
            }
        }
    }

    public struct Relationships: Hashable, Codable {
        public var appStoreReviewScreenshot: AppStoreReviewScreenshot?

        public var group: Group?

        public var introductoryOffers: IntroductoryOffers?

        public var offerCodes: OfferCodes?

        public var prices: Prices?

        public var promotedPurchase: PromotedPurchase?

        public var promotionalOffers: PromotionalOffers?

        public var subscriptionLocalizations: SubscriptionLocalizations?

        public init(
            appStoreReviewScreenshot: AppStoreReviewScreenshot? = nil,
            group: Group? = nil,
            introductoryOffers: IntroductoryOffers? = nil,
            offerCodes: OfferCodes? = nil,
            prices: Prices? = nil,
            promotedPurchase: PromotedPurchase? = nil,
            promotionalOffers: PromotionalOffers? = nil,
            subscriptionLocalizations: SubscriptionLocalizations? = nil
        ) {
            self.appStoreReviewScreenshot = appStoreReviewScreenshot
            self.group = group
            self.introductoryOffers = introductoryOffers
            self.offerCodes = offerCodes
            self.prices = prices
            self.promotedPurchase = promotedPurchase
            self.promotionalOffers = promotionalOffers
            self.subscriptionLocalizations = subscriptionLocalizations
        }

        private enum CodingKeys: String, CodingKey {
            case appStoreReviewScreenshot
            case group
            case introductoryOffers
            case offerCodes
            case prices
            case promotedPurchase
            case promotionalOffers
            case subscriptionLocalizations
        }

        public struct AppStoreReviewScreenshot: Hashable, Codable {
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
                    case subscriptionAppStoreReviewScreenshots
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

        public struct Group: Hashable, Codable {
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
                    case subscriptionGroups
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

        public struct IntroductoryOffers: Hashable, Codable {
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
                    case subscriptionIntroductoryOffers
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

        public struct OfferCodes: Hashable, Codable {
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
                    case subscriptionOfferCodes
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
                    case subscriptionPrices
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

        public struct PromotedPurchase: Hashable, Codable {
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
                    case promotedPurchases
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

        public struct PromotionalOffers: Hashable, Codable {
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
                    case subscriptionPromotionalOffers
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

        public struct SubscriptionLocalizations: Hashable, Codable {
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
                    case subscriptionLocalizations
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
