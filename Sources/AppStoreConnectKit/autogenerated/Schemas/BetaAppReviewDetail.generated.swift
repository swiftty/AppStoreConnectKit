// autogenerated

// swiftlint:disable all
import Foundation

public struct BetaAppReviewDetail: Hashable, Codable {
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

    public enum `Type`: Hashable, Codable, RawRepresentable {
        case betaAppReviewDetails
        case unknown(String)

        public var rawValue: String {
            switch self {
            case .betaAppReviewDetails: return "betaAppReviewDetails"
            case .unknown(let rawValue): return rawValue
            }
        }

        public init(rawValue: String) {
            switch rawValue {
            case "betaAppReviewDetails": self = .betaAppReviewDetails
            default: self = .unknown(rawValue)
            }
        }
    }

    public struct Attributes: Hashable, Codable {
        public var contactEmail: String?

        public var contactFirstName: String?

        public var contactLastName: String?

        public var contactPhone: String?

        public var demoAccountName: String?

        public var demoAccountPassword: String?

        public var demoAccountRequired: Bool?

        public var notes: String?

        public init(
            contactEmail: String? = nil,
            contactFirstName: String? = nil,
            contactLastName: String? = nil,
            contactPhone: String? = nil,
            demoAccountName: String? = nil,
            demoAccountPassword: String? = nil,
            demoAccountRequired: Bool? = nil,
            notes: String? = nil
        ) {
            self.contactEmail = contactEmail
            self.contactFirstName = contactFirstName
            self.contactLastName = contactLastName
            self.contactPhone = contactPhone
            self.demoAccountName = demoAccountName
            self.demoAccountPassword = demoAccountPassword
            self.demoAccountRequired = demoAccountRequired
            self.notes = notes
        }

        private enum CodingKeys: String, CodingKey {
            case contactEmail
            case contactFirstName
            case contactLastName
            case contactPhone
            case demoAccountName
            case demoAccountPassword
            case demoAccountRequired
            case notes
        }
    }

    public struct Relationships: Hashable, Codable {
        public var app: App?

        public init(app: App? = nil) {
            self.app = app
        }

        private enum CodingKeys: String, CodingKey {
            case app
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

                public enum `Type`: Hashable, Codable, RawRepresentable {
                    case apps
                    case unknown(String)

                    public var rawValue: String {
                        switch self {
                        case .apps: return "apps"
                        case .unknown(let rawValue): return rawValue
                        }
                    }

                    public init(rawValue: String) {
                        switch rawValue {
                        case "apps": self = .apps
                        default: self = .unknown(rawValue)
                        }
                    }
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
