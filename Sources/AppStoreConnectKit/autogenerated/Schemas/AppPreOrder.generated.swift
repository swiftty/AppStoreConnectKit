// autogenerated

// swiftlint:disable all
import Foundation

public struct AppPreOrder: Hashable, Codable {
    public var id: String

    public var type: `Type`

    public var attributes: Attributes?

    public var relationships: Relationships?

    public var links: ResourceLinks

    public init(
        id: String,
        type: `Type`,
        attributes: Attributes? = nil,
        relationships: Relationships? = nil,
        links: ResourceLinks
    ) {
        self.id = id
        self.type = type
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case attributes
        case relationships
        case links
    }

    public enum `Type`: Hashable, Codable, RawRepresentable {
        case appPreOrders
        case unknown(String)

        public var rawValue: String {
            switch self {
            case .appPreOrders: return "appPreOrders"
            case .unknown(let rawValue): return rawValue
            }
        }

        public init(rawValue: String) {
            switch rawValue {
            case "appPreOrders": self = .appPreOrders
            default: self = .unknown(rawValue)
            }
        }
    }

    public struct Attributes: Hashable, Codable {
        public var appReleaseDate: String?

        public var preOrderAvailableDate: String?

        public init(
            appReleaseDate: String? = nil,
            preOrderAvailableDate: String? = nil
        ) {
            self.appReleaseDate = appReleaseDate
            self.preOrderAvailableDate = preOrderAvailableDate
        }

        private enum CodingKeys: String, CodingKey {
            case appReleaseDate
            case preOrderAvailableDate
        }
    }

    public struct Relationships: Hashable, Codable {
        public var app: App?

        public init(app: App? = nil) {
            self.app = app
        }

        private enum CodingKeys: String, CodingKey {
            case app
        }

        public struct App: Hashable, Codable {
            public var data: Data?

            public var links: Links?

            public init(
                data: Data? = nil,
                links: Links? = nil
            ) {
                self.data = data
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
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
                    case apps
                    case unknown(String)

                    public var rawValue: String {
                        switch self {
                        case .apps: return "apps"
                        case .unknown(let rawValue): return rawValue
                        }
                    }

                    public init(rawValue: String) {
                        switch rawValue {
                        case "apps": self = .apps
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
