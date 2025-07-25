// autogenerated

// swiftlint:disable all
import Foundation

public struct MarketplaceSearchDetailResponse: Hashable, Codable, Sendable {
    public var data: MarketplaceSearchDetail

    public var links: DocumentLinks

    public init(
        data: MarketplaceSearchDetail,
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
