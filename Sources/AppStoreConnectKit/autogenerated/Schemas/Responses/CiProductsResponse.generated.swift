// autogenerated

// swiftlint:disable all
import Foundation

public struct CiProductsResponse: Hashable, Codable {
    public var data: [CiProduct]

    public var included: [Included]?

    public var links: PagedDocumentLinks

    public var meta: PagingInformation?

    public init(
        data: [CiProduct],
        included: [Included]? = nil,
        links: PagedDocumentLinks,
        meta: PagingInformation? = nil
    ) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    private enum CodingKeys: String, CodingKey {
        case data
        case included
        case links
        case meta
    }

    public enum Included: Hashable, Codable {
        case app(App)
        case bundleId(BundleId)
        case scmRepository(ScmRepository)

        public init(from decoder: Decoder) throws {
            self = try {
                var lastError: Error!
                do {
                    return .app(try App(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .bundleId(try BundleId(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .scmRepository(try ScmRepository(from: decoder))
                } catch {
                    lastError = error
                }
                throw lastError
            }()
        }

        public func encode(to encoder: Encoder) throws {
            switch self {
            case .app(let value):
                try value.encode(to: encoder)

            case .bundleId(let value):
                try value.encode(to: encoder)

            case .scmRepository(let value):
                try value.encode(to: encoder)
            }
        }
    }
}

// swiftlint:enable all
