// autogenerated

// swiftlint:disable all
import Foundation

public struct CiMacOsVersionsResponse: Hashable, Codable {
    public var data: [CiMacOsVersion]

    public var included: [CiXcodeVersion]?

    public var links: PagedDocumentLinks

    public var meta: PagingInformation?

    public init(
        data: [CiMacOsVersion],
        included: [CiXcodeVersion]? = nil,
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
}

// swiftlint:enable all