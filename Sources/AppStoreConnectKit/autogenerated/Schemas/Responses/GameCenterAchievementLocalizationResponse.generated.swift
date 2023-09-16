// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterAchievementLocalizationResponse: Hashable, Codable {
    public var data: GameCenterAchievementLocalization

    public var included: [Included]?

    public var links: DocumentLinks

    public init(
        data: GameCenterAchievementLocalization,
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
        case gameCenterAchievement(GameCenterAchievement)
        case gameCenterAchievementImage(GameCenterAchievementImage)

        public init(from decoder: Decoder) throws {
            self = try {
                var lastError: Error!
                do {
                    return .gameCenterAchievement(try GameCenterAchievement(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .gameCenterAchievementImage(try GameCenterAchievementImage(from: decoder))
                } catch {
                    lastError = error
                }
                throw lastError
            }()
        }

        public func encode(to encoder: Encoder) throws {
            switch self {
            case .gameCenterAchievement(let value):
                try value.encode(to: encoder)

            case .gameCenterAchievementImage(let value):
                try value.encode(to: encoder)
            }
        }
    }
}

// swiftlint:enable all
