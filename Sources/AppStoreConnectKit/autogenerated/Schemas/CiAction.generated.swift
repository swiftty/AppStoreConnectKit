// autogenerated

// swiftlint:disable all
import Foundation

public struct CiAction: Hashable, Codable {
    public var actionType: CiActionType?

    public var buildDistributionAudience: BuildAudienceType?

    public var destination: Destination?

    public var isRequiredToPass: Bool?

    public var name: String?

    public var platform: Platform?

    public var scheme: String?

    public var testConfiguration: TestConfiguration?

    public init(
        actionType: CiActionType? = nil,
        buildDistributionAudience: BuildAudienceType? = nil,
        destination: Destination? = nil,
        isRequiredToPass: Bool? = nil,
        name: String? = nil,
        platform: Platform? = nil,
        scheme: String? = nil,
        testConfiguration: TestConfiguration? = nil
    ) {
        self.actionType = actionType
        self.buildDistributionAudience = buildDistributionAudience
        self.destination = destination
        self.isRequiredToPass = isRequiredToPass
        self.name = name
        self.platform = platform
        self.scheme = scheme
        self.testConfiguration = testConfiguration
    }

    private enum CodingKeys: String, CodingKey {
        case actionType
        case buildDistributionAudience
        case destination
        case isRequiredToPass
        case name
        case platform
        case scheme
        case testConfiguration
    }

    public enum Destination: String, Hashable, Codable {
        case anyiOSDevice = "ANY_IOS_DEVICE"
        case anyiOSSimulator = "ANY_IOS_SIMULATOR"
        case anyMac = "ANY_MAC"
        case anyMacCatalyst = "ANY_MAC_CATALYST"
        case anyTvOSDevice = "ANY_TVOS_DEVICE"
        case anyTvOSSimulator = "ANY_TVOS_SIMULATOR"
        case anyWatchOSDevice = "ANY_WATCHOS_DEVICE"
        case anyWatchOSSimulator = "ANY_WATCHOS_SIMULATOR"
    }

    public enum Platform: String, Hashable, Codable {
        case iOS = "IOS"
        case macOS = "MACOS"
        case tvOS = "TVOS"
        case watchOS = "WATCHOS"
    }

    public struct TestConfiguration: Hashable, Codable {
        public var kind: Kind?

        public var testDestinations: [CiTestDestination]?

        public var testPlanName: String?

        public init(
            kind: Kind? = nil,
            testDestinations: [CiTestDestination]? = nil,
            testPlanName: String? = nil
        ) {
            self.kind = kind
            self.testDestinations = testDestinations
            self.testPlanName = testPlanName
        }

        private enum CodingKeys: String, CodingKey {
            case kind
            case testDestinations
            case testPlanName
        }

        public enum Kind: String, Hashable, Codable {
            case specificTestPlans = "SPECIFIC_TEST_PLANS"
            case useSchemeSettings = "USE_SCHEME_SETTINGS"
        }
    }
}

// swiftlint:enable all