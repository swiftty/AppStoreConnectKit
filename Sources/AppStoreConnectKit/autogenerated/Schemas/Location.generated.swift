// autogenerated

// swiftlint:disable all
import Foundation

public struct Location: Hashable, Codable {
    public var latitude: Float?

    public var longitude: Float?

    public init(
        latitude: Float? = nil,
        longitude: Float? = nil
    ) {
        self.latitude = latitude
        self.longitude = longitude
    }

    private enum CodingKeys: String, CodingKey {
        case latitude
        case longitude
    }
}

// swiftlint:enable all