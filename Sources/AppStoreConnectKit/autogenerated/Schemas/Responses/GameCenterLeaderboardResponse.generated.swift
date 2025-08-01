// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterLeaderboardResponse: Hashable, Codable, Sendable {
    public var data: GameCenterLeaderboard

    public var included: [Included]?

    public var links: DocumentLinks

    public init(
        data: GameCenterLeaderboard,
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
        case gameCenterGroup(GameCenterGroup)
        case gameCenterLeaderboard(GameCenterLeaderboard)
        case gameCenterLeaderboardSet(GameCenterLeaderboardSet)
        case gameCenterLeaderboardLocalization(GameCenterLeaderboardLocalization)
        case gameCenterLeaderboardRelease(GameCenterLeaderboardRelease)
        case gameCenterActivity(GameCenterActivity)
        case gameCenterChallenge(GameCenterChallenge)

        public init(from decoder: Decoder) throws {
            self = try {
                var lastError: Error!
                do {
                    return .gameCenterDetail(try GameCenterDetail(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .gameCenterGroup(try GameCenterGroup(from: decoder))
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
                    return .gameCenterLeaderboardLocalization(try GameCenterLeaderboardLocalization(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .gameCenterLeaderboardRelease(try GameCenterLeaderboardRelease(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .gameCenterActivity(try GameCenterActivity(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .gameCenterChallenge(try GameCenterChallenge(from: decoder))
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

            case .gameCenterGroup(let value):
                try value.encode(to: encoder)

            case .gameCenterLeaderboard(let value):
                try value.encode(to: encoder)

            case .gameCenterLeaderboardSet(let value):
                try value.encode(to: encoder)

            case .gameCenterLeaderboardLocalization(let value):
                try value.encode(to: encoder)

            case .gameCenterLeaderboardRelease(let value):
                try value.encode(to: encoder)

            case .gameCenterActivity(let value):
                try value.encode(to: encoder)

            case .gameCenterChallenge(let value):
                try value.encode(to: encoder)
            }
        }
    }
}

// swiftlint:enable all
