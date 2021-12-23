// autogenerated

// swiftlint:disable all
import Foundation

public struct CiBuildAction: Hashable, Codable {
    public var id: String

    public var type: `Type`

    public var attributes: Attributes?

    public var relationships: Relationships?

    public var links: ResourceLinks

    public init(
        id: String,
        type: `Type`,
        attributes: Attributes? = nil,
        relationships: Relationships? = nil,
        links: ResourceLinks
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

    public enum `Type`: String, Hashable, Codable {
        case ciBuildActions
    }

    public struct Attributes: Hashable, Codable {
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

    public struct Relationships: Hashable, Codable {
        public var buildRun: BuildRun?

        public init(buildRun: BuildRun? = nil) {
            self.buildRun = buildRun
        }

        private enum CodingKeys: String, CodingKey {
            case buildRun
        }

        public struct BuildRun: Hashable, Codable {
            public var data: Data?

            public var links: Links?

            public init(
                data: Data? = nil,
                links: Links? = nil
            ) {
                self.data = data
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
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
                    case ciBuildRuns
                }
            }

            public struct Links: Hashable, Codable {
                public var related: URL?

                public var `self`: URL?

                public init(
                    related: URL? = nil,
                    self _self: URL? = nil
                ) {
                    self.related = related
                    self.`self` = _self
                }

                private enum CodingKeys: String, CodingKey {
                    case related
                    case `self` = "self"
                }
            }
        }
    }
}

// swiftlint:enable all