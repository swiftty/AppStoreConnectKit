// autogenerated

// swiftlint:disable all
import Foundation

public struct ProfileCreateRequest: Hashable, Codable {
    public var data: Data

    public init(data: Data) {
        self.data = data
    }

    private enum CodingKeys: String, CodingKey {
        case data
    }

    public struct Data: Hashable, Codable {
        public var type: `Type`

        public var attributes: Attributes

        public var relationships: Relationships

        public init(
            type: `Type`,
            attributes: Attributes,
            relationships: Relationships
        ) {
            self.type = type
            self.attributes = attributes
            self.relationships = relationships
        }

        private enum CodingKeys: String, CodingKey {
            case type
            case attributes
            case relationships
        }

        public enum `Type`: String, Hashable, Codable {
            case profiles
        }

        public struct Attributes: Hashable, Codable {
            public var name: String

            public var profileType: ProfileType

            public init(
                name: String,
                profileType: ProfileType
            ) {
                self.name = name
                self.profileType = profileType
            }

            private enum CodingKeys: String, CodingKey {
                case name
                case profileType
            }

            public enum ProfileType: Hashable, Codable, RawRepresentable {
                case iOSAppAdhoc
                case iOSAppDevelopment
                case iOSAppInhouse
                case iOSAppStore
                case macAppDevelopment
                case macAppDirect
                case macAppStore
                case macCatalystAppDevelopment
                case macCatalystAppDirect
                case macCatalystAppStore
                case tvOSAppAdhoc
                case tvOSAppDevelopment
                case tvOSAppInhouse
                case tvOSAppStore
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .iOSAppAdhoc: return "IOS_APP_ADHOC"
                    case .iOSAppDevelopment: return "IOS_APP_DEVELOPMENT"
                    case .iOSAppInhouse: return "IOS_APP_INHOUSE"
                    case .iOSAppStore: return "IOS_APP_STORE"
                    case .macAppDevelopment: return "MAC_APP_DEVELOPMENT"
                    case .macAppDirect: return "MAC_APP_DIRECT"
                    case .macAppStore: return "MAC_APP_STORE"
                    case .macCatalystAppDevelopment: return "MAC_CATALYST_APP_DEVELOPMENT"
                    case .macCatalystAppDirect: return "MAC_CATALYST_APP_DIRECT"
                    case .macCatalystAppStore: return "MAC_CATALYST_APP_STORE"
                    case .tvOSAppAdhoc: return "TVOS_APP_ADHOC"
                    case .tvOSAppDevelopment: return "TVOS_APP_DEVELOPMENT"
                    case .tvOSAppInhouse: return "TVOS_APP_INHOUSE"
                    case .tvOSAppStore: return "TVOS_APP_STORE"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "IOS_APP_ADHOC": self = .iOSAppAdhoc
                    case "IOS_APP_DEVELOPMENT": self = .iOSAppDevelopment
                    case "IOS_APP_INHOUSE": self = .iOSAppInhouse
                    case "IOS_APP_STORE": self = .iOSAppStore
                    case "MAC_APP_DEVELOPMENT": self = .macAppDevelopment
                    case "MAC_APP_DIRECT": self = .macAppDirect
                    case "MAC_APP_STORE": self = .macAppStore
                    case "MAC_CATALYST_APP_DEVELOPMENT": self = .macCatalystAppDevelopment
                    case "MAC_CATALYST_APP_DIRECT": self = .macCatalystAppDirect
                    case "MAC_CATALYST_APP_STORE": self = .macCatalystAppStore
                    case "TVOS_APP_ADHOC": self = .tvOSAppAdhoc
                    case "TVOS_APP_DEVELOPMENT": self = .tvOSAppDevelopment
                    case "TVOS_APP_INHOUSE": self = .tvOSAppInhouse
                    case "TVOS_APP_STORE": self = .tvOSAppStore
                    default: self = .unknown(rawValue)
                    }
                }
            }
        }

        public struct Relationships: Hashable, Codable {
            public var bundleId: BundleId

            public var certificates: Certificates

            public var devices: Devices?

            public init(
                bundleId: BundleId,
                certificates: Certificates,
                devices: Devices? = nil
            ) {
                self.bundleId = bundleId
                self.certificates = certificates
                self.devices = devices
            }

            private enum CodingKeys: String, CodingKey {
                case bundleId
                case certificates
                case devices
            }

            public struct BundleId: Hashable, Codable {
                public var data: Data

                public init(data: Data) {
                    self.data = data
                }

                private enum CodingKeys: String, CodingKey {
                    case data
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
                        case bundleIds
                    }
                }
            }

            public struct Certificates: Hashable, Codable {
                public var data: [Data]

                public init(data: [Data]) {
                    self.data = data
                }

                private enum CodingKeys: String, CodingKey {
                    case data
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
                        case certificates
                    }
                }
            }

            public struct Devices: Hashable, Codable {
                public var data: [Data]?

                public init(data: [Data]? = nil) {
                    self.data = data
                }

                private enum CodingKeys: String, CodingKey {
                    case data
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
                        case devices
                    }
                }
            }
        }
    }
}

// swiftlint:enable all
