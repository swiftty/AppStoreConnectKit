// autogenerated

// swiftlint:disable all
import Foundation

public struct BuildsWithoutIncludesResponse: Hashable, Codable {
    public var data: [PrereleaseVersion]

    public var links: PagedDocumentLinks

    public var meta: PagingInformation?

    public init(
        data: [PrereleaseVersion],
        links: PagedDocumentLinks,
        meta: PagingInformation? = nil
    ) {
        self.data = data
        self.links = links
        self.meta = meta
    }

    private enum CodingKeys: String, CodingKey {
        case data
        case links
        case meta
    }
}

// swiftlint:enable all