// autogenerated

// swiftlint:disable all
import Foundation

public struct TerritoryAvailabilityResponse: Hashable, Codable, Sendable {
    public var data: TerritoryAvailability

    public var included: [Territory]?

    public var links: DocumentLinks

    public init(
        data: TerritoryAvailability,
        included: [Territory]? = nil,
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
