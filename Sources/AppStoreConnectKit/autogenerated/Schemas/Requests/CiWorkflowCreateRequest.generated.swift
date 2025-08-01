// autogenerated

// swiftlint:disable all
import Foundation

public struct CiWorkflowCreateRequest: Hashable, Codable, Sendable {
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

        public enum `Type`: String, Hashable, Codable, Sendable {
            case ciWorkflows
        }

        public struct Attributes: Hashable, Codable, Sendable {
            public var actions: [CiAction]

            public var branchStartCondition: CiBranchStartCondition?

            public var clean: Bool

            public var containerFilePath: String

            public var description: String

            public var isEnabled: Bool

            public var isLockedForEditing: Bool?

            public var manualBranchStartCondition: CiManualBranchStartCondition?

            public var manualPullRequestStartCondition: CiManualPullRequestStartCondition?

            public var manualTagStartCondition: CiManualTagStartCondition?

            public var name: String

            public var pullRequestStartCondition: CiPullRequestStartCondition?

            public var scheduledStartCondition: CiScheduledStartCondition?

            public var tagStartCondition: CiTagStartCondition?

            public init(
                actions: [CiAction],
                branchStartCondition: CiBranchStartCondition? = nil,
                clean: Bool,
                containerFilePath: String,
                description: String,
                isEnabled: Bool,
                isLockedForEditing: Bool? = nil,
                manualBranchStartCondition: CiManualBranchStartCondition? = nil,
                manualPullRequestStartCondition: CiManualPullRequestStartCondition? = nil,
                manualTagStartCondition: CiManualTagStartCondition? = nil,
                name: String,
                pullRequestStartCondition: CiPullRequestStartCondition? = nil,
                scheduledStartCondition: CiScheduledStartCondition? = nil,
                tagStartCondition: CiTagStartCondition? = nil
            ) {
                self.actions = actions
                self.branchStartCondition = branchStartCondition
                self.clean = clean
                self.containerFilePath = containerFilePath
                self.description = description
                self.isEnabled = isEnabled
                self.isLockedForEditing = isLockedForEditing
                self.manualBranchStartCondition = manualBranchStartCondition
                self.manualPullRequestStartCondition = manualPullRequestStartCondition
                self.manualTagStartCondition = manualTagStartCondition
                self.name = name
                self.pullRequestStartCondition = pullRequestStartCondition
                self.scheduledStartCondition = scheduledStartCondition
                self.tagStartCondition = tagStartCondition
            }

            private enum CodingKeys: String, CodingKey {
                case actions
                case branchStartCondition
                case clean
                case containerFilePath
                case description
                case isEnabled
                case isLockedForEditing
                case manualBranchStartCondition
                case manualPullRequestStartCondition
                case manualTagStartCondition
                case name
                case pullRequestStartCondition
                case scheduledStartCondition
                case tagStartCondition
            }
        }

        public struct Relationships: Hashable, Codable, Sendable {
            public var macOsVersion: MacOsVersion

            public var product: Product

            public var repository: Repository

            public var xcodeVersion: XcodeVersion

            public init(
                macOsVersion: MacOsVersion,
                product: Product,
                repository: Repository,
                xcodeVersion: XcodeVersion
            ) {
                self.macOsVersion = macOsVersion
                self.product = product
                self.repository = repository
                self.xcodeVersion = xcodeVersion
            }

            private enum CodingKeys: String, CodingKey {
                case macOsVersion
                case product
                case repository
                case xcodeVersion
            }

            public struct MacOsVersion: Hashable, Codable, Sendable {
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
                        case ciMacOsVersions
                    }
                }
            }

            public struct Product: Hashable, Codable, Sendable {
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
                        case ciProducts
                    }
                }
            }

            public struct Repository: Hashable, Codable, Sendable {
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
                        case scmRepositories
                    }
                }
            }

            public struct XcodeVersion: Hashable, Codable, Sendable {
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
                        case ciXcodeVersions
                    }
                }
            }
        }
    }
}

// swiftlint:enable all
