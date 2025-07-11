// autogenerated

// swiftlint:disable all
import Foundation

public struct CustomerReviewResponseV1: Hashable, Codable, Sendable {
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
        case customerReviewResponses
    }

    public struct Attributes: Hashable, Codable, Sendable {
        public var lastModifiedDate: String?

        public var responseBody: String?

        public var state: State?

        public init(
            lastModifiedDate: String? = nil,
            responseBody: String? = nil,
            state: State? = nil
        ) {
            self.lastModifiedDate = lastModifiedDate
            self.responseBody = responseBody
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case lastModifiedDate
            case responseBody
            case state
        }

        public struct State: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
            public static var pendingPublish: Self {
                .init(rawValue: "PENDING_PUBLISH")
            }

            public static var published: Self {
                .init(rawValue: "PUBLISHED")
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
        public var review: Review?

        public init(review: Review? = nil) {
            self.review = review
        }

        private enum CodingKeys: String, CodingKey {
            case review
        }

        public struct Review: Hashable, Codable, Sendable {
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
                    case customerReviews
                }
            }
        }
    }
}

// swiftlint:enable all
