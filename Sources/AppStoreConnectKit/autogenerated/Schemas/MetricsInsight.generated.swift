// autogenerated

// swiftlint:disable all
import Foundation

public struct MetricsInsight: Hashable, Codable, Sendable {
    public var highImpact: Bool?

    public var latestVersion: String?

    public var maxLatestVersionValue: Float?

    public var metric: String?

    public var metricCategory: MetricCategory?

    public var populations: [Populations]?

    public var referenceVersions: String?

    public var subSystemLabel: String?

    public var summaryString: String?

    public init(
        highImpact: Bool? = nil,
        latestVersion: String? = nil,
        maxLatestVersionValue: Float? = nil,
        metric: String? = nil,
        metricCategory: MetricCategory? = nil,
        populations: [Populations]? = nil,
        referenceVersions: String? = nil,
        subSystemLabel: String? = nil,
        summaryString: String? = nil
    ) {
        self.highImpact = highImpact
        self.latestVersion = latestVersion
        self.maxLatestVersionValue = maxLatestVersionValue
        self.metric = metric
        self.metricCategory = metricCategory
        self.populations = populations
        self.referenceVersions = referenceVersions
        self.subSystemLabel = subSystemLabel
        self.summaryString = summaryString
    }

    private enum CodingKeys: String, CodingKey {
        case highImpact
        case latestVersion
        case maxLatestVersionValue
        case metric
        case metricCategory
        case populations
        case referenceVersions
        case subSystemLabel
        case summaryString
    }

    public struct Populations: Hashable, Codable, Sendable {
        public var deltaPercentage: Float?

        public var device: String?

        public var latestVersionValue: Float?

        public var percentile: String?

        public var referenceAverageValue: Float?

        public var summaryString: String?

        public init(
            deltaPercentage: Float? = nil,
            device: String? = nil,
            latestVersionValue: Float? = nil,
            percentile: String? = nil,
            referenceAverageValue: Float? = nil,
            summaryString: String? = nil
        ) {
            self.deltaPercentage = deltaPercentage
            self.device = device
            self.latestVersionValue = latestVersionValue
            self.percentile = percentile
            self.referenceAverageValue = referenceAverageValue
            self.summaryString = summaryString
        }

        private enum CodingKeys: String, CodingKey {
            case deltaPercentage
            case device
            case latestVersionValue
            case percentile
            case referenceAverageValue
            case summaryString
        }
    }
}

// swiftlint:enable all
