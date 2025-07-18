// autogenerated

// swiftlint:disable all
import Foundation

public struct DeviceResponse: Hashable, Codable, Sendable {
    public var data: Device

    public var links: DocumentLinks

    public init(
        data: Device,
        links: DocumentLinks
    ) {
        self.data = data
        self.links = links
    }

    private enum CodingKeys: String, CodingKey {
        case data
        case links
    }
}

// swiftlint:enable all
