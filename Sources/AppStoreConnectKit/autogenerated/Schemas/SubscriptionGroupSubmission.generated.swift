// autogenerated

// swiftlint:disable all
import Foundation

public struct SubscriptionGroupSubmission: Hashable, Codable {
    public var id: String

    public var type: `Type`

    public init(
        id: String,
        type: `Type`
    ) {
        self.id = id
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
    }

    public enum `Type`: String, Hashable, Codable {
        case subscriptionGroupSubmissions
    }
}

// swiftlint:enable all
