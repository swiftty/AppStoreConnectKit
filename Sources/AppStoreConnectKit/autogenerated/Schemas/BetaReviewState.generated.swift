// autogenerated

// swiftlint:disable all
import Foundation

public enum BetaReviewState: Hashable, Codable, RawRepresentable {
    case approved
    case inReview
    case rejected
    case waitingForReview
    case unknown(String)

    public var rawValue: String {
        switch self {
        case .approved: return "APPROVED"
        case .inReview: return "IN_REVIEW"
        case .rejected: return "REJECTED"
        case .waitingForReview: return "WAITING_FOR_REVIEW"
        case .unknown(let rawValue): return rawValue
        }
    }

    public init(rawValue: String) {
        switch rawValue {
        case "APPROVED": self = .approved
        case "IN_REVIEW": self = .inReview
        case "REJECTED": self = .rejected
        case "WAITING_FOR_REVIEW": self = .waitingForReview
        default: self = .unknown(rawValue)
        }
    }
}

// swiftlint:enable all
