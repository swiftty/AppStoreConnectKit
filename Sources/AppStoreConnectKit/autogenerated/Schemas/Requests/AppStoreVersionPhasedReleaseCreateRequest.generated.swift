// autogenerated

// swiftlint:disable all
import Foundation

public struct AppStoreVersionPhasedReleaseCreateRequest: Hashable, Codable {
    public var data: Data

    public init(data: Data) {
        self.data = data
    }

    private enum CodingKeys: String, CodingKey {
        case data
    }

    public struct Data: Hashable, Codable {
        public var type: `Type`

        public var attributes: Attributes?

        public var relationships: Relationships

        public init(
            type: `Type`,
            attributes: Attributes? = nil,
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

        public enum `Type`: Hashable, Codable, RawRepresentable {
            case appStoreVersionPhasedReleases
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .appStoreVersionPhasedReleases: return "appStoreVersionPhasedReleases"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "appStoreVersionPhasedReleases": self = .appStoreVersionPhasedReleases
                default: self = .unknown(rawValue)
                }
            }
        }

        public struct Attributes: Hashable, Codable {
            public var phasedReleaseState: PhasedReleaseState?

            public init(phasedReleaseState: PhasedReleaseState? = nil) {
                self.phasedReleaseState = phasedReleaseState
            }

            private enum CodingKeys: String, CodingKey {
                case phasedReleaseState
            }
        }

        public struct Relationships: Hashable, Codable {
            public var appStoreVersion: AppStoreVersion

            public init(appStoreVersion: AppStoreVersion) {
                self.appStoreVersion = appStoreVersion
            }

            private enum CodingKeys: String, CodingKey {
                case appStoreVersion
            }

            public struct AppStoreVersion: Hashable, Codable {
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

                    public enum `Type`: Hashable, Codable, RawRepresentable {
                        case appStoreVersions
                        case unknown(String)

                        public var rawValue: String {
                            switch self {
                            case .appStoreVersions: return "appStoreVersions"
                            case .unknown(let rawValue): return rawValue
                            }
                        }

                        public init(rawValue: String) {
                            switch rawValue {
                            case "appStoreVersions": self = .appStoreVersions
                            default: self = .unknown(rawValue)
                            }
                        }
                    }
                }
            }
        }
    }
}

// swiftlint:enable all
