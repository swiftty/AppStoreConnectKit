// autogenerated

// swiftlint:disable all
import Foundation

public struct SubscriptionSubmissionResponse: Hashable, Codable, Sendable {
    public var data: SubscriptionSubmission

    public var included: [Subscription]?

    public var links: DocumentLinks

    public init(
        data: SubscriptionSubmission,
        included: [Subscription]? = nil,
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
