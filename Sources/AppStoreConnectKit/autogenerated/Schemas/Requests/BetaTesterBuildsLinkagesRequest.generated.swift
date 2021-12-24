// autogenerated

// swiftlint:disable all
import Foundation

public struct BetaTesterBuildsLinkagesRequest: Hashable, Codable {
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

        public enum `Type`: Hashable, Codable, RawRepresentable {
            case builds
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .builds: return "builds"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "builds": self = .builds
                default: self = .unknown(rawValue)
                }
            }
        }
    }
}

// swiftlint:enable all
