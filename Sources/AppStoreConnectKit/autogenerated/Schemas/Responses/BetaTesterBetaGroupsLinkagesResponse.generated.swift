// autogenerated

// swiftlint:disable all
import Foundation

public struct BetaTesterBetaGroupsLinkagesResponse: Hashable, Codable {
    public var data: [Data]

    public var links: PagedDocumentLinks

    public var meta: PagingInformation?

    public init(
        data: [Data],
        links: PagedDocumentLinks,
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

        public enum `Type`: Hashable, Codable, RawRepresentable {
            case betaGroups
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .betaGroups: return "betaGroups"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "betaGroups": self = .betaGroups
                default: self = .unknown(rawValue)
                }
            }
        }
    }
}

// swiftlint:enable all
