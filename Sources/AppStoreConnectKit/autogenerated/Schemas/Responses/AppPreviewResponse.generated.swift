// autogenerated

// swiftlint:disable all
import Foundation

public struct AppPreviewResponse: Hashable, Codable, Sendable {
    public var data: AppPreview

    public var included: [AppPreviewSet]?

    public var links: DocumentLinks

    public init(
        data: AppPreview,
        included: [AppPreviewSet]? = nil,
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
