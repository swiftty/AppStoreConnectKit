// autogenerated

// swiftlint:disable all
import Foundation

public struct AppMediaAssetState: Hashable, Codable, Sendable {
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

    public struct State: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
        public static var awaitingUpload: Self {
            .init(rawValue: "AWAITING_UPLOAD")
        }

        public static var complete: Self {
            .init(rawValue: "COMPLETE")
        }

        public static var failed: Self {
            .init(rawValue: "FAILED")
        }

        public static var uploadComplete: Self {
            .init(rawValue: "UPLOAD_COMPLETE")
        }

        public var description: String {
            rawValue
        }

        public var rawValue: String

        public init(rawValue: String) {
            self.rawValue = rawValue
        }
    }
}

// swiftlint:enable all
