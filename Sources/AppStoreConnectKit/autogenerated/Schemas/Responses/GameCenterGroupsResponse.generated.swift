// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterGroupsResponse: Hashable, Codable {
    public var data: [GameCenterGroup]

    public var included: [Included]?

    public var links: PagedDocumentLinks

    public var meta: PagingInformation?

    public init(
        data: [GameCenterGroup],
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
        case gameCenterDetail(GameCenterDetail)
        case gameCenterLeaderboard(GameCenterLeaderboard)
        case gameCenterLeaderboardSet(GameCenterLeaderboardSet)
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
                    return .gameCenterLeaderboard(try GameCenterLeaderboard(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .gameCenterLeaderboardSet(try GameCenterLeaderboardSet(from: decoder))
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

            case .gameCenterLeaderboard(let value):
                try value.encode(to: encoder)

            case .gameCenterLeaderboardSet(let value):
                try value.encode(to: encoder)

            case .gameCenterAchievement(let value):
                try value.encode(to: encoder)
            }
        }
    }
}

// swiftlint:enable all
