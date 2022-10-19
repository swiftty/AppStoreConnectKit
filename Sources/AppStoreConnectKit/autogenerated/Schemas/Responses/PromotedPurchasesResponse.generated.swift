// autogenerated

// swiftlint:disable all
import Foundation

public struct PromotedPurchasesResponse: Hashable, Codable {
    public var data: [PromotedPurchase]

    public var included: [Included]?

    public var links: PagedDocumentLinks

    public var meta: PagingInformation?

    public init(
        data: [PromotedPurchase],
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
        case inAppPurchaseV2(InAppPurchaseV2)
        case subscription(Subscription)
        case promotedPurchaseImage(PromotedPurchaseImage)

        public init(from decoder: Decoder) throws {
            self = try {
                var lastError: Error!
                do {
                    return .inAppPurchaseV2(try InAppPurchaseV2(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .subscription(try Subscription(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .promotedPurchaseImage(try PromotedPurchaseImage(from: decoder))
                } catch {
                    lastError = error
                }
                throw lastError
            }()
        }

        public func encode(to encoder: Encoder) throws {
            switch self {
            case .inAppPurchaseV2(let value):
                try value.encode(to: encoder)

            case .subscription(let value):
                try value.encode(to: encoder)

            case .promotedPurchaseImage(let value):
                try value.encode(to: encoder)
            }
        }
    }
}

// swiftlint:enable all
