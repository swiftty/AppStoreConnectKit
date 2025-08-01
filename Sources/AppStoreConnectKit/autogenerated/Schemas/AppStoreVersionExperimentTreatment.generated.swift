// autogenerated

// swiftlint:disable all
import Foundation

public struct AppStoreVersionExperimentTreatment: Hashable, Codable, Sendable {
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

    public enum `Type`: String, Hashable, Codable, Sendable {
        case appStoreVersionExperimentTreatments
    }

    public struct Attributes: Hashable, Codable, Sendable {
        public var appIcon: ImageAsset?

        public var appIconName: String?

        public var name: String?

        public var promotedDate: String?

        public init(
            appIcon: ImageAsset? = nil,
            appIconName: String? = nil,
            name: String? = nil,
            promotedDate: String? = nil
        ) {
            self.appIcon = appIcon
            self.appIconName = appIconName
            self.name = name
            self.promotedDate = promotedDate
        }

        private enum CodingKeys: String, CodingKey {
            case appIcon
            case appIconName
            case name
            case promotedDate
        }
    }

    public struct Relationships: Hashable, Codable, Sendable {
        public var appStoreVersionExperiment: AppStoreVersionExperiment?

        public var appStoreVersionExperimentTreatmentLocalizations: AppStoreVersionExperimentTreatmentLocalizations?

        public var appStoreVersionExperimentV2: AppStoreVersionExperimentV2?

        public init(
            appStoreVersionExperiment: AppStoreVersionExperiment? = nil,
            appStoreVersionExperimentTreatmentLocalizations: AppStoreVersionExperimentTreatmentLocalizations? = nil,
            appStoreVersionExperimentV2: AppStoreVersionExperimentV2? = nil
        ) {
            self.appStoreVersionExperiment = appStoreVersionExperiment
            self.appStoreVersionExperimentTreatmentLocalizations = appStoreVersionExperimentTreatmentLocalizations
            self.appStoreVersionExperimentV2 = appStoreVersionExperimentV2
        }

        private enum CodingKeys: String, CodingKey {
            case appStoreVersionExperiment
            case appStoreVersionExperimentTreatmentLocalizations
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

        public struct AppStoreVersionExperimentTreatmentLocalizations: Hashable, Codable, Sendable {
            public var data: [Data]?

            public var links: RelationshipLinks?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: RelationshipLinks? = nil,
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
                    case appStoreVersionExperimentTreatmentLocalizations
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

// swiftlint:enable all
