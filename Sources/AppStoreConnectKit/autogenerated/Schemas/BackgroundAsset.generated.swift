// autogenerated

// swiftlint:disable all
import Foundation

public struct BackgroundAsset: Hashable, Codable, Sendable {
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
        case backgroundAssets
    }

    public struct Attributes: Hashable, Codable, Sendable {
        public var assetPackIdentifier: String?

        public var createdDate: String?

        public init(
            assetPackIdentifier: String? = nil,
            createdDate: String? = nil
        ) {
            self.assetPackIdentifier = assetPackIdentifier
            self.createdDate = createdDate
        }

        private enum CodingKeys: String, CodingKey {
            case assetPackIdentifier
            case createdDate
        }
    }

    public struct Relationships: Hashable, Codable, Sendable {
        public var internalBetaVersion: InternalBetaVersion?

        public var versions: Versions?

        public init(
            internalBetaVersion: InternalBetaVersion? = nil,
            versions: Versions? = nil
        ) {
            self.internalBetaVersion = internalBetaVersion
            self.versions = versions
        }

        private enum CodingKeys: String, CodingKey {
            case internalBetaVersion
            case versions
        }

        public struct InternalBetaVersion: Hashable, Codable, Sendable {
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
                    case backgroundAssetVersions
                }
            }
        }

        public struct Versions: Hashable, Codable, Sendable {
            public var links: RelationshipLinks?

            public init(links: RelationshipLinks? = nil) {
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case links
            }
        }
    }
}

// swiftlint:enable all
