// autogenerated

// swiftlint:disable all
import Foundation

public struct SubscriptionCreateRequest: Hashable, Codable, Sendable {
    public var data: Data

    public init(data: Data) {
        self.data = data
    }

    private enum CodingKeys: String, CodingKey {
        case data
    }

    public struct Data: Hashable, Codable, Sendable {
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

        public enum `Type`: String, Hashable, Codable, Sendable {
            case subscriptions
        }

        public struct Attributes: Hashable, Codable, Sendable {
            public var familySharable: Bool?

            public var groupLevel: Int?

            public var name: String

            public var productId: String

            public var reviewNote: String?

            public var subscriptionPeriod: SubscriptionPeriod?

            public init(
                familySharable: Bool? = nil,
                groupLevel: Int? = nil,
                name: String,
                productId: String,
                reviewNote: String? = nil,
                subscriptionPeriod: SubscriptionPeriod? = nil
            ) {
                self.familySharable = familySharable
                self.groupLevel = groupLevel
                self.name = name
                self.productId = productId
                self.reviewNote = reviewNote
                self.subscriptionPeriod = subscriptionPeriod
            }

            private enum CodingKeys: String, CodingKey {
                case familySharable
                case groupLevel
                case name
                case productId
                case reviewNote
                case subscriptionPeriod
            }

            public struct SubscriptionPeriod: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var oneMonth: Self {
                    .init(rawValue: "ONE_MONTH")
                }

                public static var oneWeek: Self {
                    .init(rawValue: "ONE_WEEK")
                }

                public static var oneYear: Self {
                    .init(rawValue: "ONE_YEAR")
                }

                public static var sixMonths: Self {
                    .init(rawValue: "SIX_MONTHS")
                }

                public static var threeMonths: Self {
                    .init(rawValue: "THREE_MONTHS")
                }

                public static var twoMonths: Self {
                    .init(rawValue: "TWO_MONTHS")
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
            public var group: Group

            public init(group: Group) {
                self.group = group
            }

            private enum CodingKeys: String, CodingKey {
                case group
            }

            public struct Group: Hashable, Codable, Sendable {
                public var data: Data

                public init(data: Data) {
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
                        case subscriptionGroups
                    }
                }
            }
        }
    }
}

// swiftlint:enable all
