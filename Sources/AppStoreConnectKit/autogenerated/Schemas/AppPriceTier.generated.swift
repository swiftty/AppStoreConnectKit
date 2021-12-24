// autogenerated

// swiftlint:disable all
import Foundation

public struct AppPriceTier: Hashable, Codable {
    public var id: String

    public var type: `Type`

    public var relationships: Relationships?

    public var links: ResourceLinks

    public init(
        id: String,
        type: `Type`,
        relationships: Relationships? = nil,
        links: ResourceLinks
    ) {
        self.id = id
        self.type = type
        self.relationships = relationships
        self.links = links
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case relationships
        case links
    }

    public enum `Type`: Hashable, Codable, RawRepresentable {
        case appPriceTiers
        case unknown(String)

        public var rawValue: String {
            switch self {
            case .appPriceTiers: return "appPriceTiers"
            case .unknown(let rawValue): return rawValue
            }
        }

        public init(rawValue: String) {
            switch rawValue {
            case "appPriceTiers": self = .appPriceTiers
            default: self = .unknown(rawValue)
            }
        }
    }

    public struct Relationships: Hashable, Codable {
        public var pricePoints: PricePoints?

        public init(pricePoints: PricePoints? = nil) {
            self.pricePoints = pricePoints
        }

        private enum CodingKeys: String, CodingKey {
            case pricePoints
        }

        public struct PricePoints: Hashable, Codable {
            public var data: [Data]?

            public var links: Links?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: Links? = nil,
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
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: Hashable, Codable, RawRepresentable {
                    case appPricePoints
                    case unknown(String)

                    public var rawValue: String {
                        switch self {
                        case .appPricePoints: return "appPricePoints"
                        case .unknown(let rawValue): return rawValue
                        }
                    }

                    public init(rawValue: String) {
                        switch rawValue {
                        case "appPricePoints": self = .appPricePoints
                        default: self = .unknown(rawValue)
                        }
                    }
                }
            }

            public struct Links: Hashable, Codable {
                public var related: URL?

                public var `self`: URL?

                public init(
                    related: URL? = nil,
                    self _self: URL? = nil
                ) {
                    self.related = related
                    self.`self` = _self
                }

                private enum CodingKeys: String, CodingKey {
                    case related
                    case `self` = "self"
                }
            }
        }
    }
}

// swiftlint:enable all
