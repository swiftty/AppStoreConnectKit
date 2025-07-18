// autogenerated

// swiftlint:disable all
import Foundation

public struct IntegerRange: Hashable, Codable, Sendable {
    public var maximum: Int?

    public var minimum: Int?

    public init(
        maximum: Int? = nil,
        minimum: Int? = nil
    ) {
        self.maximum = maximum
        self.minimum = minimum
    }

    private enum CodingKeys: String, CodingKey {
        case maximum
        case minimum
    }
}

// swiftlint:enable all
