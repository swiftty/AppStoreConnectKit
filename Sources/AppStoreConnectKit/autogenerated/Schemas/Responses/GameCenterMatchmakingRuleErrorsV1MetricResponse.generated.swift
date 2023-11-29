// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterMatchmakingRuleErrorsV1MetricResponse: Hashable, Codable {
    public var data: [Data]

    public var links: PagedDocumentLinks

    public var meta: PagingInformation?

    public init(
        data: [Data],
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

    public struct Data: Hashable, Codable {
        public var dataPoints: DataPoints?

        public var dimensions: Dimensions?

        public var granularity: Granularity?

        public init(
            dataPoints: DataPoints? = nil,
            dimensions: Dimensions? = nil,
            granularity: Granularity? = nil
        ) {
            self.dataPoints = dataPoints
            self.dimensions = dimensions
            self.granularity = granularity
        }

        private enum CodingKeys: String, CodingKey {
            case dataPoints
            case dimensions
            case granularity
        }

        public struct DataPoints: Hashable, Codable {
            public var end: String?

            public var start: String?

            public var values: Values?

            public init(
                end: String? = nil,
                start: String? = nil,
                values: Values? = nil
            ) {
                self.end = end
                self.start = start
                self.values = values
            }

            private enum CodingKeys: String, CodingKey {
                case end
                case start
                case values
            }

            public struct Values: Hashable, Codable {
                public var count: Int?

                public init(count: Int? = nil) {
                    self.count = count
                }

                private enum CodingKeys: String, CodingKey {
                    case count
                }
            }
        }

        public struct Dimensions: Hashable, Codable {
            public var gameCenterMatchmakingQueue: GameCenterMatchmakingQueue?

            public init(gameCenterMatchmakingQueue: GameCenterMatchmakingQueue? = nil) {
                self.gameCenterMatchmakingQueue = gameCenterMatchmakingQueue
            }

            private enum CodingKeys: String, CodingKey {
                case gameCenterMatchmakingQueue
            }

            public struct GameCenterMatchmakingQueue: Hashable, Codable {
                public var links: Links?

                public init(links: Links? = nil) {
                    self.links = links
                }

                private enum CodingKeys: String, CodingKey {
                    case links
                }

                public struct Links: Hashable, Codable {
                    public var groupBy: URL?

                    public var related: URL?

                    public init(
                        groupBy: URL? = nil,
                        related: URL? = nil
                    ) {
                        self.groupBy = groupBy
                        self.related = related
                    }

                    private enum CodingKeys: String, CodingKey {
                        case groupBy
                        case related
                    }
                }
            }
        }

        public enum Granularity: Hashable, Codable, RawRepresentable {
            case p1D
            case pT15M
            case pT1H
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .p1D: return "P1D"
                case .pT15M: return "PT15M"
                case .pT1H: return "PT1H"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "P1D": self = .p1D
                case "PT15M": self = .pT15M
                case "PT1H": self = .pT1H
                default: self = .unknown(rawValue)
                }
            }
        }
    }
}

// swiftlint:enable all
