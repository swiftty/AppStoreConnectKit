// autogenerated

// swiftlint:disable all
import Foundation

public struct SubscriptionOfferCodeCustomCodeCreateRequest: Hashable, Codable {
    public var data: Data

    public init(data: Data) {
        self.data = data
    }

    private enum CodingKeys: String, CodingKey {
        case data
    }

    public struct Data: Hashable, Codable {
        public var type: `Type`

        public var attributes: Attributes

        public var relationships: Relationships

        public init(
            type: `Type`,
            attributes: Attributes,
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
            case subscriptionOfferCodeCustomCodes
        }

        public struct Attributes: Hashable, Codable {
            public var customCode: String

            public var expirationDate: String?

            public var numberOfCodes: Int

            public init(
                customCode: String,
                expirationDate: String? = nil,
                numberOfCodes: Int
            ) {
                self.customCode = customCode
                self.expirationDate = expirationDate
                self.numberOfCodes = numberOfCodes
            }

            private enum CodingKeys: String, CodingKey {
                case customCode
                case expirationDate
                case numberOfCodes
            }
        }

        public struct Relationships: Hashable, Codable {
            public var offerCode: OfferCode

            public init(offerCode: OfferCode) {
                self.offerCode = offerCode
            }

            private enum CodingKeys: String, CodingKey {
                case offerCode
            }

            public struct OfferCode: Hashable, Codable {
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
                        case subscriptionOfferCodes
                    }
                }
            }
        }
    }
}

// swiftlint:enable all
