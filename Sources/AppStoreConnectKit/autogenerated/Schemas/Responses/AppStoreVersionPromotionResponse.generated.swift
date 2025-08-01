// autogenerated

// swiftlint:disable all
import Foundation

public struct AppStoreVersionPromotionResponse: Hashable, Codable, Sendable {
    public var data: AppStoreVersionPromotion

    public var links: DocumentLinks

    public init(
        data: AppStoreVersionPromotion,
        links: DocumentLinks
    ) {
        self.data = data
        self.links = links
    }

    private enum CodingKeys: String, CodingKey {
        case data
        case links
    }
}

// swiftlint:enable all
