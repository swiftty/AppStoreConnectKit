// autogenerated

// swiftlint:disable all
import Foundation

public struct SubscriptionAppStoreReviewScreenshot: Hashable, Codable {
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
        case subscriptionAppStoreReviewScreenshots
    }

    public struct Attributes: Hashable, Codable {
        public var assetDeliveryState: AppMediaAssetState?

        public var assetToken: String?

        public var assetType: String?

        public var fileName: String?

        public var fileSize: Int?

        public var imageAsset: ImageAsset?

        public var sourceFileChecksum: String?

        public var uploadOperations: [UploadOperation]?

        public init(
            assetDeliveryState: AppMediaAssetState? = nil,
            assetToken: String? = nil,
            assetType: String? = nil,
            fileName: String? = nil,
            fileSize: Int? = nil,
            imageAsset: ImageAsset? = nil,
            sourceFileChecksum: String? = nil,
            uploadOperations: [UploadOperation]? = nil
        ) {
            self.assetDeliveryState = assetDeliveryState
            self.assetToken = assetToken
            self.assetType = assetType
            self.fileName = fileName
            self.fileSize = fileSize
            self.imageAsset = imageAsset
            self.sourceFileChecksum = sourceFileChecksum
            self.uploadOperations = uploadOperations
        }

        private enum CodingKeys: String, CodingKey {
            case assetDeliveryState
            case assetToken
            case assetType
            case fileName
            case fileSize
            case imageAsset
            case sourceFileChecksum
            case uploadOperations
        }
    }

    public struct Relationships: Hashable, Codable {
        public var subscription: Subscription?

        public init(subscription: Subscription? = nil) {
            self.subscription = subscription
        }

        private enum CodingKeys: String, CodingKey {
            case subscription
        }

        public struct Subscription: Hashable, Codable {
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
                    case subscriptions
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
