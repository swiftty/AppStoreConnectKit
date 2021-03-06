// autogenerated

// swiftlint:disable all
import Foundation

public struct DeviceUpdateRequest: Hashable, Codable {
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

        public var attributes: Attributes?

        public init(
            id: String,
            type: `Type`,
            attributes: Attributes? = nil
        ) {
            self.id = id
            self.type = type
            self.attributes = attributes
        }

        private enum CodingKeys: String, CodingKey {
            case id
            case type
            case attributes
        }

        public enum `Type`: String, Hashable, Codable {
            case devices
        }

        public struct Attributes: Hashable, Codable {
            public var name: String?

            public var status: Status?

            public init(
                name: String? = nil,
                status: Status? = nil
            ) {
                self.name = name
                self.status = status
            }

            private enum CodingKeys: String, CodingKey {
                case name
                case status
            }

            public enum Status: Hashable, Codable, RawRepresentable {
                case disabled
                case enabled
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .disabled: return "DISABLED"
                    case .enabled: return "ENABLED"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "DISABLED": self = .disabled
                    case "ENABLED": self = .enabled
                    default: self = .unknown(rawValue)
                    }
                }
            }
        }
    }
}

// swiftlint:enable all
