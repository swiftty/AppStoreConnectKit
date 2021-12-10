// autogenerated

// swiftlint:disable all
import Foundation

public struct AppPriceResponse: Hashable, Codable {
    public var data: AppPrice

    public var included: [Included]?

    public var links: DocumentLinks

    public init(
        data: AppPrice,
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

    public enum Included: Hashable, Codable {
        case app(App)
        case appPriceTier(AppPriceTier)

        public init(from decoder: Decoder) throws {
            self = try {
                var lastError: Error!
                do {
                    return .app(try App(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .appPriceTier(try AppPriceTier(from: decoder))
                } catch {
                    lastError = error
                }
                throw lastError
            }()
        }

        public func encode(to encoder: Encoder) throws {
            switch self {
            case .app(let value):
                try value.encode(to: encoder)

            case .appPriceTier(let value):
                try value.encode(to: encoder)
            }
        }
    }
}

// swiftlint:enable all
