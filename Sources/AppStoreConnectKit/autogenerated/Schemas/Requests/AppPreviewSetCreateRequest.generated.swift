// autogenerated

// swiftlint:disable all
import Foundation

public struct AppPreviewSetCreateRequest: Hashable, Codable {
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

        public var relationships: Relationships?

        public init(
            type: `Type`,
            attributes: Attributes,
            relationships: Relationships? = nil
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
            case appPreviewSets
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .appPreviewSets: return "appPreviewSets"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "appPreviewSets": self = .appPreviewSets
                default: self = .unknown(rawValue)
                }
            }
        }

        public struct Attributes: Hashable, Codable {
            public var previewType: PreviewType

            public init(previewType: PreviewType) {
                self.previewType = previewType
            }

            private enum CodingKeys: String, CodingKey {
                case previewType
            }
        }

        public struct Relationships: Hashable, Codable {
            public var appStoreVersionLocalization: AppStoreVersionLocalization?

            public init(appStoreVersionLocalization: AppStoreVersionLocalization? = nil) {
                self.appStoreVersionLocalization = appStoreVersionLocalization
            }

            private enum CodingKeys: String, CodingKey {
                case appStoreVersionLocalization
            }

            public struct AppStoreVersionLocalization: Hashable, Codable {
                public var data: Data?

                public init(data: Data? = nil) {
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
                        case appStoreVersionLocalizations
                        case unknown(String)

                        public var rawValue: String {
                            switch self {
                            case .appStoreVersionLocalizations: return "appStoreVersionLocalizations"
                            case .unknown(let rawValue): return rawValue
                            }
                        }

                        public init(rawValue: String) {
                            switch rawValue {
                            case "appStoreVersionLocalizations": self = .appStoreVersionLocalizations
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
