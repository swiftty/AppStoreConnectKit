// autogenerated

// swiftlint:disable all
import Foundation

public struct AppClipAdvancedExperienceLocalization: Hashable, Codable {
    public var id: String

    public var type: `Type`

    public var attributes: Attributes?

    public var links: ResourceLinks

    public init(
        id: String,
        type: `Type`,
        attributes: Attributes? = nil,
        links: ResourceLinks
    ) {
        self.id = id
        self.type = type
        self.attributes = attributes
        self.links = links
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case attributes
        case links
    }

    public enum `Type`: Hashable, Codable, RawRepresentable {
        case appClipAdvancedExperienceLocalizations
        case unknown(String)

        public var rawValue: String {
            switch self {
            case .appClipAdvancedExperienceLocalizations: return "appClipAdvancedExperienceLocalizations"
            case .unknown(let rawValue): return rawValue
            }
        }

        public init(rawValue: String) {
            switch rawValue {
            case "appClipAdvancedExperienceLocalizations": self = .appClipAdvancedExperienceLocalizations
            default: self = .unknown(rawValue)
            }
        }
    }

    public struct Attributes: Hashable, Codable {
        public var language: AppClipAdvancedExperienceLanguage?

        public var subtitle: String?

        public var title: String?

        public init(
            language: AppClipAdvancedExperienceLanguage? = nil,
            subtitle: String? = nil,
            title: String? = nil
        ) {
            self.language = language
            self.subtitle = subtitle
            self.title = title
        }

        private enum CodingKeys: String, CodingKey {
            case language
            case subtitle
            case title
        }
    }
}

// swiftlint:enable all
