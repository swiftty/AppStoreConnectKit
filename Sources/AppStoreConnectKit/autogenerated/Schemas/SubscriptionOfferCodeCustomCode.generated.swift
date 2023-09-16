// autogenerated

// swiftlint:disable all
import Foundation

public struct SubscriptionOfferCodeCustomCode: Hashable, Codable {
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
        case subscriptionOfferCodeCustomCodes
    }

    public struct Attributes: Hashable, Codable {
        public var active: Bool?

        public var createdDate: String?

        public var customCode: String?

        public var expirationDate: String?

        public var numberOfCodes: Int?

        public init(
            active: Bool? = nil,
            createdDate: String? = nil,
            customCode: String? = nil,
            expirationDate: String? = nil,
            numberOfCodes: Int? = nil
        ) {
            self.active = active
            self.createdDate = createdDate
            self.customCode = customCode
            self.expirationDate = expirationDate
            self.numberOfCodes = numberOfCodes
        }

        private enum CodingKeys: String, CodingKey {
            case active
            case createdDate
            case customCode
            case expirationDate
            case numberOfCodes
        }
    }

    public struct Relationships: Hashable, Codable {
        public var offerCode: OfferCode?

        public init(offerCode: OfferCode? = nil) {
            self.offerCode = offerCode
        }

        private enum CodingKeys: String, CodingKey {
            case offerCode
        }

        public struct OfferCode: Hashable, Codable {
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
    }
}

// swiftlint:enable all
