// autogenerated

// swiftlint:disable all
import Foundation

public struct AppClipAdvancedExperienceImage: Hashable, Codable, Sendable {
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
        case appClipAdvancedExperienceImages
    }

    public struct Attributes: Hashable, Codable, Sendable {
        public var assetDeliveryState: AppMediaAssetState?

        public var fileName: String?

        public var fileSize: Int?

        public var imageAsset: ImageAsset?

        public var sourceFileChecksum: String?

        public var uploadOperations: [UploadOperation]?

        public init(
            assetDeliveryState: AppMediaAssetState? = nil,
            fileName: String? = nil,
            fileSize: Int? = nil,
            imageAsset: ImageAsset? = nil,
            sourceFileChecksum: String? = nil,
            uploadOperations: [UploadOperation]? = nil
        ) {
            self.assetDeliveryState = assetDeliveryState
            self.fileName = fileName
            self.fileSize = fileSize
            self.imageAsset = imageAsset
            self.sourceFileChecksum = sourceFileChecksum
            self.uploadOperations = uploadOperations
        }

        private enum CodingKeys: String, CodingKey {
            case assetDeliveryState
            case fileName
            case fileSize
            case imageAsset
            case sourceFileChecksum
            case uploadOperations
        }
    }
}

// swiftlint:enable all
