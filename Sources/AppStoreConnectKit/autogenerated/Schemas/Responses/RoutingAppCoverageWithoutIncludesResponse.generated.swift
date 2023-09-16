// autogenerated

// swiftlint:disable all
import Foundation

public struct RoutingAppCoverageWithoutIncludesResponse: Hashable, Codable {
    public var data: AppStoreVersion

    public var links: DocumentLinks

    public init(
        data: AppStoreVersion,
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
