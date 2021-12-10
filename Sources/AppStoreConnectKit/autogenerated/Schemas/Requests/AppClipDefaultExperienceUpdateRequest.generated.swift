// autogenerated

// swiftlint:disable all
import Foundation

public struct AppClipDefaultExperienceUpdateRequest: Hashable, Codable {
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
            case appClipDefaultExperiences
        }

        public struct Attributes: Hashable, Codable {
            public var action: AppClipAction?

            public init(action: AppClipAction? = nil) {
                self.action = action
            }

            private enum CodingKeys: String, CodingKey {
                case action
            }
        }

        public struct Relationships: Hashable, Codable {
            public var releaseWithAppStoreVersion: ReleaseWithAppStoreVersion?

            public init(releaseWithAppStoreVersion: ReleaseWithAppStoreVersion? = nil) {
                self.releaseWithAppStoreVersion = releaseWithAppStoreVersion
            }

            private enum CodingKeys: String, CodingKey {
                case releaseWithAppStoreVersion
            }

            public struct ReleaseWithAppStoreVersion: Hashable, Codable {
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
                        case appStoreVersions
                    }
                }
            }
        }
    }
}

// swiftlint:enable all
