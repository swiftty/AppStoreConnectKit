// autogenerated

// swiftlint:disable all
import Foundation

public struct BuildWithoutIncludesResponse: Hashable, Codable {
    public var data: BuildBetaDetail

    public var links: DocumentLinks

    public init(
        data: BuildBetaDetail,
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