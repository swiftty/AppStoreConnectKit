// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterAchievementReleaseResponse: Hashable, Codable, Sendable {
    public var data: GameCenterAchievementRelease

    public var included: [Included]?

    public var links: DocumentLinks

    public init(
        data: GameCenterAchievementRelease,
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
        case gameCenterDetail(GameCenterDetail)
        case gameCenterAchievement(GameCenterAchievement)

        public init(from decoder: Decoder) throws {
            self = try {
                var lastError: Error!
                do {
                    return .gameCenterDetail(try GameCenterDetail(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .gameCenterAchievement(try GameCenterAchievement(from: decoder))
                } catch {
                    lastError = error
                }
                throw lastError
            }()
        }

        public func encode(to encoder: Encoder) throws {
            switch self {
            case .gameCenterDetail(let value):
                try value.encode(to: encoder)

            case .gameCenterAchievement(let value):
                try value.encode(to: encoder)
            }
        }
    }
}

// swiftlint:enable all
