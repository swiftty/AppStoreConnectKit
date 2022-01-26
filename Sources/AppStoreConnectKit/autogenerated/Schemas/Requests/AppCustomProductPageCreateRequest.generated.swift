// autogenerated

// swiftlint:disable all
import Foundation

public struct AppCustomProductPageCreateRequest: Hashable, Codable {
    public var data: Data

    public var included: [Included]?

    public init(
        data: Data,
        included: [Included]? = nil
    ) {
        self.data = data
        self.included = included
    }

    private enum CodingKeys: String, CodingKey {
        case data
        case included
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
            case appCustomProductPages
        }

        public struct Attributes: Hashable, Codable {
            public var name: String

            public init(name: String) {
                self.name = name
            }

            private enum CodingKeys: String, CodingKey {
                case name
            }
        }

        public struct Relationships: Hashable, Codable {
            public var app: App

            public var appCustomProductPageVersions: AppCustomProductPageVersions?

            public var appStoreVersionTemplate: AppStoreVersionTemplate?

            public var customProductPageTemplate: CustomProductPageTemplate?

            public init(
                app: App,
                appCustomProductPageVersions: AppCustomProductPageVersions? = nil,
                appStoreVersionTemplate: AppStoreVersionTemplate? = nil,
                customProductPageTemplate: CustomProductPageTemplate? = nil
            ) {
                self.app = app
                self.appCustomProductPageVersions = appCustomProductPageVersions
                self.appStoreVersionTemplate = appStoreVersionTemplate
                self.customProductPageTemplate = customProductPageTemplate
            }

            private enum CodingKeys: String, CodingKey {
                case app
                case appCustomProductPageVersions
                case appStoreVersionTemplate
                case customProductPageTemplate
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

            public struct AppCustomProductPageVersions: Hashable, Codable {
                public var data: [Data]?

                public init(data: [Data]? = nil) {
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
                        case appCustomProductPageVersions
                    }
                }
            }

            public struct AppStoreVersionTemplate: Hashable, Codable {
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

                    public enum `Type`: String, Hashable, Codable {
                        case appStoreVersions
                    }
                }
            }

            public struct CustomProductPageTemplate: Hashable, Codable {
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

                    public enum `Type`: String, Hashable, Codable {
                        case appCustomProductPages
                    }
                }
            }
        }
    }

    public enum Included: Hashable, Codable {
        case appCustomProductPageLocalizationInlineCreate(AppCustomProductPageLocalizationInlineCreate)
        case appCustomProductPageVersionInlineCreate(AppCustomProductPageVersionInlineCreate)

        public init(from decoder: Decoder) throws {
            self = try {
                var lastError: Error!
                do {
                    return .appCustomProductPageLocalizationInlineCreate(try AppCustomProductPageLocalizationInlineCreate(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .appCustomProductPageVersionInlineCreate(try AppCustomProductPageVersionInlineCreate(from: decoder))
                } catch {
                    lastError = error
                }
                throw lastError
            }()
        }

        public func encode(to encoder: Encoder) throws {
            switch self {
            case .appCustomProductPageLocalizationInlineCreate(let value):
                try value.encode(to: encoder)

            case .appCustomProductPageVersionInlineCreate(let value):
                try value.encode(to: encoder)
            }
        }
    }
}

// swiftlint:enable all
