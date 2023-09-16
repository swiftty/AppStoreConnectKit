// autogenerated

// swiftlint:disable all
import Foundation

public struct CustomerReview: Hashable, Codable {
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

    public enum `Type`: String, Hashable, Codable {
        case customerReviews
    }

    public struct Attributes: Hashable, Codable {
        public var body: String?

        public var createdDate: String?

        public var rating: Int?

        public var reviewerNickname: String?

        public var territory: TerritoryCode?

        public var title: String?

        public init(
            body: String? = nil,
            createdDate: String? = nil,
            rating: Int? = nil,
            reviewerNickname: String? = nil,
            territory: TerritoryCode? = nil,
            title: String? = nil
        ) {
            self.body = body
            self.createdDate = createdDate
            self.rating = rating
            self.reviewerNickname = reviewerNickname
            self.territory = territory
            self.title = title
        }

        private enum CodingKeys: String, CodingKey {
            case body
            case createdDate
            case rating
            case reviewerNickname
            case territory
            case title
        }
    }

    public struct Relationships: Hashable, Codable {
        public var response: Response?

        public init(response: Response? = nil) {
            self.response = response
        }

        private enum CodingKeys: String, CodingKey {
            case response
        }

        public struct Response: Hashable, Codable {
            public var data: Data?

            public var links: Links?

            public init(
                data: Data? = nil,
                links: Links? = nil
            ) {
                self.data = data
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
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
                    case customerReviewResponses
                }
            }

            public struct Links: Hashable, Codable {
                public var related: URL?

                public var `self`: URL?

                public init(
                    related: URL? = nil,
                    self _self: URL? = nil
                ) {
                    self.related = related
                    self.`self` = _self
                }

                private enum CodingKeys: String, CodingKey {
                    case related
                    case `self` = "self"
                }
            }
        }
    }
}

// swiftlint:enable all
