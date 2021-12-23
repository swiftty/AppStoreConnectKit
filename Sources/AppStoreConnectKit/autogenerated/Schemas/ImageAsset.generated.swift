// autogenerated

// swiftlint:disable all
import Foundation

public struct ImageAsset: Hashable, Codable {
    public var width: Int?

    public var height: Int?

    public var templateUrl: String?

    public init(
        width: Int? = nil,
        height: Int? = nil,
        templateUrl: String? = nil
    ) {
        self.width = width
        self.height = height
        self.templateUrl = templateUrl
    }

    private enum CodingKeys: String, CodingKey {
        case width
        case height
        case templateUrl
    }
}

// swiftlint:enable all