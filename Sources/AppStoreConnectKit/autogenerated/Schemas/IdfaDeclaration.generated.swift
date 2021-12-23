// autogenerated

// swiftlint:disable all
import Foundation

public struct IdfaDeclaration: Hashable, Codable {
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
        case idfaDeclarations
    }

    public struct Attributes: Hashable, Codable {
        public var attributesActionWithPreviousAd: Bool?

        public var attributesAppInstallationToPreviousAd: Bool?

        public var honorsLimitedAdTracking: Bool?

        public var servesAds: Bool?

        public init(
            attributesActionWithPreviousAd: Bool? = nil,
            attributesAppInstallationToPreviousAd: Bool? = nil,
            honorsLimitedAdTracking: Bool? = nil,
            servesAds: Bool? = nil
        ) {
            self.attributesActionWithPreviousAd = attributesActionWithPreviousAd
            self.attributesAppInstallationToPreviousAd = attributesAppInstallationToPreviousAd
            self.honorsLimitedAdTracking = honorsLimitedAdTracking
            self.servesAds = servesAds
        }

        private enum CodingKeys: String, CodingKey {
            case attributesActionWithPreviousAd
            case attributesAppInstallationToPreviousAd
            case honorsLimitedAdTracking
            case servesAds
        }
    }

    public struct Relationships: Hashable, Codable {
        public var appStoreVersion: AppStoreVersion?

        public init(appStoreVersion: AppStoreVersion? = nil) {
            self.appStoreVersion = appStoreVersion
        }

        private enum CodingKeys: String, CodingKey {
            case appStoreVersion
        }

        public struct AppStoreVersion: Hashable, Codable {
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
                    case appStoreVersions
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