// autogenerated

// swiftlint:disable all
import Foundation

public struct CiGitUser: Hashable, Codable {
    public var avatarUrl: URL?

    public var displayName: String?

    public init(
        avatarUrl: URL? = nil,
        displayName: String? = nil
    ) {
        self.avatarUrl = avatarUrl
        self.displayName = displayName
    }

    private enum CodingKeys: String, CodingKey {
        case avatarUrl
        case displayName
    }
}

// swiftlint:enable all