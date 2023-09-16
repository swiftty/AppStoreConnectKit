// autogenerated

// swiftlint:disable all
import Foundation

public struct AppStoreReviewAttachment: Hashable, Codable {
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
        case appStoreReviewAttachments
    }

    public struct Attributes: Hashable, Codable {
        public var assetDeliveryState: AppMediaAssetState?

        public var fileName: String?

        public var fileSize: Int?

        public var sourceFileChecksum: String?

        public var uploadOperations: [UploadOperation]?

        public init(
            assetDeliveryState: AppMediaAssetState? = nil,
            fileName: String? = nil,
            fileSize: Int? = nil,
            sourceFileChecksum: String? = nil,
            uploadOperations: [UploadOperation]? = nil
        ) {
            self.assetDeliveryState = assetDeliveryState
            self.fileName = fileName
            self.fileSize = fileSize
            self.sourceFileChecksum = sourceFileChecksum
            self.uploadOperations = uploadOperations
        }

        private enum CodingKeys: String, CodingKey {
            case assetDeliveryState
            case fileName
            case fileSize
            case sourceFileChecksum
            case uploadOperations
        }
    }

    public struct Relationships: Hashable, Codable {
        public var appStoreReviewDetail: AppStoreReviewDetail?

        public init(appStoreReviewDetail: AppStoreReviewDetail? = nil) {
            self.appStoreReviewDetail = appStoreReviewDetail
        }

        private enum CodingKeys: String, CodingKey {
            case appStoreReviewDetail
        }

        public struct AppStoreReviewDetail: Hashable, Codable {
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
                    case appStoreReviewDetails
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
