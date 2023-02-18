// autogenerated

// swiftlint:disable all
import Foundation

public struct SandboxTesterV2UpdateRequest: Hashable, Codable {
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

        public enum `Type`: String, Hashable, Codable {
            case sandboxTesters
        }

        public struct Attributes: Hashable, Codable {
            public var interruptPurchases: Bool?

            public var subscriptionRenewalRate: SubscriptionRenewalRate?

            public var territory: TerritoryCode?

            public init(
                interruptPurchases: Bool? = nil,
                subscriptionRenewalRate: SubscriptionRenewalRate? = nil,
                territory: TerritoryCode? = nil
            ) {
                self.interruptPurchases = interruptPurchases
                self.subscriptionRenewalRate = subscriptionRenewalRate
                self.territory = territory
            }

            private enum CodingKeys: String, CodingKey {
                case interruptPurchases
                case subscriptionRenewalRate
                case territory
            }

            public enum SubscriptionRenewalRate: Hashable, Codable, RawRepresentable {
                case monthlyRenewalEveryFifteenMinutes
                case monthlyRenewalEveryFiveMinutes
                case monthlyRenewalEveryOneHour
                case monthlyRenewalEveryThirtyMinutes
                case monthlyRenewalEveryThreeMinutes
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .monthlyRenewalEveryFifteenMinutes: return "MONTHLY_RENEWAL_EVERY_FIFTEEN_MINUTES"
                    case .monthlyRenewalEveryFiveMinutes: return "MONTHLY_RENEWAL_EVERY_FIVE_MINUTES"
                    case .monthlyRenewalEveryOneHour: return "MONTHLY_RENEWAL_EVERY_ONE_HOUR"
                    case .monthlyRenewalEveryThirtyMinutes: return "MONTHLY_RENEWAL_EVERY_THIRTY_MINUTES"
                    case .monthlyRenewalEveryThreeMinutes: return "MONTHLY_RENEWAL_EVERY_THREE_MINUTES"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "MONTHLY_RENEWAL_EVERY_FIFTEEN_MINUTES": self = .monthlyRenewalEveryFifteenMinutes
                    case "MONTHLY_RENEWAL_EVERY_FIVE_MINUTES": self = .monthlyRenewalEveryFiveMinutes
                    case "MONTHLY_RENEWAL_EVERY_ONE_HOUR": self = .monthlyRenewalEveryOneHour
                    case "MONTHLY_RENEWAL_EVERY_THIRTY_MINUTES": self = .monthlyRenewalEveryThirtyMinutes
                    case "MONTHLY_RENEWAL_EVERY_THREE_MINUTES": self = .monthlyRenewalEveryThreeMinutes
                    default: self = .unknown(rawValue)
                    }
                }
            }
        }
    }
}

// swiftlint:enable all
