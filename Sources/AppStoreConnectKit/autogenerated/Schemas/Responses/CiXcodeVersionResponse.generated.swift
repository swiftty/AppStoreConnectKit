// autogenerated

// swiftlint:disable all
import Foundation

public struct CiXcodeVersionResponse: Hashable, Codable {
    public var data: CiXcodeVersion

    public var included: [CiMacOsVersion]?

    public var links: DocumentLinks

    public init(
        data: CiXcodeVersion,
        included: [CiMacOsVersion]? = nil,
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
