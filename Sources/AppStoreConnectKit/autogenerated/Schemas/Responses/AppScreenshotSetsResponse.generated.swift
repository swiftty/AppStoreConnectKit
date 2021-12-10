// autogenerated

// swiftlint:disable all
import Foundation

public struct AppScreenshotSetsResponse: Hashable, Codable {
    public var data: [AppScreenshotSet]

    public var included: [Included]?

    public var links: PagedDocumentLinks

    public var meta: PagingInformation?

    public init(
        data: [AppScreenshotSet],
        included: [Included]? = nil,
        links: PagedDocumentLinks,
        meta: PagingInformation? = nil
    ) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    private enum CodingKeys: String, CodingKey {
        case data
        case included
        case links
        case meta
    }

    public enum Included: Hashable, Codable {
        case appStoreVersionLocalization(AppStoreVersionLocalization)
        case appScreenshot(AppScreenshot)

        public init(from decoder: Decoder) throws {
            self = try {
                var lastError: Error!
                do {
                    return .appStoreVersionLocalization(try AppStoreVersionLocalization(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .appScreenshot(try AppScreenshot(from: decoder))
                } catch {
                    lastError = error
                }
                throw lastError
            }()
        }

        public func encode(to encoder: Encoder) throws {
            switch self {
            case .appStoreVersionLocalization(let value):
                try value.encode(to: encoder)

            case .appScreenshot(let value):
                try value.encode(to: encoder)
            }
        }
    }
}

// swiftlint:enable all
