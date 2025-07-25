// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterPlayerAchievementSubmission: Hashable, Codable, Sendable {
    public var id: String

    public var type: `Type`

    public var attributes: Attributes?

    public var links: ResourceLinks?

    public init(
        id: String,
        type: `Type`,
        attributes: Attributes? = nil,
        links: ResourceLinks? = nil
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

    public enum `Type`: String, Hashable, Codable, Sendable {
        case gameCenterPlayerAchievementSubmissions
    }

    public struct Attributes: Hashable, Codable, Sendable {
        public var bundleId: String?

        public var challengeIds: [String]?

        public var percentageAchieved: Int?

        public var scopedPlayerId: String?

        public var submittedDate: String?

        public var vendorIdentifier: String?

        public init(
            bundleId: String? = nil,
            challengeIds: [String]? = nil,
            percentageAchieved: Int? = nil,
            scopedPlayerId: String? = nil,
            submittedDate: String? = nil,
            vendorIdentifier: String? = nil
        ) {
            self.bundleId = bundleId
            self.challengeIds = challengeIds
            self.percentageAchieved = percentageAchieved
            self.scopedPlayerId = scopedPlayerId
            self.submittedDate = submittedDate
            self.vendorIdentifier = vendorIdentifier
        }

        private enum CodingKeys: String, CodingKey {
            case bundleId
            case challengeIds
            case percentageAchieved
            case scopedPlayerId
            case submittedDate
            case vendorIdentifier
        }
    }
}

// swiftlint:enable all
