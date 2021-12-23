// autogenerated

// swiftlint:disable all
import Foundation

public struct BetaGroup: Hashable, Codable {
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
        case betaGroups
    }

    public struct Attributes: Hashable, Codable {
        public var createdDate: String?

        public var feedbackEnabled: Bool?

        public var hasAccessToAllBuilds: Bool?

        public var iosBuildsAvailableForAppleSiliconMac: Bool?

        public var isInternalGroup: Bool?

        public var name: String?

        public var publicLink: String?

        public var publicLinkEnabled: Bool?

        public var publicLinkId: String?

        public var publicLinkLimit: Int?

        public var publicLinkLimitEnabled: Bool?

        public init(
            createdDate: String? = nil,
            feedbackEnabled: Bool? = nil,
            hasAccessToAllBuilds: Bool? = nil,
            iosBuildsAvailableForAppleSiliconMac: Bool? = nil,
            isInternalGroup: Bool? = nil,
            name: String? = nil,
            publicLink: String? = nil,
            publicLinkEnabled: Bool? = nil,
            publicLinkId: String? = nil,
            publicLinkLimit: Int? = nil,
            publicLinkLimitEnabled: Bool? = nil
        ) {
            self.createdDate = createdDate
            self.feedbackEnabled = feedbackEnabled
            self.hasAccessToAllBuilds = hasAccessToAllBuilds
            self.iosBuildsAvailableForAppleSiliconMac = iosBuildsAvailableForAppleSiliconMac
            self.isInternalGroup = isInternalGroup
            self.name = name
            self.publicLink = publicLink
            self.publicLinkEnabled = publicLinkEnabled
            self.publicLinkId = publicLinkId
            self.publicLinkLimit = publicLinkLimit
            self.publicLinkLimitEnabled = publicLinkLimitEnabled
        }

        private enum CodingKeys: String, CodingKey {
            case createdDate
            case feedbackEnabled
            case hasAccessToAllBuilds
            case iosBuildsAvailableForAppleSiliconMac
            case isInternalGroup
            case name
            case publicLink
            case publicLinkEnabled
            case publicLinkId
            case publicLinkLimit
            case publicLinkLimitEnabled
        }
    }

    public struct Relationships: Hashable, Codable {
        public var app: App?

        public var betaTesters: BetaTesters?

        public var builds: Builds?

        public init(
            app: App? = nil,
            betaTesters: BetaTesters? = nil,
            builds: Builds? = nil
        ) {
            self.app = app
            self.betaTesters = betaTesters
            self.builds = builds
        }

        private enum CodingKeys: String, CodingKey {
            case app
            case betaTesters
            case builds
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

        public struct BetaTesters: Hashable, Codable {
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
                    case betaTesters
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

        public struct Builds: Hashable, Codable {
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