// autogenerated

// swiftlint:disable all
import Foundation

public struct IdfaDeclarationCreateRequest: Hashable, Codable {
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

        public enum `Type`: Hashable, Codable, RawRepresentable {
            case idfaDeclarations
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .idfaDeclarations: return "idfaDeclarations"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "idfaDeclarations": self = .idfaDeclarations
                default: self = .unknown(rawValue)
                }
            }
        }

        public struct Attributes: Hashable, Codable {
            public var attributesActionWithPreviousAd: Bool

            public var attributesAppInstallationToPreviousAd: Bool

            public var honorsLimitedAdTracking: Bool

            public var servesAds: Bool

            public init(
                attributesActionWithPreviousAd: Bool,
                attributesAppInstallationToPreviousAd: Bool,
                honorsLimitedAdTracking: Bool,
                servesAds: Bool
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
            public var appStoreVersion: AppStoreVersion

            public init(appStoreVersion: AppStoreVersion) {
                self.appStoreVersion = appStoreVersion
            }

            private enum CodingKeys: String, CodingKey {
                case appStoreVersion
            }

            public struct AppStoreVersion: Hashable, Codable {
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

                    public enum `Type`: Hashable, Codable, RawRepresentable {
                        case appStoreVersions
                        case unknown(String)

                        public var rawValue: String {
                            switch self {
                            case .appStoreVersions: return "appStoreVersions"
                            case .unknown(let rawValue): return rawValue
                            }
                        }

                        public init(rawValue: String) {
                            switch rawValue {
                            case "appStoreVersions": self = .appStoreVersions
                            default: self = .unknown(rawValue)
                            }
                        }
                    }
                }
            }
        }
    }
}

// swiftlint:enable all
