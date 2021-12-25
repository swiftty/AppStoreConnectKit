// autogenerated

// swiftlint:disable all
import Foundation

public struct AppStoreVersionCreateRequest: Hashable, Codable {
    public var data: Data

    public init(data: Data) {
        self.data = data
    }

    private enum CodingKeys: String, CodingKey {
        case data
    }

    public struct Data: Hashable, Codable {
        public var type: `Type`

        public var attributes: Attributes

        public var relationships: Relationships

        public init(
            type: `Type`,
            attributes: Attributes,
            relationships: Relationships
        ) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }

        private enum CodingKeys: String, CodingKey {
            case type
            case attributes
            case relationships
        }

        public enum `Type`: String, Hashable, Codable {
            case appStoreVersions
        }

        public struct Attributes: Hashable, Codable {
            public var copyright: String?

            public var earliestReleaseDate: String?

            public var platform: Platform

            public var releaseType: ReleaseType?

            @available(*, deprecated)
            public var usesIdfa: Bool?

            public var versionString: String

            public init(
                copyright: String? = nil,
                earliestReleaseDate: String? = nil,
                platform: Platform,
                releaseType: ReleaseType? = nil,
                usesIdfa: Bool? = nil,
                versionString: String
            ) {
                self.copyright = copyright
                self.earliestReleaseDate = earliestReleaseDate
                self.platform = platform
                self.releaseType = releaseType
                self.usesIdfa = usesIdfa
                self.versionString = versionString
            }

            private enum CodingKeys: String, CodingKey {
                case copyright
                case earliestReleaseDate
                case platform
                case releaseType
                case usesIdfa
                case versionString
            }

            public enum ReleaseType: Hashable, Codable, RawRepresentable {
                case afterApproval
                case manual
                case scheduled
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .afterApproval: return "AFTER_APPROVAL"
                    case .manual: return "MANUAL"
                    case .scheduled: return "SCHEDULED"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "AFTER_APPROVAL": self = .afterApproval
                    case "MANUAL": self = .manual
                    case "SCHEDULED": self = .scheduled
                    default: self = .unknown(rawValue)
                    }
                }
            }
        }

        public struct Relationships: Hashable, Codable {
            public var app: App

            public var appStoreVersionLocalizations: AppStoreVersionLocalizations?

            public var build: Build?

            public init(
                app: App,
                appStoreVersionLocalizations: AppStoreVersionLocalizations? = nil,
                build: Build? = nil
            ) {
                self.app = app
                self.appStoreVersionLocalizations = appStoreVersionLocalizations
                self.build = build
            }

            private enum CodingKeys: String, CodingKey {
                case app
                case appStoreVersionLocalizations
                case build
            }

            public struct App: Hashable, Codable {
                public var data: Data

                public init(data: Data) {
                    self.data = data
                }

                private enum CodingKeys: String, CodingKey {
                    case data
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
            }

            public struct AppStoreVersionLocalizations: Hashable, Codable {
                public var data: [Data]?

                public init(data: [Data]? = nil) {
                    self.data = data
                }

                private enum CodingKeys: String, CodingKey {
                    case data
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
                        case appStoreVersionLocalizations
                    }
                }
            }

            public struct Build: Hashable, Codable {
                public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                private enum CodingKeys: String, CodingKey {
                    case data
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
            }
        }
    }
}

// swiftlint:enable all
