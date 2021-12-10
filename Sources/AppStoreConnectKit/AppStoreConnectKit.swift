import Foundation

public protocol Endpoint {
    associatedtype Parameters
    associatedtype Response

    var path: String { get }
    var parameters: Parameters { get }

    func request(with baseURL: URL) throws -> URLRequest?
    static func response(from data: Data, urlResponse: HTTPURLResponse) throws -> Response
}

extension Endpoint {
    public func response(from data: Data, urlResponse: HTTPURLResponse) throws -> Response {
        try Self.response(from: data, urlResponse: urlResponse)
    }
}

extension Endpoint where Parameters == Never {
    public var parameters: Parameters { fatalError() }
}

extension URLRequest {
    public init?<E: Endpoint>(
        endpoint: E,
        baseURL: URL = URL(string: "https://api.appstoreconnect.apple.com/")!
    ) throws {
        guard let url = try endpoint.request(with: baseURL) else { return nil }
        self = url
    }
}
