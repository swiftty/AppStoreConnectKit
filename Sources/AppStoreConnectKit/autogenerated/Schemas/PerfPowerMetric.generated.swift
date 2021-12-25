// autogenerated

// swiftlint:disable all
import Foundation

public struct PerfPowerMetric: Hashable, Codable {
    public var id: String

    public var type: `Type`

    public var attributes: Attributes?

    public var links: ResourceLinks

    public init(
        id: String,
        type: `Type`,
        attributes: Attributes? = nil,
        links: ResourceLinks
    ) {
        self.id = id
        self.type = type
        self.attributes = attributes
        self.links = links
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case attributes
        case links
    }

    public enum `Type`: String, Hashable, Codable {
        case perfPowerMetrics
    }

    public struct Attributes: Hashable, Codable {
        public var deviceType: String?

        public var metricType: MetricType?

        public var platform: Platform?

        public init(
            deviceType: String? = nil,
            metricType: MetricType? = nil,
            platform: Platform? = nil
        ) {
            self.deviceType = deviceType
            self.metricType = metricType
            self.platform = platform
        }

        private enum CodingKeys: String, CodingKey {
            case deviceType
            case metricType
            case platform
        }

        public enum MetricType: Hashable, Codable, RawRepresentable {
            case animation
            case battery
            case disk
            case hang
            case launch
            case memory
            case termination
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .animation: return "ANIMATION"
                case .battery: return "BATTERY"
                case .disk: return "DISK"
                case .hang: return "HANG"
                case .launch: return "LAUNCH"
                case .memory: return "MEMORY"
                case .termination: return "TERMINATION"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "ANIMATION": self = .animation
                case "BATTERY": self = .battery
                case "DISK": self = .disk
                case "HANG": self = .hang
                case "LAUNCH": self = .launch
                case "MEMORY": self = .memory
                case "TERMINATION": self = .termination
                default: self = .unknown(rawValue)
                }
            }
        }

        public enum Platform: Hashable, Codable, RawRepresentable {
            case iOS
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .iOS: return "IOS"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "IOS": self = .iOS
                default: self = .unknown(rawValue)
                }
            }
        }
    }
}

// swiftlint:enable all
