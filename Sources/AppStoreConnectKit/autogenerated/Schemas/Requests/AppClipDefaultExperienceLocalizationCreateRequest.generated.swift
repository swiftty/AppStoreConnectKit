// autogenerated

// swiftlint:disable all
import Foundation

public struct AppClipDefaultExperienceLocalizationCreateRequest: Hashable, Codable {
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
            case appClipDefaultExperienceLocalizations
        }

        public struct Attributes: Hashable, Codable {
            public var locale: String

            public var subtitle: String?

            public init(
                locale: String,
                subtitle: String? = nil
            ) {
                self.locale = locale
                self.subtitle = subtitle
            }

            private enum CodingKeys: String, CodingKey {
                case locale
                case subtitle
            }
        }

        public struct Relationships: Hashable, Codable {
            public var appClipDefaultExperience: AppClipDefaultExperience

            public init(appClipDefaultExperience: AppClipDefaultExperience) {
                self.appClipDefaultExperience = appClipDefaultExperience
            }

            private enum CodingKeys: String, CodingKey {
                case appClipDefaultExperience
            }

            public struct AppClipDefaultExperience: Hashable, Codable {
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
                        case appClipDefaultExperiences
                    }
                }
            }
        }
    }
}

// swiftlint:enable all