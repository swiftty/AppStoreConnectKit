// autogenerated

// swiftlint:disable all
import Foundation

public struct AppEventLocalizationResponse: Hashable, Codable, Sendable {
    public var data: AppEventLocalization

    public var included: [Included]?

    public var links: DocumentLinks

    public init(
        data: AppEventLocalization,
        included: [Included]? = nil,
        links: DocumentLinks
    ) {
        self.data = data
        self.included = included
        self.links = links
    }

    private enum CodingKeys: String, CodingKey {
        case data
        case included
        case links
    }

    public enum Included: Hashable, Codable, Sendable {
        case appEvent(AppEvent)
        case appEventScreenshot(AppEventScreenshot)
        case appEventVideoClip(AppEventVideoClip)

        public init(from decoder: Decoder) throws {
            self = try {
                var lastError: Error!
                do {
                    return .appEvent(try AppEvent(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .appEventScreenshot(try AppEventScreenshot(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .appEventVideoClip(try AppEventVideoClip(from: decoder))
                } catch {
                    lastError = error
                }
                throw lastError
            }()
        }

        public func encode(to encoder: Encoder) throws {
            switch self {
            case .appEvent(let value):
                try value.encode(to: encoder)

            case .appEventScreenshot(let value):
                try value.encode(to: encoder)

            case .appEventVideoClip(let value):
                try value.encode(to: encoder)
            }
        }
    }
}

// swiftlint:enable all
