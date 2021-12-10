// autogenerated

// swiftlint:disable all
import Foundation

public struct BetaBuildLocalizationCreateRequest: Hashable, Codable {
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
            case betaBuildLocalizations
        }

        public struct Attributes: Hashable, Codable {
            public var locale: String

            public var whatsNew: String?

            public init(
                locale: String,
                whatsNew: String? = nil
            ) {
                self.locale = locale
                self.whatsNew = whatsNew
            }

            private enum CodingKeys: String, CodingKey {
                case locale
                case whatsNew
            }
        }

        public struct Relationships: Hashable, Codable {
            public var build: Build

            public init(build: Build) {
                self.build = build
            }

            private enum CodingKeys: String, CodingKey {
                case build
            }

            public struct Build: Hashable, Codable {
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
                        case builds
                    }
                }
            }
        }
    }
}

// swiftlint:enable all
