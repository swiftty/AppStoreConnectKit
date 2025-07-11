// autogenerated

// swiftlint:disable all
import Foundation

public struct AppEventUpdateRequest: Hashable, Codable, Sendable {
    public var data: Data

    public init(data: Data) {
        self.data = data
    }

    private enum CodingKeys: String, CodingKey {
        case data
    }

    public struct Data: Hashable, Codable, Sendable {
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

        public enum `Type`: String, Hashable, Codable, Sendable {
            case appEvents
        }

        public struct Attributes: Hashable, Codable, Sendable {
            public var badge: Badge?

            public var deepLink: URL?

            public var primaryLocale: String?

            public var priority: Priority?

            public var purchaseRequirement: String?

            public var purpose: Purpose?

            public var referenceName: String?

            public var territorySchedules: [TerritorySchedules]?

            public init(
                badge: Badge? = nil,
                deepLink: URL? = nil,
                primaryLocale: String? = nil,
                priority: Priority? = nil,
                purchaseRequirement: String? = nil,
                purpose: Purpose? = nil,
                referenceName: String? = nil,
                territorySchedules: [TerritorySchedules]? = nil
            ) {
                self.badge = badge
                self.deepLink = deepLink
                self.primaryLocale = primaryLocale
                self.priority = priority
                self.purchaseRequirement = purchaseRequirement
                self.purpose = purpose
                self.referenceName = referenceName
                self.territorySchedules = territorySchedules
            }

            private enum CodingKeys: String, CodingKey {
                case badge
                case deepLink
                case primaryLocale
                case priority
                case purchaseRequirement
                case purpose
                case referenceName
                case territorySchedules
            }

            public struct Badge: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var challenge: Self {
                    .init(rawValue: "CHALLENGE")
                }

                public static var competition: Self {
                    .init(rawValue: "COMPETITION")
                }

                public static var liveEvent: Self {
                    .init(rawValue: "LIVE_EVENT")
                }

                public static var majorUpdate: Self {
                    .init(rawValue: "MAJOR_UPDATE")
                }

                public static var newSeason: Self {
                    .init(rawValue: "NEW_SEASON")
                }

                public static var premiere: Self {
                    .init(rawValue: "PREMIERE")
                }

                public static var specialEvent: Self {
                    .init(rawValue: "SPECIAL_EVENT")
                }

                public var description: String {
                    rawValue
                }

                public var rawValue: String

                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
            }

            public struct Priority: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var high: Self {
                    .init(rawValue: "HIGH")
                }

                public static var normal: Self {
                    .init(rawValue: "NORMAL")
                }

                public var description: String {
                    rawValue
                }

                public var rawValue: String

                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
            }

            public struct Purpose: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var appropriateForAllUsers: Self {
                    .init(rawValue: "APPROPRIATE_FOR_ALL_USERS")
                }

                public static var attractNewUsers: Self {
                    .init(rawValue: "ATTRACT_NEW_USERS")
                }

                public static var bringBackLapsedUsers: Self {
                    .init(rawValue: "BRING_BACK_LAPSED_USERS")
                }

                public static var keepActiveUsersInformed: Self {
                    .init(rawValue: "KEEP_ACTIVE_USERS_INFORMED")
                }

                public var description: String {
                    rawValue
                }

                public var rawValue: String

                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
            }

            public struct TerritorySchedules: Hashable, Codable, Sendable {
                public var eventEnd: String?

                public var eventStart: String?

                public var publishStart: String?

                public var territories: [String]?

                public init(
                    eventEnd: String? = nil,
                    eventStart: String? = nil,
                    publishStart: String? = nil,
                    territories: [String]? = nil
                ) {
                    self.eventEnd = eventEnd
                    self.eventStart = eventStart
                    self.publishStart = publishStart
                    self.territories = territories
                }

                private enum CodingKeys: String, CodingKey {
                    case eventEnd
                    case eventStart
                    case publishStart
                    case territories
                }
            }
        }
    }
}

// swiftlint:enable all
