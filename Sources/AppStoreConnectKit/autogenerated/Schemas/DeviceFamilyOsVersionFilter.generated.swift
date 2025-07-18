// autogenerated

// swiftlint:disable all
import Foundation

public struct DeviceFamilyOsVersionFilter: Hashable, Codable, Sendable {
    public var deviceFamily: DeviceFamily?

    public var maximumOsInclusive: String?

    public var minimumOsInclusive: String?

    public init(
        deviceFamily: DeviceFamily? = nil,
        maximumOsInclusive: String? = nil,
        minimumOsInclusive: String? = nil
    ) {
        self.deviceFamily = deviceFamily
        self.maximumOsInclusive = maximumOsInclusive
        self.minimumOsInclusive = minimumOsInclusive
    }

    private enum CodingKeys: String, CodingKey {
        case deviceFamily
        case maximumOsInclusive
        case minimumOsInclusive
    }
}

// swiftlint:enable all
