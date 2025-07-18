// autogenerated

// swiftlint:disable all
import Foundation

public struct ReviewSubmissionResponse: Hashable, Codable, Sendable {
    public var data: ReviewSubmission

    public var included: [Included]?

    public var links: DocumentLinks

    public init(
        data: ReviewSubmission,
        included: [Included]? = nil,
        links: DocumentLinks
    ) {
        self.data = data
        self.included = included
        self.links = links
    }

    private enum CodingKeys: String, CodingKey {
        case data
        case included
        case links
    }

    public enum Included: Hashable, Codable, Sendable {
        case app(App)
        case reviewSubmissionItem(ReviewSubmissionItem)
        case appStoreVersion(AppStoreVersion)
        case actor(Actor)

        public init(from decoder: Decoder) throws {
            self = try {
                var lastError: Error!
                do {
                    return .app(try App(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .reviewSubmissionItem(try ReviewSubmissionItem(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .appStoreVersion(try AppStoreVersion(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .actor(try Actor(from: decoder))
                } catch {
                    lastError = error
                }
                throw lastError
            }()
        }

        public func encode(to encoder: Encoder) throws {
            switch self {
            case .app(let value):
                try value.encode(to: encoder)

            case .reviewSubmissionItem(let value):
                try value.encode(to: encoder)

            case .appStoreVersion(let value):
                try value.encode(to: encoder)

            case .actor(let value):
                try value.encode(to: encoder)
            }
        }
    }
}

// swiftlint:enable all
