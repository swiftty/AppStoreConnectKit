// autogenerated

// swiftlint:disable all
import Foundation

public struct AppPriceTierResponse: Hashable, Codable {
    public var data: AppPriceTier

    public var included: [AppPricePoint]?

    public var links: DocumentLinks

    public init(
        data: AppPriceTier,
        included: [AppPricePoint]? = nil,
        links: DocumentLinks
    ) {
        self.data = data
        self.included = included
        self.links = links
    }

    private enum CodingKeys: String, CodingKey {
        case data
        case included
        case links
    }
}

// swiftlint:enable all