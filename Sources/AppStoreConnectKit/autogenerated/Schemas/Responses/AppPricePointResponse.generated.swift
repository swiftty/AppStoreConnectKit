// autogenerated

// swiftlint:disable all
import Foundation

public struct AppPricePointResponse: Hashable, Codable {
    public var data: AppPricePoint

    public var included: [Included]?

    public var links: DocumentLinks

    public init(
        data: AppPricePoint,
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
        case appPriceTier(AppPriceTier)
        case territory(Territory)

        public init(from decoder: Decoder) throws {
            self = try {
                var lastError: Error!
                do {
                    return .appPriceTier(try AppPriceTier(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .territory(try Territory(from: decoder))
                } catch {
                    lastError = error
                }
                throw lastError
            }()
        }

        public func encode(to encoder: Encoder) throws {
            switch self {
            case .appPriceTier(let value):
                try value.encode(to: encoder)

            case .territory(let value):
                try value.encode(to: encoder)
            }
        }
    }
}

// swiftlint:enable all
