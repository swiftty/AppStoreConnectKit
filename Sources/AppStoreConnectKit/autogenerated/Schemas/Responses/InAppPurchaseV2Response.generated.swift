// autogenerated

// swiftlint:disable all
import Foundation

public struct InAppPurchaseV2Response: Hashable, Codable, Sendable {
    public var data: InAppPurchaseV2

    public var included: [Included]?

    public var links: DocumentLinks

    public init(
        data: InAppPurchaseV2,
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
        case inAppPurchaseLocalization(InAppPurchaseLocalization)
        case inAppPurchasePricePoint(InAppPurchasePricePoint)
        case inAppPurchaseContent(InAppPurchaseContent)
        case inAppPurchaseAppStoreReviewScreenshot(InAppPurchaseAppStoreReviewScreenshot)
        case promotedPurchase(PromotedPurchase)
        case inAppPurchasePriceSchedule(InAppPurchasePriceSchedule)
        case inAppPurchaseAvailability(InAppPurchaseAvailability)
        case inAppPurchaseImage(InAppPurchaseImage)

        public init(from decoder: Decoder) throws {
            self = try {
                var lastError: Error!
                do {
                    return .inAppPurchaseLocalization(try InAppPurchaseLocalization(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .inAppPurchasePricePoint(try InAppPurchasePricePoint(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .inAppPurchaseContent(try InAppPurchaseContent(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .inAppPurchaseAppStoreReviewScreenshot(try InAppPurchaseAppStoreReviewScreenshot(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .promotedPurchase(try PromotedPurchase(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .inAppPurchasePriceSchedule(try InAppPurchasePriceSchedule(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .inAppPurchaseAvailability(try InAppPurchaseAvailability(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .inAppPurchaseImage(try InAppPurchaseImage(from: decoder))
                } catch {
                    lastError = error
                }
                throw lastError
            }()
        }

        public func encode(to encoder: Encoder) throws {
            switch self {
            case .inAppPurchaseLocalization(let value):
                try value.encode(to: encoder)

            case .inAppPurchasePricePoint(let value):
                try value.encode(to: encoder)

            case .inAppPurchaseContent(let value):
                try value.encode(to: encoder)

            case .inAppPurchaseAppStoreReviewScreenshot(let value):
                try value.encode(to: encoder)

            case .promotedPurchase(let value):
                try value.encode(to: encoder)

            case .inAppPurchasePriceSchedule(let value):
                try value.encode(to: encoder)

            case .inAppPurchaseAvailability(let value):
                try value.encode(to: encoder)

            case .inAppPurchaseImage(let value):
                try value.encode(to: encoder)
            }
        }
    }
}

// swiftlint:enable all
