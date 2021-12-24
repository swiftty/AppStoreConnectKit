// autogenerated

// swiftlint:disable all
import Foundation

public struct IdfaDeclarationUpdateRequest: Hashable, Codable {
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

        public var attributes: Attributes?

        public init(
            id: String,
            type: `Type`,
            attributes: Attributes? = nil
        ) {
            self.id = id
            self.type = type
            self.attributes = attributes
        }

        private enum CodingKeys: String, CodingKey {
            case id
            case type
            case attributes
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
    }
}

// swiftlint:enable all
