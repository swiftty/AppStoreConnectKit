// autogenerated

// swiftlint:disable all
import Foundation

public struct BetaAppReviewSubmissionsResponse: Hashable, Codable {
    public var data: [BetaAppReviewSubmission]

    public var included: [Build]?

    public var links: PagedDocumentLinks

    public var meta: PagingInformation?

    public init(
        data: [BetaAppReviewSubmission],
        included: [Build]? = nil,
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
