// autogenerated

// swiftlint:disable all
import Foundation

public struct AccessibilityDeclarationResponse: Hashable, Codable, Sendable {
    public var data: AccessibilityDeclaration

    public var links: DocumentLinks

    public init(
        data: AccessibilityDeclaration,
        links: DocumentLinks
    ) {
        self.data = data
        self.links = links
    }

    private enum CodingKeys: String, CodingKey {
        case data
        case links
    }
}

// swiftlint:enable all
