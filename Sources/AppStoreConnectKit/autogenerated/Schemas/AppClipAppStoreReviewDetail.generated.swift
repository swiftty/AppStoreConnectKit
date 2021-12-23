// autogenerated

// swiftlint:disable all
import Foundation

public struct AppClipAppStoreReviewDetail: Hashable, Codable {
    public var id: String

    public var type: `Type`

    public var attributes: Attributes?

    public var relationships: Relationships?

    public var links: ResourceLinks

    public init(
        id: String,
        type: `Type`,
        attributes: Attributes? = nil,
        relationships: Relationships? = nil,
        links: ResourceLinks
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
        case appClipAppStoreReviewDetails
    }

    public struct Attributes: Hashable, Codable {
        public var invocationUrls: [URL]?

        public init(invocationUrls: [URL]? = nil) {
            self.invocationUrls = invocationUrls
        }

        private enum CodingKeys: String, CodingKey {
            case invocationUrls
        }
    }

    public struct Relationships: Hashable, Codable {
        public var appClipDefaultExperience: AppClipDefaultExperience?

        public init(appClipDefaultExperience: AppClipDefaultExperience? = nil) {
            self.appClipDefaultExperience = appClipDefaultExperience
        }

        private enum CodingKeys: String, CodingKey {
            case appClipDefaultExperience
        }

        public struct AppClipDefaultExperience: Hashable, Codable {
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
                    case appClipDefaultExperiences
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