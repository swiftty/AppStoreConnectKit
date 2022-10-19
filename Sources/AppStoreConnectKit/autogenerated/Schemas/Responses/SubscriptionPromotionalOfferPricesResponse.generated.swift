// autogenerated

// swiftlint:disable all
import Foundation

public struct SubscriptionPromotionalOfferPricesResponse: Hashable, Codable {
    public var data: [SubscriptionPromotionalOfferPrice]

    public var included: [Included]?

    public var links: PagedDocumentLinks

    public var meta: PagingInformation?

    public init(
        data: [SubscriptionPromotionalOfferPrice],
        included: [Included]? = nil,
        links: PagedDocumentLinks,
        meta: PagingInformation? = nil
    ) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    private enum CodingKeys: String, CodingKey {
        case data
        case included
        case links
        case meta
    }

    public enum Included: Hashable, Codable {
        case territory(Territory)
        case subscriptionPricePoint(SubscriptionPricePoint)

        public init(from decoder: Decoder) throws {
            self = try {
                var lastError: Error!
                do {
                    return .territory(try Territory(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .subscriptionPricePoint(try SubscriptionPricePoint(from: decoder))
                } catch {
                    lastError = error
                }
                throw lastError
            }()
        }

        public func encode(to encoder: Encoder) throws {
            switch self {
            case .territory(let value):
                try value.encode(to: encoder)

            case .subscriptionPricePoint(let value):
                try value.encode(to: encoder)
            }
        }
    }
}

// swiftlint:enable all
