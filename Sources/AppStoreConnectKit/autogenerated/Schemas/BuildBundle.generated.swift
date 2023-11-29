// autogenerated

// swiftlint:disable all
import Foundation

public struct BuildBundle: Hashable, Codable {
    public var id: String

    public var type: `Type`

    public var attributes: Attributes?

    public var relationships: Relationships?

    public var links: ResourceLinks?

    public init(
        id: String,
        type: `Type`,
        attributes: Attributes? = nil,
        relationships: Relationships? = nil,
        links: ResourceLinks? = nil
    ) {
        self.id = id
        self.type = type
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case attributes
        case relationships
        case links
    }

    public enum `Type`: String, Hashable, Codable {
        case buildBundles
    }

    public struct Attributes: Hashable, Codable {
        public var bundleId: String?

        public var bundleType: BundleType?

        public var dSYMUrl: URL?

        public var deviceProtocols: [String]?

        public var entitlements: [String: [String: String]]?

        public var fileName: String?

        public var hasOnDemandResources: Bool?

        public var hasPrerenderedIcon: Bool?

        public var hasSirikit: Bool?

        public var includesSymbols: Bool?

        public var isIosBuildMacAppStoreCompatible: Bool?

        public var locales: [String]?

        public var platformBuild: String?

        public var requiredCapabilities: [String]?

        public var sdkBuild: String?

        public var supportedArchitectures: [String]?

        public var usesLocationServices: Bool?

        public init(
            bundleId: String? = nil,
            bundleType: BundleType? = nil,
            dSYMUrl: URL? = nil,
            deviceProtocols: [String]? = nil,
            entitlements: [String: [String: String]]? = nil,
            fileName: String? = nil,
            hasOnDemandResources: Bool? = nil,
            hasPrerenderedIcon: Bool? = nil,
            hasSirikit: Bool? = nil,
            includesSymbols: Bool? = nil,
            isIosBuildMacAppStoreCompatible: Bool? = nil,
            locales: [String]? = nil,
            platformBuild: String? = nil,
            requiredCapabilities: [String]? = nil,
            sdkBuild: String? = nil,
            supportedArchitectures: [String]? = nil,
            usesLocationServices: Bool? = nil
        ) {
            self.bundleId = bundleId
            self.bundleType = bundleType
            self.dSYMUrl = dSYMUrl
            self.deviceProtocols = deviceProtocols
            self.entitlements = entitlements
            self.fileName = fileName
            self.hasOnDemandResources = hasOnDemandResources
            self.hasPrerenderedIcon = hasPrerenderedIcon
            self.hasSirikit = hasSirikit
            self.includesSymbols = includesSymbols
            self.isIosBuildMacAppStoreCompatible = isIosBuildMacAppStoreCompatible
            self.locales = locales
            self.platformBuild = platformBuild
            self.requiredCapabilities = requiredCapabilities
            self.sdkBuild = sdkBuild
            self.supportedArchitectures = supportedArchitectures
            self.usesLocationServices = usesLocationServices
        }

        private enum CodingKeys: String, CodingKey {
            case bundleId
            case bundleType
            case dSYMUrl
            case deviceProtocols
            case entitlements
            case fileName
            case hasOnDemandResources
            case hasPrerenderedIcon
            case hasSirikit
            case includesSymbols
            case isIosBuildMacAppStoreCompatible
            case locales
            case platformBuild
            case requiredCapabilities
            case sdkBuild
            case supportedArchitectures
            case usesLocationServices
        }

        public enum BundleType: Hashable, Codable, RawRepresentable {
            case app
            case appClip
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .app: return "APP"
                case .appClip: return "APP_CLIP"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "APP": self = .app
                case "APP_CLIP": self = .appClip
                default: self = .unknown(rawValue)
                }
            }
        }
    }

    public struct Relationships: Hashable, Codable {
        public var appClipDomainCacheStatus: AppClipDomainCacheStatus?

        public var appClipDomainDebugStatus: AppClipDomainDebugStatus?

        public var betaAppClipInvocations: BetaAppClipInvocations?

        public var buildBundleFileSizes: BuildBundleFileSizes?

        public init(
            appClipDomainCacheStatus: AppClipDomainCacheStatus? = nil,
            appClipDomainDebugStatus: AppClipDomainDebugStatus? = nil,
            betaAppClipInvocations: BetaAppClipInvocations? = nil,
            buildBundleFileSizes: BuildBundleFileSizes? = nil
        ) {
            self.appClipDomainCacheStatus = appClipDomainCacheStatus
            self.appClipDomainDebugStatus = appClipDomainDebugStatus
            self.betaAppClipInvocations = betaAppClipInvocations
            self.buildBundleFileSizes = buildBundleFileSizes
        }

        private enum CodingKeys: String, CodingKey {
            case appClipDomainCacheStatus
            case appClipDomainDebugStatus
            case betaAppClipInvocations
            case buildBundleFileSizes
        }

        public struct AppClipDomainCacheStatus: Hashable, Codable {
            public var data: Data?

            public var links: Links?

            public init(
                data: Data? = nil,
                links: Links? = nil
            ) {
                self.data = data
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
            }

            public struct Data: Hashable, Codable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable {
                    case appClipDomainStatuses
                }
            }

            public struct Links: Hashable, Codable {
                public var related: URL?

                public var `self`: URL?

                public init(
                    related: URL? = nil,
                    self _self: URL? = nil
                ) {
                    self.related = related
                    self.`self` = _self
                }

                private enum CodingKeys: String, CodingKey {
                    case related
                    case `self` = "self"
                }
            }
        }

        public struct AppClipDomainDebugStatus: Hashable, Codable {
            public var data: Data?

            public var links: Links?

            public init(
                data: Data? = nil,
                links: Links? = nil
            ) {
                self.data = data
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
            }

            public struct Data: Hashable, Codable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable {
                    case appClipDomainStatuses
                }
            }

            public struct Links: Hashable, Codable {
                public var related: URL?

                public var `self`: URL?

                public init(
                    related: URL? = nil,
                    self _self: URL? = nil
                ) {
                    self.related = related
                    self.`self` = _self
                }

                private enum CodingKeys: String, CodingKey {
                    case related
                    case `self` = "self"
                }
            }
        }

        public struct BetaAppClipInvocations: Hashable, Codable {
            public var data: [Data]?

            public var links: Links?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: Links? = nil,
                meta: PagingInformation? = nil
            ) {
                self.data = data
                self.links = links
                self.meta = meta
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
                case meta
            }

            public struct Data: Hashable, Codable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable {
                    case betaAppClipInvocations
                }
            }

            public struct Links: Hashable, Codable {
                public var related: URL?

                public var `self`: URL?

                public init(
                    related: URL? = nil,
                    self _self: URL? = nil
                ) {
                    self.related = related
                    self.`self` = _self
                }

                private enum CodingKeys: String, CodingKey {
                    case related
                    case `self` = "self"
                }
            }
        }

        public struct BuildBundleFileSizes: Hashable, Codable {
            public var data: [Data]?

            public var links: Links?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: Links? = nil,
                meta: PagingInformation? = nil
            ) {
                self.data = data
                self.links = links
                self.meta = meta
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
                case meta
            }

            public struct Data: Hashable, Codable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable {
                    case buildBundleFileSizes
                }
            }

            public struct Links: Hashable, Codable {
                public var related: URL?

                public var `self`: URL?

                public init(
                    related: URL? = nil,
                    self _self: URL? = nil
                ) {
                    self.related = related
                    self.`self` = _self
                }

                private enum CodingKeys: String, CodingKey {
                    case related
                    case `self` = "self"
                }
            }
        }
    }
}

// swiftlint:enable all
