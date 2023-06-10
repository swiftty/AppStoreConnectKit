// autogenerated

// swiftlint:disable all
import Foundation

public struct AppsResponse: Hashable, Codable {
    public var data: [App]

    public var included: [Included]?

    public var links: PagedDocumentLinks

    public var meta: PagingInformation?

    public init(
        data: [App],
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
        case ciProduct(CiProduct)
        case betaGroup(BetaGroup)
        case appStoreVersion(AppStoreVersion)
        case preReleaseVersion(PreReleaseVersion)
        case betaAppLocalization(BetaAppLocalization)
        case build(Build)
        case betaLicenseAgreement(BetaLicenseAgreement)
        case betaAppReviewDetail(BetaAppReviewDetail)
        case appInfo(AppInfo)
        case appClip(AppClip)
        case endUserLicenseAgreement(EndUserLicenseAgreement)
        case appPreOrder(AppPreOrder)
        case appPrice(AppPrice)
        case territory(Territory)
        case inAppPurchase(InAppPurchase)
        case subscriptionGroup(SubscriptionGroup)
        case gameCenterEnabledVersion(GameCenterEnabledVersion)
        case appCustomProductPage(AppCustomProductPage)
        case inAppPurchaseV2(InAppPurchaseV2)
        case promotedPurchase(PromotedPurchase)
        case appEvent(AppEvent)
        case reviewSubmission(ReviewSubmission)
        case subscriptionGracePeriod(SubscriptionGracePeriod)
        case appStoreVersionExperimentV2(AppStoreVersionExperimentV2)

        public init(from decoder: Decoder) throws {
            self = try {
                var lastError: Error!
                do {
                    return .ciProduct(try CiProduct(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .betaGroup(try BetaGroup(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .appStoreVersion(try AppStoreVersion(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .preReleaseVersion(try PreReleaseVersion(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .betaAppLocalization(try BetaAppLocalization(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .build(try Build(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .betaLicenseAgreement(try BetaLicenseAgreement(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .betaAppReviewDetail(try BetaAppReviewDetail(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .appInfo(try AppInfo(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .appClip(try AppClip(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .endUserLicenseAgreement(try EndUserLicenseAgreement(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .appPreOrder(try AppPreOrder(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .appPrice(try AppPrice(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .territory(try Territory(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .inAppPurchase(try InAppPurchase(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .subscriptionGroup(try SubscriptionGroup(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .gameCenterEnabledVersion(try GameCenterEnabledVersion(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .appCustomProductPage(try AppCustomProductPage(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .inAppPurchaseV2(try InAppPurchaseV2(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .promotedPurchase(try PromotedPurchase(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .appEvent(try AppEvent(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .reviewSubmission(try ReviewSubmission(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .subscriptionGracePeriod(try SubscriptionGracePeriod(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .appStoreVersionExperimentV2(try AppStoreVersionExperimentV2(from: decoder))
                } catch {
                    lastError = error
                }
                throw lastError
            }()
        }

        public func encode(to encoder: Encoder) throws {
            switch self {
            case .ciProduct(let value):
                try value.encode(to: encoder)

            case .betaGroup(let value):
                try value.encode(to: encoder)

            case .appStoreVersion(let value):
                try value.encode(to: encoder)

            case .preReleaseVersion(let value):
                try value.encode(to: encoder)

            case .betaAppLocalization(let value):
                try value.encode(to: encoder)

            case .build(let value):
                try value.encode(to: encoder)

            case .betaLicenseAgreement(let value):
                try value.encode(to: encoder)

            case .betaAppReviewDetail(let value):
                try value.encode(to: encoder)

            case .appInfo(let value):
                try value.encode(to: encoder)

            case .appClip(let value):
                try value.encode(to: encoder)

            case .endUserLicenseAgreement(let value):
                try value.encode(to: encoder)

            case .appPreOrder(let value):
                try value.encode(to: encoder)

            case .appPrice(let value):
                try value.encode(to: encoder)

            case .territory(let value):
                try value.encode(to: encoder)

            case .inAppPurchase(let value):
                try value.encode(to: encoder)

            case .subscriptionGroup(let value):
                try value.encode(to: encoder)

            case .gameCenterEnabledVersion(let value):
                try value.encode(to: encoder)

            case .appCustomProductPage(let value):
                try value.encode(to: encoder)

            case .inAppPurchaseV2(let value):
                try value.encode(to: encoder)

            case .promotedPurchase(let value):
                try value.encode(to: encoder)

            case .appEvent(let value):
                try value.encode(to: encoder)

            case .reviewSubmission(let value):
                try value.encode(to: encoder)

            case .subscriptionGracePeriod(let value):
                try value.encode(to: encoder)

            case .appStoreVersionExperimentV2(let value):
                try value.encode(to: encoder)
            }
        }
    }
}

// swiftlint:enable all
