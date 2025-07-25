// autogenerated

// swiftlint:disable all
import Foundation

public struct WebhookCreateRequest: Hashable, Codable, Sendable {
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
            case webhooks
        }

        public struct Attributes: Hashable, Codable, Sendable {
            public var enabled: Bool

            public var eventTypes: [WebhookEventType]

            public var name: String

            public var secret: String

            public var url: URL

            public init(
                enabled: Bool,
                eventTypes: [WebhookEventType],
                name: String,
                secret: String,
                url: URL
            ) {
                self.enabled = enabled
                self.eventTypes = eventTypes
                self.name = name
                self.secret = secret
                self.url = url
            }

            private enum CodingKeys: String, CodingKey {
                case enabled
                case eventTypes
                case name
                case secret
                case url
            }
        }

        public struct Relationships: Hashable, Codable, Sendable {
            public var app: App

            public init(app: App) {
                self.app = app
            }

            private enum CodingKeys: String, CodingKey {
                case app
            }

            public struct App: Hashable, Codable, Sendable {
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
                        case apps
                    }
                }
            }
        }
    }
}

// swiftlint:enable all
