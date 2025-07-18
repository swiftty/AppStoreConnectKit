// autogenerated

// swiftlint:disable all
import Foundation

public struct BetaRecruitmentCriterion: Hashable, Codable, Sendable {
    public var id: String

    public var type: `Type`

    public var attributes: Attributes?

    public var links: ResourceLinks?

    public init(
        id: String,
        type: `Type`,
        attributes: Attributes? = nil,
        links: ResourceLinks? = nil
    ) {
        self.id = id
        self.type = type
        self.attributes = attributes
        self.links = links
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case attributes
        case links
    }

    public enum `Type`: String, Hashable, Codable, Sendable {
        case betaRecruitmentCriteria
    }

    public struct Attributes: Hashable, Codable, Sendable {
        public var deviceFamilyOsVersionFilters: [DeviceFamilyOsVersionFilter]?

        public var lastModifiedDate: String?

        public init(
            deviceFamilyOsVersionFilters: [DeviceFamilyOsVersionFilter]? = nil,
            lastModifiedDate: String? = nil
        ) {
            self.deviceFamilyOsVersionFilters = deviceFamilyOsVersionFilters
            self.lastModifiedDate = lastModifiedDate
        }

        private enum CodingKeys: String, CodingKey {
            case deviceFamilyOsVersionFilters
            case lastModifiedDate
        }
    }
}

// swiftlint:enable all
