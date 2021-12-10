// autogenerated

// swiftlint:disable all
import Foundation

public struct UserInvitationResponse: Hashable, Codable {
    public var data: UserInvitation

    public var included: [App]?

    public var links: DocumentLinks

    public init(
        data: UserInvitation,
        included: [App]? = nil,
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
