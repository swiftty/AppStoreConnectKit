// autogenerated

// swiftlint:disable all
import Foundation

public struct SubscriptionPricePoint: Hashable, Codable, Sendable {
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
        case subscriptionPricePoints
    }

    public struct Attributes: Hashable, Codable, Sendable {
        public var customerPrice: String?

        public var proceeds: String?

        public var proceedsYear2: String?

        public init(
            customerPrice: String? = nil,
            proceeds: String? = nil,
            proceedsYear2: String? = nil
        ) {
            self.customerPrice = customerPrice
            self.proceeds = proceeds
            self.proceedsYear2 = proceedsYear2
        }

        private enum CodingKeys: String, CodingKey {
            case customerPrice
            case proceeds
            case proceedsYear2
        }
    }

    public struct Relationships: Hashable, Codable, Sendable {
        public var equalizations: Equalizations?

        public var territory: Territory?

        public init(
            equalizations: Equalizations? = nil,
            territory: Territory? = nil
        ) {
            self.equalizations = equalizations
            self.territory = territory
        }

        private enum CodingKeys: String, CodingKey {
            case equalizations
            case territory
        }

        public struct Equalizations: Hashable, Codable, Sendable {
            public var links: RelationshipLinks?

            public init(links: RelationshipLinks? = nil) {
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case links
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
