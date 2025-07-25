// autogenerated

// swiftlint:disable all
import Foundation

public struct ReviewSubmissionItemCreateRequest: Hashable, Codable, Sendable {
    public var data: Data

    public init(data: Data) {
        self.data = data
    }

    private enum CodingKeys: String, CodingKey {
        case data
    }

    public struct Data: Hashable, Codable, Sendable {
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

        public enum `Type`: String, Hashable, Codable, Sendable {
            case reviewSubmissionItems
        }

        public struct Relationships: Hashable, Codable, Sendable {
            public var appCustomProductPageVersion: AppCustomProductPageVersion?

            public var appEvent: AppEvent?

            public var appStoreVersion: AppStoreVersion?

            public var appStoreVersionExperiment: AppStoreVersionExperiment?

            public var appStoreVersionExperimentV2: AppStoreVersionExperimentV2?

            public var reviewSubmission: ReviewSubmission

            public init(
                appCustomProductPageVersion: AppCustomProductPageVersion? = nil,
                appEvent: AppEvent? = nil,
                appStoreVersion: AppStoreVersion? = nil,
                appStoreVersionExperiment: AppStoreVersionExperiment? = nil,
                appStoreVersionExperimentV2: AppStoreVersionExperimentV2? = nil,
                reviewSubmission: ReviewSubmission
            ) {
                self.appCustomProductPageVersion = appCustomProductPageVersion
                self.appEvent = appEvent
                self.appStoreVersion = appStoreVersion
                self.appStoreVersionExperiment = appStoreVersionExperiment
                self.appStoreVersionExperimentV2 = appStoreVersionExperimentV2
                self.reviewSubmission = reviewSubmission
            }

            private enum CodingKeys: String, CodingKey {
                case appCustomProductPageVersion
                case appEvent
                case appStoreVersion
                case appStoreVersionExperiment
                case appStoreVersionExperimentV2
                case reviewSubmission
            }

            public struct AppCustomProductPageVersion: Hashable, Codable, Sendable {
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
                        case appCustomProductPageVersions
                    }
                }
            }

            public struct AppEvent: Hashable, Codable, Sendable {
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
                        case appEvents
                    }
                }
            }

            public struct AppStoreVersion: Hashable, Codable, Sendable {
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
                        case appStoreVersions
                    }
                }
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

            public struct ReviewSubmission: Hashable, Codable, Sendable {
                public var data: Data

                public init(data: Data) {
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
                        case reviewSubmissions
                    }
                }
            }
        }
    }
}

// swiftlint:enable all
