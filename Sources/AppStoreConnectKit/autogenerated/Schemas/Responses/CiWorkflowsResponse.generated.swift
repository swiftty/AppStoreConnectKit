// autogenerated

// swiftlint:disable all
import Foundation

public struct CiWorkflowsResponse: Hashable, Codable, Sendable {
    public var data: [CiWorkflow]

    public var included: [Included]?

    public var links: PagedDocumentLinks

    public var meta: PagingInformation?

    public init(
        data: [CiWorkflow],
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

    public enum Included: Hashable, Codable, Sendable {
        case ciProduct(CiProduct)
        case scmRepository(ScmRepository)
        case ciXcodeVersion(CiXcodeVersion)
        case ciMacOsVersion(CiMacOsVersion)

        public init(from decoder: Decoder) throws {
            self = try {
                var lastError: Error!
                do {
                    return .ciProduct(try CiProduct(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .scmRepository(try ScmRepository(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .ciXcodeVersion(try CiXcodeVersion(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .ciMacOsVersion(try CiMacOsVersion(from: decoder))
                } catch {
                    lastError = error
                }
                throw lastError
            }()
        }

        public func encode(to encoder: Encoder) throws {
            switch self {
            case .ciProduct(let value):
                try value.encode(to: encoder)

            case .scmRepository(let value):
                try value.encode(to: encoder)

            case .ciXcodeVersion(let value):
                try value.encode(to: encoder)

            case .ciMacOsVersion(let value):
                try value.encode(to: encoder)
            }
        }
    }
}

// swiftlint:enable all
