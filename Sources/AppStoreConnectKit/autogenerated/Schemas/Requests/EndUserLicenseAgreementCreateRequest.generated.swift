// autogenerated

// swiftlint:disable all
import Foundation

public struct EndUserLicenseAgreementCreateRequest: Hashable, Codable {
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
            case endUserLicenseAgreements
        }

        public struct Attributes: Hashable, Codable {
            public var agreementText: String

            public init(agreementText: String) {
                self.agreementText = agreementText
            }

            private enum CodingKeys: String, CodingKey {
                case agreementText
            }
        }

        public struct Relationships: Hashable, Codable {
            public var app: App

            public var territories: Territories

            public init(
                app: App,
                territories: Territories
            ) {
                self.app = app
                self.territories = territories
            }

            private enum CodingKeys: String, CodingKey {
                case app
                case territories
            }

            public struct App: Hashable, Codable {
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
                        case apps
                    }
                }
            }

            public struct Territories: Hashable, Codable {
                public var data: [Data]

                public init(data: [Data]) {
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
                        case territories
                    }
                }
            }
        }
    }
}

// swiftlint:enable all
