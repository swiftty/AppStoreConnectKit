// autogenerated

// swiftlint:disable all
import Foundation

public struct UploadOperation: Hashable, Codable {
    public var length: Int?

    public var method: String?

    public var offset: Int?

    public var requestHeaders: [HttpHeader]?

    public var url: String?

    public init(
        length: Int? = nil,
        method: String? = nil,
        offset: Int? = nil,
        requestHeaders: [HttpHeader]? = nil,
        url: String? = nil
    ) {
        self.length = length
        self.method = method
        self.offset = offset
        self.requestHeaders = requestHeaders
        self.url = url
    }

    private enum CodingKeys: String, CodingKey {
        case length
        case method
        case offset
        case requestHeaders
        case url
    }
}

// swiftlint:enable all
