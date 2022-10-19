// autogenerated

// swiftlint:disable all
import Foundation

public enum SubscriptionOfferMode: Hashable, Codable, RawRepresentable {
    case freeTrial
    case payAsYouGo
    case payUpFront
    case unknown(String)

    public var rawValue: String {
        switch self {
        case .freeTrial: return "FREE_TRIAL"
        case .payAsYouGo: return "PAY_AS_YOU_GO"
        case .payUpFront: return "PAY_UP_FRONT"
        case .unknown(let rawValue): return rawValue
        }
    }

    public init(rawValue: String) {
        switch rawValue {
        case "FREE_TRIAL": self = .freeTrial
        case "PAY_AS_YOU_GO": self = .payAsYouGo
        case "PAY_UP_FRONT": self = .payUpFront
        default: self = .unknown(rawValue)
        }
    }
}

// swiftlint:enable all