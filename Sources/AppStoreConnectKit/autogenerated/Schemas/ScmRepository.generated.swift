// autogenerated

// swiftlint:disable all
import Foundation

public struct ScmRepository: Hashable, Codable {
    public var id: String

    public var type: `Type`

    public var attributes: Attributes?

    public var relationships: Relationships?

    public var links: ResourceLinks?

    public init(
        id: String,
        type: `Type`,
        attributes: Attributes? = nil,
        relationships: Relationships? = nil,
        links: ResourceLinks? = nil
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
        case scmRepositories
    }

    public struct Attributes: Hashable, Codable {
        public var httpCloneUrl: URL?

        public var lastAccessedDate: String?

        public var ownerName: String?

        public var repositoryName: String?

        public var sshCloneUrl: URL?

        public init(
            httpCloneUrl: URL? = nil,
            lastAccessedDate: String? = nil,
            ownerName: String? = nil,
            repositoryName: String? = nil,
            sshCloneUrl: URL? = nil
        ) {
            self.httpCloneUrl = httpCloneUrl
            self.lastAccessedDate = lastAccessedDate
            self.ownerName = ownerName
            self.repositoryName = repositoryName
            self.sshCloneUrl = sshCloneUrl
        }

        private enum CodingKeys: String, CodingKey {
            case httpCloneUrl
            case lastAccessedDate
            case ownerName
            case repositoryName
            case sshCloneUrl
        }
    }

    public struct Relationships: Hashable, Codable {
        public var defaultBranch: DefaultBranch?

        public var scmProvider: ScmProvider?

        public init(
            defaultBranch: DefaultBranch? = nil,
            scmProvider: ScmProvider? = nil
        ) {
            self.defaultBranch = defaultBranch
            self.scmProvider = scmProvider
        }

        private enum CodingKeys: String, CodingKey {
            case defaultBranch
            case scmProvider
        }

        public struct DefaultBranch: Hashable, Codable {
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
                    case scmGitReferences
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

        public struct ScmProvider: Hashable, Codable {
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
                    case scmProviders
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
