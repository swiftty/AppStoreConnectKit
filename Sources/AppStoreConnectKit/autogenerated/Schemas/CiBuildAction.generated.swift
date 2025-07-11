// autogenerated

// swiftlint:disable all
import Foundation

public struct CiBuildAction: Hashable, Codable, Sendable {
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
        case ciBuildActions
    }

    public struct Attributes: Hashable, Codable, Sendable {
        public var actionType: CiActionType?

        public var completionStatus: CiCompletionStatus?

        public var executionProgress: CiExecutionProgress?

        public var finishedDate: String?

        public var isRequiredToPass: Bool?

        public var issueCounts: CiIssueCounts?

        public var name: String?

        public var startedDate: String?

        public init(
            actionType: CiActionType? = nil,
            completionStatus: CiCompletionStatus? = nil,
            executionProgress: CiExecutionProgress? = nil,
            finishedDate: String? = nil,
            isRequiredToPass: Bool? = nil,
            issueCounts: CiIssueCounts? = nil,
            name: String? = nil,
            startedDate: String? = nil
        ) {
            self.actionType = actionType
            self.completionStatus = completionStatus
            self.executionProgress = executionProgress
            self.finishedDate = finishedDate
            self.isRequiredToPass = isRequiredToPass
            self.issueCounts = issueCounts
            self.name = name
            self.startedDate = startedDate
        }

        private enum CodingKeys: String, CodingKey {
            case actionType
            case completionStatus
            case executionProgress
            case finishedDate
            case isRequiredToPass
            case issueCounts
            case name
            case startedDate
        }
    }

    public struct Relationships: Hashable, Codable, Sendable {
        public var artifacts: Artifacts?

        public var buildRun: BuildRun?

        public var issues: Issues?

        public var testResults: TestResults?

        public init(
            artifacts: Artifacts? = nil,
            buildRun: BuildRun? = nil,
            issues: Issues? = nil,
            testResults: TestResults? = nil
        ) {
            self.artifacts = artifacts
            self.buildRun = buildRun
            self.issues = issues
            self.testResults = testResults
        }

        private enum CodingKeys: String, CodingKey {
            case artifacts
            case buildRun
            case issues
            case testResults
        }

        public struct Artifacts: Hashable, Codable, Sendable {
            public var links: RelationshipLinks?

            public init(links: RelationshipLinks? = nil) {
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case links
            }
        }

        public struct BuildRun: Hashable, Codable, Sendable {
            public var data: Data?

            public var links: RelationshipLinks?

            public init(
                data: Data? = nil,
                links: RelationshipLinks? = nil
            ) {
                self.data = data
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
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
                    case ciBuildRuns
                }
            }
        }

        public struct Issues: Hashable, Codable, Sendable {
            public var links: RelationshipLinks?

            public init(links: RelationshipLinks? = nil) {
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case links
            }
        }

        public struct TestResults: Hashable, Codable, Sendable {
            public var links: RelationshipLinks?

            public init(links: RelationshipLinks? = nil) {
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case links
            }
        }
    }
}

// swiftlint:enable all
