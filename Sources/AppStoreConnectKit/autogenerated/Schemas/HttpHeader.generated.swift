// autogenerated

// swiftlint:disable all
import Foundation

public struct HttpHeader: Hashable, Codable {
    public var name: String?

    public var value: String?

    public init(
        name: String? = nil,
        value: String? = nil
    ) {
        self.name = name
        self.value = value
    }

    private enum CodingKeys: String, CodingKey {
        case name
        case value
    }
}

// swiftlint:enable all