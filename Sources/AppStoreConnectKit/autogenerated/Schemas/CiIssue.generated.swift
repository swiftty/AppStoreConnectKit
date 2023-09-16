// autogenerated

// swiftlint:disable all
import Foundation

public struct CiIssue: Hashable, Codable {
    public var id: String

    public var type: `Type`

    public var attributes: Attributes?

    public var links: ResourceLinks?

    public init(
        id: String,
        type: `Type`,
        attributes: Attributes? = nil,
        links: ResourceLinks? = nil
    ) {
        self.id = id
        self.type = type
        self.attributes = attributes
        self.links = links
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case attributes
        case links
    }

    public enum `Type`: String, Hashable, Codable {
        case ciIssues
    }

    public struct Attributes: Hashable, Codable {
        public var category: String?

        public var fileSource: FileLocation?

        public var issueType: IssueType?

        public var message: String?

        public init(
            category: String? = nil,
            fileSource: FileLocation? = nil,
            issueType: IssueType? = nil,
            message: String? = nil
        ) {
            self.category = category
            self.fileSource = fileSource
            self.issueType = issueType
            self.message = message
        }

        private enum CodingKeys: String, CodingKey {
            case category
            case fileSource
            case issueType
            case message
        }

        public enum IssueType: Hashable, Codable, RawRepresentable {
            case analyzerWarning
            case error
            case testFailure
            case warning
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .analyzerWarning: return "ANALYZER_WARNING"
                case .error: return "ERROR"
                case .testFailure: return "TEST_FAILURE"
                case .warning: return "WARNING"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "ANALYZER_WARNING": self = .analyzerWarning
                case "ERROR": self = .error
                case "TEST_FAILURE": self = .testFailure
                case "WARNING": self = .warning
                default: self = .unknown(rawValue)
                }
            }
        }
    }
}

// swiftlint:enable all
