// autogenerated

// swiftlint:disable all
import Foundation

public enum SubscriptionOfferEligibility: Hashable, Codable, RawRepresentable {
    case replaceIntroOffers
    case stackWithIntroOffers
    case unknown(String)

    public var rawValue: String {
        switch self {
        case .replaceIntroOffers: return "REPLACE_INTRO_OFFERS"
        case .stackWithIntroOffers: return "STACK_WITH_INTRO_OFFERS"
        case .unknown(let rawValue): return rawValue
        }
    }

    public init(rawValue: String) {
        switch rawValue {
        case "REPLACE_INTRO_OFFERS": self = .replaceIntroOffers
        case "STACK_WITH_INTRO_OFFERS": self = .stackWithIntroOffers
        default: self = .unknown(rawValue)
        }
    }
}

// swiftlint:enable all
