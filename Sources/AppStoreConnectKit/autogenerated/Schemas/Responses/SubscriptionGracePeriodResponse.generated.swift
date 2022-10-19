// autogenerated

// swiftlint:disable all
import Foundation

public struct SubscriptionGracePeriodResponse: Hashable, Codable {
    public var data: SubscriptionGracePeriod

    public var links: DocumentLinks

    public init(
        data: SubscriptionGracePeriod,
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
