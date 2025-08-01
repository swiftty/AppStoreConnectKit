// autogenerated

// swiftlint:disable all
import Foundation

public struct CiTagPatterns: Hashable, Codable, Sendable {
    public var isAllMatch: Bool?

    public var patterns: [Patterns]?

    public init(
        isAllMatch: Bool? = nil,
        patterns: [Patterns]? = nil
    ) {
        self.isAllMatch = isAllMatch
        self.patterns = patterns
    }

    private enum CodingKeys: String, CodingKey {
        case isAllMatch
        case patterns
    }

    public struct Patterns: Hashable, Codable, Sendable {
        public var isPrefix: Bool?

        public var pattern: String?

        public init(
            isPrefix: Bool? = nil,
            pattern: String? = nil
        ) {
            self.isPrefix = isPrefix
            self.pattern = pattern
        }

        private enum CodingKeys: String, CodingKey {
            case isPrefix
            case pattern
        }
    }
}

// swiftlint:enable all
