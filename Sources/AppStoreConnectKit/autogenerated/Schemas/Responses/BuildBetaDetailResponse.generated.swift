// autogenerated

// swiftlint:disable all
import Foundation

public struct BuildBetaDetailResponse: Hashable, Codable {
    public var data: BuildBetaDetail

    public var included: [Build]?

    public var links: DocumentLinks

    public init(
        data: BuildBetaDetail,
        included: [Build]? = nil,
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