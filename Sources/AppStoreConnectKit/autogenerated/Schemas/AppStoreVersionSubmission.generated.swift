// autogenerated

// swiftlint:disable all
import Foundation

public struct AppStoreVersionSubmission: Hashable, Codable {
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
        case appStoreVersionSubmissions
        case unknown(String)

        public var rawValue: String {
            switch self {
            case .appStoreVersionSubmissions: return "appStoreVersionSubmissions"
            case .unknown(let rawValue): return rawValue
            }
        }

        public init(rawValue: String) {
            switch rawValue {
            case "appStoreVersionSubmissions": self = .appStoreVersionSubmissions
            default: self = .unknown(rawValue)
            }
        }
    }

    public struct Relationships: Hashable, Codable {
        public var appStoreVersion: AppStoreVersion?

        public init(appStoreVersion: AppStoreVersion? = nil) {
            self.appStoreVersion = appStoreVersion
        }

        private enum CodingKeys: String, CodingKey {
            case appStoreVersion
        }

        public struct AppStoreVersion: Hashable, Codable {
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
                    case appStoreVersions
                    case unknown(String)

                    public var rawValue: String {
                        switch self {
                        case .appStoreVersions: return "appStoreVersions"
                        case .unknown(let rawValue): return rawValue
                        }
                    }

                    public init(rawValue: String) {
                        switch rawValue {
                        case "appStoreVersions": self = .appStoreVersions
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
