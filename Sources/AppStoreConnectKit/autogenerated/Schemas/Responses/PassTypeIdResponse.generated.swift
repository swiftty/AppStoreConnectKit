// autogenerated

// swiftlint:disable all
import Foundation

public struct PassTypeIdResponse: Hashable, Codable, Sendable {
    public var data: PassTypeId

    public var included: [Certificate]?

    public var links: DocumentLinks

    public init(
        data: PassTypeId,
        included: [Certificate]? = nil,
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
