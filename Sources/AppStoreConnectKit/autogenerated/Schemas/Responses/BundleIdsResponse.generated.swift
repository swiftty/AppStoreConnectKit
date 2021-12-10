// autogenerated

// swiftlint:disable all
import Foundation

public struct BundleIdsResponse: Hashable, Codable {
    public var data: [BundleId]

    public var included: [Included]?

    public var links: PagedDocumentLinks

    public var meta: PagingInformation?

    public init(
        data: [BundleId],
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
        case profile(Profile)
        case bundleIdCapability(BundleIdCapability)
        case app(App)

        public init(from decoder: Decoder) throws {
            self = try {
                var lastError: Error!
                do {
                    return .profile(try Profile(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .bundleIdCapability(try BundleIdCapability(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .app(try App(from: decoder))
                } catch {
                    lastError = error
                }
                throw lastError
            }()
        }

        public func encode(to encoder: Encoder) throws {
            switch self {
            case .profile(let value):
                try value.encode(to: encoder)

            case .bundleIdCapability(let value):
                try value.encode(to: encoder)

            case .app(let value):
                try value.encode(to: encoder)
            }
        }
    }
}

// swiftlint:enable all
