// autogenerated

// swiftlint:disable all
import Foundation

public struct CustomerReviewSummarizationsResponse: Hashable, Codable, Sendable {
    public var data: [CustomerReviewSummarization]

    public var included: [Territory]?

    public var links: PagedDocumentLinks

    public var meta: PagingInformation?

    public init(
        data: [CustomerReviewSummarization],
        included: [Territory]? = nil,
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
