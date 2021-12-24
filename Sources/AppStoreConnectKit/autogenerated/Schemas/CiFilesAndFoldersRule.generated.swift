// autogenerated

// swiftlint:disable all
import Foundation

public struct CiFilesAndFoldersRule: Hashable, Codable {
    public var matchers: [CiStartConditionFileMatcher]?

    public var mode: Mode?

    public init(
        matchers: [CiStartConditionFileMatcher]? = nil,
        mode: Mode? = nil
    ) {
        self.matchers = matchers
        self.mode = mode
    }

    private enum CodingKeys: String, CodingKey {
        case matchers
        case mode
    }

    public enum Mode: Hashable, Codable, RawRepresentable {
        case doNotStartIfAllFilesMatch
        case startIfAnyFileMatches
        case unknown(String)

        public var rawValue: String {
            switch self {
            case .doNotStartIfAllFilesMatch: return "DO_NOT_START_IF_ALL_FILES_MATCH"
            case .startIfAnyFileMatches: return "START_IF_ANY_FILE_MATCHES"
            case .unknown(let rawValue): return rawValue
            }
        }

        public init(rawValue: String) {
            switch rawValue {
            case "DO_NOT_START_IF_ALL_FILES_MATCH": self = .doNotStartIfAllFilesMatch
            case "START_IF_ANY_FILE_MATCHES": self = .startIfAnyFileMatches
            default: self = .unknown(rawValue)
            }
        }
    }
}

// swiftlint:enable all
