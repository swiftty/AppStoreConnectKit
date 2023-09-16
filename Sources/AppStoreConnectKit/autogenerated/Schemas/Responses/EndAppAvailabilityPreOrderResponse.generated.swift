// autogenerated

// swiftlint:disable all
import Foundation

public struct EndAppAvailabilityPreOrderResponse: Hashable, Codable {
    public var data: EndAppAvailabilityPreOrder

    public var links: DocumentLinks

    public init(
        data: EndAppAvailabilityPreOrder,
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
