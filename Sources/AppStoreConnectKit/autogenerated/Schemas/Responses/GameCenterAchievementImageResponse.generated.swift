// autogenerated

// swiftlint:disable all
import Foundation

public struct GameCenterAchievementImageResponse: Hashable, Codable {
    public var data: GameCenterAchievementImage

    public var included: [GameCenterAchievementLocalization]?

    public var links: DocumentLinks

    public init(
        data: GameCenterAchievementImage,
        included: [GameCenterAchievementLocalization]? = nil,
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
