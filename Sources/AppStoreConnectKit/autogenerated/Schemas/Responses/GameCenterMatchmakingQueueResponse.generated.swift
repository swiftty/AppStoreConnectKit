// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterMatchmakingQueueResponse: Hashable, Codable {
    public var data: GameCenterMatchmakingQueue

    public var included: [GameCenterMatchmakingRuleSet]?

    public var links: DocumentLinks

    public init(
        data: GameCenterMatchmakingQueue,
        included: [GameCenterMatchmakingRuleSet]? = nil,
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
}

// swiftlint:enable all