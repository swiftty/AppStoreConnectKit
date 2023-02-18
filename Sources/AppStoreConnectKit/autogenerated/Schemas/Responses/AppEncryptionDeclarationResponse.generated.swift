// autogenerated

// swiftlint:disable all
import Foundation

public struct AppEncryptionDeclarationResponse: Hashable, Codable {
    public var data: AppEncryptionDeclaration

    public var included: [Included]?

    public var links: DocumentLinks

    public init(
        data: AppEncryptionDeclaration,
        included: [Included]? = nil,
        links: DocumentLinks
    ) {
        self.data = data
        self.included = included
        self.links = links
    }

    private enum CodingKeys: String, CodingKey {
        case data
        case included
        case links
    }

    public enum Included: Hashable, Codable {
        case app(App)
        case build(Build)
        case appEncryptionDeclarationDocument(AppEncryptionDeclarationDocument)

        public init(from decoder: Decoder) throws {
            self = try {
                var lastError: Error!
                do {
                    return .app(try App(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .build(try Build(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .appEncryptionDeclarationDocument(try AppEncryptionDeclarationDocument(from: decoder))
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

            case .build(let value):
                try value.encode(to: encoder)

            case .appEncryptionDeclarationDocument(let value):
                try value.encode(to: encoder)
            }
        }
    }
}

// swiftlint:enable all
