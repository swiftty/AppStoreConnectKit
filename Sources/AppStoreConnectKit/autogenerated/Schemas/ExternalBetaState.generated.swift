// autogenerated

// swiftlint:disable all
import Foundation

public enum ExternalBetaState: Hashable, Codable, RawRepresentable {
    case betaApproved
    case betaRejected
    case expired
    case inBetaReview
    case inBetaTesting
    case inExportComplianceReview
    case missingExportCompliance
    case processing
    case processingException
    case readyForBetaSubmission
    case readyForBetaTesting
    case waitingForBetaReview
    case unknown(String)

    public var rawValue: String {
        switch self {
        case .betaApproved: return "BETA_APPROVED"
        case .betaRejected: return "BETA_REJECTED"
        case .expired: return "EXPIRED"
        case .inBetaReview: return "IN_BETA_REVIEW"
        case .inBetaTesting: return "IN_BETA_TESTING"
        case .inExportComplianceReview: return "IN_EXPORT_COMPLIANCE_REVIEW"
        case .missingExportCompliance: return "MISSING_EXPORT_COMPLIANCE"
        case .processing: return "PROCESSING"
        case .processingException: return "PROCESSING_EXCEPTION"
        case .readyForBetaSubmission: return "READY_FOR_BETA_SUBMISSION"
        case .readyForBetaTesting: return "READY_FOR_BETA_TESTING"
        case .waitingForBetaReview: return "WAITING_FOR_BETA_REVIEW"
        case .unknown(let rawValue): return rawValue
        }
    }

    public init(rawValue: String) {
        switch rawValue {
        case "BETA_APPROVED": self = .betaApproved
        case "BETA_REJECTED": self = .betaRejected
        case "EXPIRED": self = .expired
        case "IN_BETA_REVIEW": self = .inBetaReview
        case "IN_BETA_TESTING": self = .inBetaTesting
        case "IN_EXPORT_COMPLIANCE_REVIEW": self = .inExportComplianceReview
        case "MISSING_EXPORT_COMPLIANCE": self = .missingExportCompliance
        case "PROCESSING": self = .processing
        case "PROCESSING_EXCEPTION": self = .processingException
        case "READY_FOR_BETA_SUBMISSION": self = .readyForBetaSubmission
        case "READY_FOR_BETA_TESTING": self = .readyForBetaTesting
        case "WAITING_FOR_BETA_REVIEW": self = .waitingForBetaReview
        default: self = .unknown(rawValue)
        }
    }
}

// swiftlint:enable all
