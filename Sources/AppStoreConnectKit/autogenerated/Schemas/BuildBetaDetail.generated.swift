// autogenerated

// swiftlint:disable all
import Foundation

public struct BuildBetaDetail: Hashable, Codable {
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

    public enum `Type`: String, Hashable, Codable {
        case buildBetaDetails
    }

    public struct Attributes: Hashable, Codable {
        public var autoNotifyEnabled: Bool?

        public var externalBuildState: ExternalBetaState?

        public var internalBuildState: InternalBetaState?

        public init(
            autoNotifyEnabled: Bool? = nil,
            externalBuildState: ExternalBetaState? = nil,
            internalBuildState: InternalBetaState? = nil
        ) {
            self.autoNotifyEnabled = autoNotifyEnabled
            self.externalBuildState = externalBuildState
            self.internalBuildState = internalBuildState
        }

        private enum CodingKeys: String, CodingKey {
            case autoNotifyEnabled
            case externalBuildState
            case internalBuildState
        }
    }

    public struct Relationships: Hashable, Codable {
        public var build: Build?

        public init(build: Build? = nil) {
            self.build = build
        }

        private enum CodingKeys: String, CodingKey {
            case build
        }

        public struct Build: Hashable, Codable {
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
                    case builds
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