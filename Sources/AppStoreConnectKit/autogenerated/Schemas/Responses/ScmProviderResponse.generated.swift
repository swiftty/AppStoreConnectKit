// autogenerated

// swiftlint:disable all
import Foundation

public struct ScmProviderResponse: Hashable, Codable {
    public var data: ScmProvider

    public var links: DocumentLinks

    public init(
        data: ScmProvider,
        links: DocumentLinks
    ) {
        self.data = data
        self.links = links
    }

    private enum CodingKeys: String, CodingKey {
        case data
        case links
    }
}

// swiftlint:enable all