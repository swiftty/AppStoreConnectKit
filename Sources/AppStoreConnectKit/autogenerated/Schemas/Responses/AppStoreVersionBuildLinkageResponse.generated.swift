// autogenerated

// swiftlint:disable all
import Foundation

public struct AppStoreVersionBuildLinkageResponse: Hashable, Codable {
    public var data: Data

    public var links: DocumentLinks

    public init(
        data: Data,
        links: DocumentLinks
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
            case builds
        }
    }
}

// swiftlint:enable all
