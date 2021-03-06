// autogenerated

// swiftlint:disable all
import Foundation

public struct AppMediaAssetState: Hashable, Codable {
    public var errors: [AppMediaStateError]?

    public var state: State?

    public var warnings: [AppMediaStateError]?

    public init(
        errors: [AppMediaStateError]? = nil,
        state: State? = nil,
        warnings: [AppMediaStateError]? = nil
    ) {
        self.errors = errors
        self.state = state
        self.warnings = warnings
    }

    private enum CodingKeys: String, CodingKey {
        case errors
        case state
        case warnings
    }

    public enum State: Hashable, Codable, RawRepresentable {
        case awaitingUpload
        case complete
        case failed
        case uploadComplete
        case unknown(String)

        public var rawValue: String {
            switch self {
            case .awaitingUpload: return "AWAITING_UPLOAD"
            case .complete: return "COMPLETE"
            case .failed: return "FAILED"
            case .uploadComplete: return "UPLOAD_COMPLETE"
            case .unknown(let rawValue): return rawValue
            }
        }

        public init(rawValue: String) {
            switch rawValue {
            case "AWAITING_UPLOAD": self = .awaitingUpload
            case "COMPLETE": self = .complete
            case "FAILED": self = .failed
            case "UPLOAD_COMPLETE": self = .uploadComplete
            default: self = .unknown(rawValue)
            }
        }
    }
}

// swiftlint:enable all
