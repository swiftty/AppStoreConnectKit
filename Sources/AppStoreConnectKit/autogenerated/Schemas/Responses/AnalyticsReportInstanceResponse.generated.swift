// autogenerated

// swiftlint:disable all
import Foundation

public struct AnalyticsReportInstanceResponse: Hashable, Codable, Sendable {
    public var data: AnalyticsReportInstance

    public var links: DocumentLinks

    public init(
        data: AnalyticsReportInstance,
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
