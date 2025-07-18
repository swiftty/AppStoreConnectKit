// autogenerated

// swiftlint:disable all
import Foundation

public struct UserInvitationsResponse: Hashable, Codable, Sendable {
    public var data: [UserInvitation]

    public var included: [App]?

    public var links: PagedDocumentLinks

    public var meta: PagingInformation?

    public init(
        data: [UserInvitation],
        included: [App]? = nil,
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
