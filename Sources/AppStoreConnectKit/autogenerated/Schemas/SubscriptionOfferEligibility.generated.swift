// autogenerated

// swiftlint:disable all
import Foundation

public struct SubscriptionOfferEligibility: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
    public static var replaceIntroOffers: Self {
        .init(rawValue: "REPLACE_INTRO_OFFERS")
    }

    public static var stackWithIntroOffers: Self {
        .init(rawValue: "STACK_WITH_INTRO_OFFERS")
    }

    public var description: String {
        rawValue
    }

    public var rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }
}

// swiftlint:enable all
