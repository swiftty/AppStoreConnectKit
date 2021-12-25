// autogenerated

// swiftlint:disable all
import Foundation

public struct AppStoreVersionSubmissionCreateRequest: Hashable, Codable {
    public var data: Data

    public init(data: Data) {
        self.data = data
    }

    private enum CodingKeys: String, CodingKey {
        case data
    }

    public struct Data: Hashable, Codable {
        public var type: `Type`

        public var relationships: Relationships

        public init(
            type: `Type`,
            relationships: Relationships
        ) {
            self.type = type
            self.relationships = relationships
        }

        private enum CodingKeys: String, CodingKey {
            case type
            case relationships
        }

        public enum `Type`: String, Hashable, Codable {
            case appStoreVersionSubmissions
        }

        public struct Relationships: Hashable, Codable {
            public var appStoreVersion: AppStoreVersion

            public init(appStoreVersion: AppStoreVersion) {
                self.appStoreVersion = appStoreVersion
            }

            private enum CodingKeys: String, CodingKey {
                case appStoreVersion
            }

            public struct AppStoreVersion: Hashable, Codable {
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
                        case appStoreVersions
                    }
                }
            }
        }
    }
}

// swiftlint:enable all
