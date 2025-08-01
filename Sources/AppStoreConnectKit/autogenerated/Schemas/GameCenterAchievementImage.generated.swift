// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterAchievementImage: Hashable, Codable, Sendable {
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
        case gameCenterAchievementImages
    }

    public struct Attributes: Hashable, Codable, Sendable {
        public var assetDeliveryState: AppMediaAssetState?

        public var fileName: String?

        public var fileSize: Int?

        public var imageAsset: ImageAsset?

        public var uploadOperations: [UploadOperation]?

        public init(
            assetDeliveryState: AppMediaAssetState? = nil,
            fileName: String? = nil,
            fileSize: Int? = nil,
            imageAsset: ImageAsset? = nil,
            uploadOperations: [UploadOperation]? = nil
        ) {
            self.assetDeliveryState = assetDeliveryState
            self.fileName = fileName
            self.fileSize = fileSize
            self.imageAsset = imageAsset
            self.uploadOperations = uploadOperations
        }

        private enum CodingKeys: String, CodingKey {
            case assetDeliveryState
            case fileName
            case fileSize
            case imageAsset
            case uploadOperations
        }
    }

    public struct Relationships: Hashable, Codable, Sendable {
        public var gameCenterAchievementLocalization: GameCenterAchievementLocalization?

        public init(gameCenterAchievementLocalization: GameCenterAchievementLocalization? = nil) {
            self.gameCenterAchievementLocalization = gameCenterAchievementLocalization
        }

        private enum CodingKeys: String, CodingKey {
            case gameCenterAchievementLocalization
        }

        public struct GameCenterAchievementLocalization: Hashable, Codable, Sendable {
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
                    case gameCenterAchievementLocalizations
                }
            }
        }
    }
}

// swiftlint:enable all
