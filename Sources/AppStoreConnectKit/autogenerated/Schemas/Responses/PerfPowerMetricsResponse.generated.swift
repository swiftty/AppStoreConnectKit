// autogenerated

// swiftlint:disable all
import Foundation

public struct PerfPowerMetricsResponse: Hashable, Codable {
    public var data: [PerfPowerMetric]

    public var links: PagedDocumentLinks

    public var meta: PagingInformation?

    public init(
        data: [PerfPowerMetric],
        links: PagedDocumentLinks,
        meta: PagingInformation? = nil
    ) {
        self.data = data
        self.links = links
        self.meta = meta
    }

    private enum CodingKeys: String, CodingKey {
        case data
        case links
        case meta
    }
}

// swiftlint:enable all
