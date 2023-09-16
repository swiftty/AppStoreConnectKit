// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterEnabledVersion: Hashable, Codable {
    public var id: String

    public var type: `Type`

    public var attributes: Attributes?

    public var relationships: Relationships?

    public init(
        id: String,
        type: `Type`,
        attributes: Attributes? = nil,
        relationships: Relationships? = nil
    ) {
        self.id = id
        self.type = type
        self.attributes = attributes
        self.relationships = relationships
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case attributes
        case relationships
    }

    public enum `Type`: String, Hashable, Codable {
        case gameCenterEnabledVersions
    }

    public struct Attributes: Hashable, Codable {
        public var iconAsset: ImageAsset?

        public var platform: Platform?

        public var versionString: String?

        public init(
            iconAsset: ImageAsset? = nil,
            platform: Platform? = nil,
            versionString: String? = nil
        ) {
            self.iconAsset = iconAsset
            self.platform = platform
            self.versionString = versionString
        }

        private enum CodingKeys: String, CodingKey {
            case iconAsset
            case platform
            case versionString
        }
    }

    public struct Relationships: Hashable, Codable {
        public var app: App?

        public var compatibleVersions: CompatibleVersions?

        public init(
            app: App? = nil,
            compatibleVersions: CompatibleVersions? = nil
        ) {
            self.app = app
            self.compatibleVersions = compatibleVersions
        }

        private enum CodingKeys: String, CodingKey {
            case app
            case compatibleVersions
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

                public enum `Type`: String, Hashable, Codable {
                    case apps
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

        public struct CompatibleVersions: Hashable, Codable {
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

                public enum `Type`: String, Hashable, Codable {
                    case gameCenterEnabledVersions
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
