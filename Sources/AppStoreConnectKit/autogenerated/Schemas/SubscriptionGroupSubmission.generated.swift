// autogenerated

// swiftlint:disable all
import Foundation

public struct SubscriptionGroupSubmission: Hashable, Codable {
    public var id: String

    public var type: `Type`

    public var links: ResourceLinks?

    public init(
        id: String,
        type: `Type`,
        links: ResourceLinks? = nil
    ) {
        self.id = id
        self.type = type
        self.links = links
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case links
    }

    public enum `Type`: String, Hashable, Codable {
        case subscriptionGroupSubmissions
    }
}

// swiftlint:enable all
