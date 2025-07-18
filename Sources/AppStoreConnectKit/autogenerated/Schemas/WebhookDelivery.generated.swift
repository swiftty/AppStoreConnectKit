// autogenerated

// swiftlint:disable all
import Foundation

public struct WebhookDelivery: Hashable, Codable, Sendable {
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
        case webhookDeliveries
    }

    public struct Attributes: Hashable, Codable, Sendable {
        public var createdDate: String?

        public var deliveryState: DeliveryState?

        public var errorMessage: String?

        public var redelivery: Bool?

        public var request: Request?

        public var response: Response?

        public var sentDate: String?

        public init(
            createdDate: String? = nil,
            deliveryState: DeliveryState? = nil,
            errorMessage: String? = nil,
            redelivery: Bool? = nil,
            request: Request? = nil,
            response: Response? = nil,
            sentDate: String? = nil
        ) {
            self.createdDate = createdDate
            self.deliveryState = deliveryState
            self.errorMessage = errorMessage
            self.redelivery = redelivery
            self.request = request
            self.response = response
            self.sentDate = sentDate
        }

        private enum CodingKeys: String, CodingKey {
            case createdDate
            case deliveryState
            case errorMessage
            case redelivery
            case request
            case response
            case sentDate
        }

        public struct DeliveryState: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
            public static var failed: Self {
                .init(rawValue: "FAILED")
            }

            public static var pending: Self {
                .init(rawValue: "PENDING")
            }

            public static var succeeded: Self {
                .init(rawValue: "SUCCEEDED")
            }

            public var description: String {
                rawValue
            }

            public var rawValue: String

            public init(rawValue: String) {
                self.rawValue = rawValue
            }
        }

        public struct Request: Hashable, Codable, Sendable {
            public var url: URL?

            public init(url: URL? = nil) {
                self.url = url
            }

            private enum CodingKeys: String, CodingKey {
                case url
            }
        }

        public struct Response: Hashable, Codable, Sendable {
            public var body: String?

            public var httpStatusCode: Int?

            public init(
                body: String? = nil,
                httpStatusCode: Int? = nil
            ) {
                self.body = body
                self.httpStatusCode = httpStatusCode
            }

            private enum CodingKeys: String, CodingKey {
                case body
                case httpStatusCode
            }
        }
    }

    public struct Relationships: Hashable, Codable, Sendable {
        public var event: Event?

        public init(event: Event? = nil) {
            self.event = event
        }

        private enum CodingKeys: String, CodingKey {
            case event
        }

        public struct Event: Hashable, Codable, Sendable {
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
                    case webhookEvents
                }
            }
        }
    }
}

// swiftlint:enable all
