// autogenerated

// swiftlint:disable all
import Foundation

public struct SubscriptionOfferCodeOneTimeUseCodeResponse: Hashable, Codable, Sendable {
    public var data: SubscriptionOfferCodeOneTimeUseCode

    public var included: [SubscriptionOfferCode]?

    public var links: DocumentLinks

    public init(
        data: SubscriptionOfferCodeOneTimeUseCode,
        included: [SubscriptionOfferCode]? = nil,
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
