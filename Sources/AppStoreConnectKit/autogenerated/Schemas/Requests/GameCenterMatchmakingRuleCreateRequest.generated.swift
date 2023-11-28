// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterMatchmakingRuleCreateRequest: Hashable, Codable {
    public var data: Data

    public init(data: Data) {
        self.data = data
    }

    private enum CodingKeys: String, CodingKey {
        case data
    }

    public struct Data: Hashable, Codable {
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

        public enum `Type`: String, Hashable, Codable {
            case gameCenterMatchmakingRules
        }

        public struct Attributes: Hashable, Codable {
            public var type: `Type`

            public var description: String

            public var expression: String

            public var referenceName: String

            public var weight: Float?

            public init(
                type: `Type`,
                description: String,
                expression: String,
                referenceName: String,
                weight: Float? = nil
            ) {
                self.type = type
                self.description = description
                self.expression = expression
                self.referenceName = referenceName
                self.weight = weight
            }

            private enum CodingKeys: String, CodingKey {
                case type
                case description
                case expression
                case referenceName
                case weight
            }

            public enum `Type`: Hashable, Codable, RawRepresentable {
                case compatible
                case distance
                case match
                case team
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .compatible: return "COMPATIBLE"
                    case .distance: return "DISTANCE"
                    case .match: return "MATCH"
                    case .team: return "TEAM"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "COMPATIBLE": self = .compatible
                    case "DISTANCE": self = .distance
                    case "MATCH": self = .match
                    case "TEAM": self = .team
                    default: self = .unknown(rawValue)
                    }
                }
            }
        }

        public struct Relationships: Hashable, Codable {
            public var ruleSet: RuleSet

            public init(ruleSet: RuleSet) {
                self.ruleSet = ruleSet
            }

            private enum CodingKeys: String, CodingKey {
                case ruleSet
            }

            public struct RuleSet: Hashable, Codable {
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
                        case gameCenterMatchmakingRuleSets
                    }
                }
            }
        }
    }
}

// swiftlint:enable all
