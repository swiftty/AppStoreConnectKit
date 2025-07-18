// autogenerated

// swiftlint:disable all
import Foundation

public struct AlternativeDistributionKeyCreateRequest: Hashable, Codable, Sendable {
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

        public var relationships: Relationships?

        public init(
            type: `Type`,
            attributes: Attributes,
            relationships: Relationships? = nil
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
            case alternativeDistributionKeys
        }

        public struct Attributes: Hashable, Codable, Sendable {
            public var publicKey: String

            public init(publicKey: String) {
                self.publicKey = publicKey
            }

            private enum CodingKeys: String, CodingKey {
                case publicKey
            }
        }

        public struct Relationships: Hashable, Codable, Sendable {
            public var app: App?

            public init(app: App? = nil) {
                self.app = app
            }

            private enum CodingKeys: String, CodingKey {
                case app
            }

            public struct App: Hashable, Codable, Sendable {
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
                        case apps
                    }
                }
            }
        }
    }
}

// swiftlint:enable all
