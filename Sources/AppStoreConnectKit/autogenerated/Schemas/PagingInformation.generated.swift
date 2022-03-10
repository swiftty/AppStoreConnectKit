// autogenerated

// swiftlint:disable all
import Foundation

public struct PagingInformation: Hashable, Codable {
    public var paging: Paging

    public init(paging: Paging) {
        self.paging = paging
    }

    private enum CodingKeys: String, CodingKey {
        case paging
    }

    public struct Paging: Hashable, Codable {
        public var limit: Int

        public var total: Int?

        public init(
            limit: Int,
            total: Int? = nil
        ) {
            self.limit = limit
            self.total = total
        }

        private enum CodingKeys: String, CodingKey {
            case limit
            case total
        }
    }
}

// swiftlint:enable all
