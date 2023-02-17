// autogenerated

// swiftlint:disable all
import Foundation

public struct AppEncryptionDeclaration: Hashable, Codable {
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
        case appEncryptionDeclarations
    }

    public struct Attributes: Hashable, Codable {
        public var appDescription: String?

        public var appEncryptionDeclarationState: AppEncryptionDeclarationState?

        public var availableOnFrenchStore: Bool?

        public var codeValue: String?

        public var containsProprietaryCryptography: Bool?

        public var containsThirdPartyCryptography: Bool?

        public var createdDate: String?

        @available(*, deprecated)
        public var documentName: String?

        @available(*, deprecated)
        public var documentType: String?

        @available(*, deprecated)
        public var documentUrl: String?

        public var exempt: Bool?

        @available(*, deprecated)
        public var platform: Platform?

        @available(*, deprecated)
        public var uploadedDate: String?

        @available(*, deprecated)
        public var usesEncryption: Bool?

        public init(
            appDescription: String? = nil,
            appEncryptionDeclarationState: AppEncryptionDeclarationState? = nil,
            availableOnFrenchStore: Bool? = nil,
            codeValue: String? = nil,
            containsProprietaryCryptography: Bool? = nil,
            containsThirdPartyCryptography: Bool? = nil,
            createdDate: String? = nil,
            documentName: String? = nil,
            documentType: String? = nil,
            documentUrl: String? = nil,
            exempt: Bool? = nil,
            platform: Platform? = nil,
            uploadedDate: String? = nil,
            usesEncryption: Bool? = nil
        ) {
            self.appDescription = appDescription
            self.appEncryptionDeclarationState = appEncryptionDeclarationState
            self.availableOnFrenchStore = availableOnFrenchStore
            self.codeValue = codeValue
            self.containsProprietaryCryptography = containsProprietaryCryptography
            self.containsThirdPartyCryptography = containsThirdPartyCryptography
            self.createdDate = createdDate
            self.documentName = documentName
            self.documentType = documentType
            self.documentUrl = documentUrl
            self.exempt = exempt
            self.platform = platform
            self.uploadedDate = uploadedDate
            self.usesEncryption = usesEncryption
        }

        private enum CodingKeys: String, CodingKey {
            case appDescription
            case appEncryptionDeclarationState
            case availableOnFrenchStore
            case codeValue
            case containsProprietaryCryptography
            case containsThirdPartyCryptography
            case createdDate
            case documentName
            case documentType
            case documentUrl
            case exempt
            case platform
            case uploadedDate
            case usesEncryption
        }
    }

    public struct Relationships: Hashable, Codable {
        public var app: App?

        public var appEncryptionDeclarationDocument: AppEncryptionDeclarationDocument?

        public var builds: Builds?

        public init(
            app: App? = nil,
            appEncryptionDeclarationDocument: AppEncryptionDeclarationDocument? = nil,
            builds: Builds? = nil
        ) {
            self.app = app
            self.appEncryptionDeclarationDocument = appEncryptionDeclarationDocument
            self.builds = builds
        }

        private enum CodingKeys: String, CodingKey {
            case app
            case appEncryptionDeclarationDocument
            case builds
        }

        public struct App: Hashable, Codable {
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
                    case apps
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

        public struct AppEncryptionDeclarationDocument: Hashable, Codable {
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
                    case appEncryptionDeclarationDocuments
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

        public struct Builds: Hashable, Codable {
            public var data: [Data]?

            public var links: Links?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: Links? = nil,
                meta: PagingInformation? = nil
            ) {
                self.data = data
                self.links = links
                self.meta = meta
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
                case meta
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
