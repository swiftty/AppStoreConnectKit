// autogenerated

// swiftlint:disable all
import Foundation

public struct CiWorkflowUpdateRequest: Hashable, Codable {
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

        public enum `Type`: Hashable, Codable, RawRepresentable {
            case ciWorkflows
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .ciWorkflows: return "ciWorkflows"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "ciWorkflows": self = .ciWorkflows
                default: self = .unknown(rawValue)
                }
            }
        }

        public struct Attributes: Hashable, Codable {
            public var actions: [CiAction]?

            public var branchStartCondition: CiBranchStartCondition?

            public var clean: Bool?

            public var containerFilePath: String?

            public var description: String?

            public var isEnabled: Bool?

            public var isLockedForEditing: Bool?

            public var name: String?

            public var pullRequestStartCondition: CiPullRequestStartCondition?

            public var scheduledStartCondition: CiScheduledStartCondition?

            public var tagStartCondition: CiTagStartCondition?

            public init(
                actions: [CiAction]? = nil,
                branchStartCondition: CiBranchStartCondition? = nil,
                clean: Bool? = nil,
                containerFilePath: String? = nil,
                description: String? = nil,
                isEnabled: Bool? = nil,
                isLockedForEditing: Bool? = nil,
                name: String? = nil,
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
                case name
                case pullRequestStartCondition
                case scheduledStartCondition
                case tagStartCondition
            }
        }

        public struct Relationships: Hashable, Codable {
            public var macOsVersion: MacOsVersion?

            public var xcodeVersion: XcodeVersion?

            public init(
                macOsVersion: MacOsVersion? = nil,
                xcodeVersion: XcodeVersion? = nil
            ) {
                self.macOsVersion = macOsVersion
                self.xcodeVersion = xcodeVersion
            }

            private enum CodingKeys: String, CodingKey {
                case macOsVersion
                case xcodeVersion
            }

            public struct MacOsVersion: Hashable, Codable {
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

                    public enum `Type`: Hashable, Codable, RawRepresentable {
                        case ciMacOsVersions
                        case unknown(String)

                        public var rawValue: String {
                            switch self {
                            case .ciMacOsVersions: return "ciMacOsVersions"
                            case .unknown(let rawValue): return rawValue
                            }
                        }

                        public init(rawValue: String) {
                            switch rawValue {
                            case "ciMacOsVersions": self = .ciMacOsVersions
                            default: self = .unknown(rawValue)
                            }
                        }
                    }
                }
            }

            public struct XcodeVersion: Hashable, Codable {
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

                    public enum `Type`: Hashable, Codable, RawRepresentable {
                        case ciXcodeVersions
                        case unknown(String)

                        public var rawValue: String {
                            switch self {
                            case .ciXcodeVersions: return "ciXcodeVersions"
                            case .unknown(let rawValue): return rawValue
                            }
                        }

                        public init(rawValue: String) {
                            switch rawValue {
                            case "ciXcodeVersions": self = .ciXcodeVersions
                            default: self = .unknown(rawValue)
                            }
                        }
                    }
                }
            }
        }
    }
}

// swiftlint:enable all
