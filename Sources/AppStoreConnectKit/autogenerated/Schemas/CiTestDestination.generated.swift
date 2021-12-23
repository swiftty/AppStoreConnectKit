// autogenerated

// swiftlint:disable all
import Foundation

public struct CiTestDestination: Hashable, Codable {
    public var deviceTypeIdentifier: String?

    public var deviceTypeName: String?

    public var kind: CiTestDestinationKind?

    public var runtimeIdentifier: String?

    public var runtimeName: String?

    public init(
        deviceTypeIdentifier: String? = nil,
        deviceTypeName: String? = nil,
        kind: CiTestDestinationKind? = nil,
        runtimeIdentifier: String? = nil,
        runtimeName: String? = nil
    ) {
        self.deviceTypeIdentifier = deviceTypeIdentifier
        self.deviceTypeName = deviceTypeName
        self.kind = kind
        self.runtimeIdentifier = runtimeIdentifier
        self.runtimeName = runtimeName
    }

    private enum CodingKeys: String, CodingKey {
        case deviceTypeIdentifier
        case deviceTypeName
        case kind
        case runtimeIdentifier
        case runtimeName
    }
}

// swiftlint:enable all