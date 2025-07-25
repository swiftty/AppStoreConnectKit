// autogenerated

// swiftlint:disable all
import Foundation

public struct WebhookUpdateRequest: Hashable, Codable, Sendable {
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

        public var attributes: Attributes?

        public init(
            id: String,
            type: `Type`,
            attributes: Attributes? = nil
        ) {
            self.id = id
            self.type = type
            self.attributes = attributes
        }

        private enum CodingKeys: String, CodingKey {
            case id
            case type
            case attributes
        }

        public enum `Type`: String, Hashable, Codable, Sendable {
            case webhooks
        }

        public struct Attributes: Hashable, Codable, Sendable {
            public var enabled: Bool?

            public var eventTypes: [WebhookEventType]?

            public var name: String?

            public var secret: String?

            public var url: URL?

            public init(
                enabled: Bool? = nil,
                eventTypes: [WebhookEventType]? = nil,
                name: String? = nil,
                secret: String? = nil,
                url: URL? = nil
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
    }
}

// swiftlint:enable all
