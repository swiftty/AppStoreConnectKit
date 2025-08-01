// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterChallengeImage: Hashable, Codable, Sendable {
    public var id: String

    public var type: `Type`

    public var attributes: Attributes?

    public var links: ResourceLinks?

    public init(
        id: String,
        type: `Type`,
        attributes: Attributes? = nil,
        links: ResourceLinks? = nil
    ) {
        self.id = id
        self.type = type
        self.attributes = attributes
        self.links = links
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case attributes
        case links
    }

    public enum `Type`: String, Hashable, Codable, Sendable {
        case gameCenterChallengeImages
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
}

// swiftlint:enable all
