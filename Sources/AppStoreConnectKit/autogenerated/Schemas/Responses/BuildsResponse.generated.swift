// autogenerated

// swiftlint:disable all
import Foundation

public struct BuildsResponse: Hashable, Codable {
    public var data: [Build]

    public var included: [Included]?

    public var links: PagedDocumentLinks

    public var meta: PagingInformation?

    public init(
        data: [Build],
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
        case prereleaseVersion(PrereleaseVersion)
        case betaTester(BetaTester)
        case betaGroup(BetaGroup)
        case betaBuildLocalization(BetaBuildLocalization)
        case appEncryptionDeclaration(AppEncryptionDeclaration)
        case betaAppReviewSubmission(BetaAppReviewSubmission)
        case app(App)
        case buildBetaDetail(BuildBetaDetail)
        case appStoreVersion(AppStoreVersion)
        case buildIcon(BuildIcon)
        case buildBundle(BuildBundle)

        public init(from decoder: Decoder) throws {
            self = try {
                var lastError: Error!
                do {
                    return .prereleaseVersion(try PrereleaseVersion(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .betaTester(try BetaTester(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .betaGroup(try BetaGroup(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .betaBuildLocalization(try BetaBuildLocalization(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .appEncryptionDeclaration(try AppEncryptionDeclaration(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .betaAppReviewSubmission(try BetaAppReviewSubmission(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .app(try App(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .buildBetaDetail(try BuildBetaDetail(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .appStoreVersion(try AppStoreVersion(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .buildIcon(try BuildIcon(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .buildBundle(try BuildBundle(from: decoder))
                } catch {
                    lastError = error
                }
                throw lastError
            }()
        }

        public func encode(to encoder: Encoder) throws {
            switch self {
            case .prereleaseVersion(let value):
                try value.encode(to: encoder)

            case .betaTester(let value):
                try value.encode(to: encoder)

            case .betaGroup(let value):
                try value.encode(to: encoder)

            case .betaBuildLocalization(let value):
                try value.encode(to: encoder)

            case .appEncryptionDeclaration(let value):
                try value.encode(to: encoder)

            case .betaAppReviewSubmission(let value):
                try value.encode(to: encoder)

            case .app(let value):
                try value.encode(to: encoder)

            case .buildBetaDetail(let value):
                try value.encode(to: encoder)

            case .appStoreVersion(let value):
                try value.encode(to: encoder)

            case .buildIcon(let value):
                try value.encode(to: encoder)

            case .buildBundle(let value):
                try value.encode(to: encoder)
            }
        }
    }
}

// swiftlint:enable all
