// autogenerated

// swiftlint:disable all
import Foundation

public struct InAppPurchaseLocalizationResponse: Hashable, Codable {
    public var data: InAppPurchaseLocalization

    public var included: [InAppPurchaseV2]?

    public var links: DocumentLinks

    public init(
        data: InAppPurchaseLocalization,
        included: [InAppPurchaseV2]? = nil,
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