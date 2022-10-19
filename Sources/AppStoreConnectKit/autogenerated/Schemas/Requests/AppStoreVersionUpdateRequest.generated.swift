// autogenerated

// swiftlint:disable all
import Foundation

public struct AppStoreVersionUpdateRequest: Hashable, Codable {
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
            case appStoreVersions
        }

        public struct Attributes: Hashable, Codable {
            public var copyright: String?

            public var downloadable: Bool?

            public var earliestReleaseDate: String?

            public var releaseType: ReleaseType?

            public var versionString: String?

            public init(
                copyright: String? = nil,
                downloadable: Bool? = nil,
                earliestReleaseDate: String? = nil,
                releaseType: ReleaseType? = nil,
                versionString: String? = nil
            ) {
                self.copyright = copyright
                self.downloadable = downloadable
                self.earliestReleaseDate = earliestReleaseDate
                self.releaseType = releaseType
                self.versionString = versionString
            }

            private enum CodingKeys: String, CodingKey {
                case copyright
                case downloadable
                case earliestReleaseDate
                case releaseType
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
            public var appClipDefaultExperience: AppClipDefaultExperience?

            public var build: Build?

            public init(
                appClipDefaultExperience: AppClipDefaultExperience? = nil,
                build: Build? = nil
            ) {
                self.appClipDefaultExperience = appClipDefaultExperience
                self.build = build
            }

            private enum CodingKeys: String, CodingKey {
                case appClipDefaultExperience
                case build
            }

            public struct AppClipDefaultExperience: Hashable, Codable {
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
                        case appClipDefaultExperiences
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
