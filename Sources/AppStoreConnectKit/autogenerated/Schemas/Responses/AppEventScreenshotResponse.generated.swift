// autogenerated

// swiftlint:disable all
import Foundation

public struct AppEventScreenshotResponse: Hashable, Codable {
    public var data: AppEventScreenshot

    public var included: [AppEventLocalization]?

    public var links: DocumentLinks

    public init(
        data: AppEventScreenshot,
        included: [AppEventLocalization]? = nil,
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
}

// swiftlint:enable all