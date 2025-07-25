// autogenerated

// swiftlint:disable all
import Foundation

public struct AppStoreVersionExperimentTreatmentCreateRequest: Hashable, Codable, Sendable {
    public var data: Data

    public init(data: Data) {
        self.data = data
    }

    private enum CodingKeys: String, CodingKey {
        case data
    }

    public struct Data: Hashable, Codable, Sendable {
        public var type: `Type`

        public var attributes: Attributes

        public var relationships: Relationships?

        public init(
            type: `Type`,
            attributes: Attributes,
            relationships: Relationships? = nil
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

        public enum `Type`: String, Hashable, Codable, Sendable {
            case appStoreVersionExperimentTreatments
        }

        public struct Attributes: Hashable, Codable, Sendable {
            public var appIconName: String?

            public var name: String

            public init(
                appIconName: String? = nil,
                name: String
            ) {
                self.appIconName = appIconName
                self.name = name
            }

            private enum CodingKeys: String, CodingKey {
                case appIconName
                case name
            }
        }

        public struct Relationships: Hashable, Codable, Sendable {
            public var appStoreVersionExperiment: AppStoreVersionExperiment?

            public var appStoreVersionExperimentV2: AppStoreVersionExperimentV2?

            public init(
                appStoreVersionExperiment: AppStoreVersionExperiment? = nil,
                appStoreVersionExperimentV2: AppStoreVersionExperimentV2? = nil
            ) {
                self.appStoreVersionExperiment = appStoreVersionExperiment
                self.appStoreVersionExperimentV2 = appStoreVersionExperimentV2
            }

            private enum CodingKeys: String, CodingKey {
                case appStoreVersionExperiment
                case appStoreVersionExperimentV2
            }

            public struct AppStoreVersionExperiment: Hashable, Codable, Sendable {
                public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                private enum CodingKeys: String, CodingKey {
                    case data
                }

                public struct Data: Hashable, Codable, Sendable {
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

                    public enum `Type`: String, Hashable, Codable, Sendable {
                        case appStoreVersionExperiments
                    }
                }
            }

            public struct AppStoreVersionExperimentV2: Hashable, Codable, Sendable {
                public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                private enum CodingKeys: String, CodingKey {
                    case data
                }

                public struct Data: Hashable, Codable, Sendable {
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

                    public enum `Type`: String, Hashable, Codable, Sendable {
                        case appStoreVersionExperiments
                    }
                }
            }
        }
    }
}

// swiftlint:enable all
