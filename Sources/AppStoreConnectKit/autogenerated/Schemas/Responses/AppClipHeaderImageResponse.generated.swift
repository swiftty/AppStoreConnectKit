// autogenerated

// swiftlint:disable all
import Foundation

public struct AppClipHeaderImageResponse: Hashable, Codable {
    public var data: AppClipHeaderImage

    public var included: [AppClipDefaultExperienceLocalization]?

    public var links: DocumentLinks

    public init(
        data: AppClipHeaderImage,
        included: [AppClipDefaultExperienceLocalization]? = nil,
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