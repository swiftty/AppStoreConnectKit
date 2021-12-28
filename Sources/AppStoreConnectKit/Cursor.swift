import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

public struct Cursor<E: Endpoint>: Endpoint {
    public typealias Parameters = Never
    public typealias Response = E.Response

    public var path: String { url.path }

    private let url: URL

    public init(url: URL) {
        self.url = url
    }

    public init?(url: URL?) {
        guard let url = url else { return nil }
        self.url = url
    }

    public func request(with baseURL: URL) throws -> URLRequest? {
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        return urlRequest
    }

    public static func response(from data: Data, urlResponse: HTTPURLResponse) throws -> E.Response {
        try E.response(from: data, urlResponse: urlResponse)
    }
}
