// autogenerated

// swiftlint:disable all
import Foundation

public struct AlternativeDistributionDomainResponse: Hashable, Codable, Sendable {
    public var data: AlternativeDistributionDomain

    public var links: DocumentLinks

    public init(
        data: AlternativeDistributionDomain,
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
