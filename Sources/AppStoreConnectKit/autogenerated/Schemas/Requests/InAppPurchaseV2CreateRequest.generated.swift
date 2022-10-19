// autogenerated

// swiftlint:disable all
import Foundation

public struct InAppPurchaseV2CreateRequest: Hashable, Codable {
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
            case inAppPurchases
        }

        public struct Attributes: Hashable, Codable {
            public var availableInAllTerritories: Bool?

            public var familySharable: Bool?

            public var inAppPurchaseType: InAppPurchaseType

            public var name: String

            public var productId: String

            public var reviewNote: String?

            public init(
                availableInAllTerritories: Bool? = nil,
                familySharable: Bool? = nil,
                inAppPurchaseType: InAppPurchaseType,
                name: String,
                productId: String,
                reviewNote: String? = nil
            ) {
                self.availableInAllTerritories = availableInAllTerritories
                self.familySharable = familySharable
                self.inAppPurchaseType = inAppPurchaseType
                self.name = name
                self.productId = productId
                self.reviewNote = reviewNote
            }

            private enum CodingKeys: String, CodingKey {
                case availableInAllTerritories
                case familySharable
                case inAppPurchaseType
                case name
                case productId
                case reviewNote
            }
        }

        public struct Relationships: Hashable, Codable {
            public var app: App

            public init(app: App) {
                self.app = app
            }

            private enum CodingKeys: String, CodingKey {
                case app
            }

            public struct App: Hashable, Codable {
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
                        case apps
                    }
                }
            }
        }
    }
}

// swiftlint:enable all
