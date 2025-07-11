// autogenerated

// swiftlint:disable all
import Foundation

public struct AlternativeDistributionKeyResponse: Hashable, Codable, Sendable {
    public var data: AlternativeDistributionKey

    public var links: DocumentLinks

    public init(
        data: AlternativeDistributionKey,
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
