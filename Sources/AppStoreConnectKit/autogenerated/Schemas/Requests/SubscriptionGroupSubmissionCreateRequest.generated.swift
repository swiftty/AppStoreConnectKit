// autogenerated

// swiftlint:disable all
import Foundation

public struct SubscriptionGroupSubmissionCreateRequest: Hashable, Codable {
    public var data: Data

    public init(data: Data) {
        self.data = data
    }

    private enum CodingKeys: String, CodingKey {
        case data
    }

    public struct Data: Hashable, Codable {
        public var type: `Type`

        public var relationships: Relationships

        public init(
            type: `Type`,
            relationships: Relationships
        ) {
            self.type = type
            self.relationships = relationships
        }

        private enum CodingKeys: String, CodingKey {
            case type
            case relationships
        }

        public enum `Type`: String, Hashable, Codable {
            case subscriptionGroupSubmissions
        }

        public struct Relationships: Hashable, Codable {
            public var subscriptionGroup: SubscriptionGroup

            public init(subscriptionGroup: SubscriptionGroup) {
                self.subscriptionGroup = subscriptionGroup
            }

            private enum CodingKeys: String, CodingKey {
                case subscriptionGroup
            }

            public struct SubscriptionGroup: Hashable, Codable {
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
                        case subscriptionGroups
                    }
                }
            }
        }
    }
}

// swiftlint:enable all