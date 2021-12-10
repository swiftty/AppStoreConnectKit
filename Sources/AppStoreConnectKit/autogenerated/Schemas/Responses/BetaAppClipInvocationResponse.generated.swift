// autogenerated

// swiftlint:disable all
import Foundation

public struct BetaAppClipInvocationResponse: Hashable, Codable {
    public var data: BetaAppClipInvocation

    public var included: [BetaAppClipInvocationLocalization]?

    public var links: DocumentLinks

    public init(
        data: BetaAppClipInvocation,
        included: [BetaAppClipInvocationLocalization]? = nil,
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
}

// swiftlint:enable all
