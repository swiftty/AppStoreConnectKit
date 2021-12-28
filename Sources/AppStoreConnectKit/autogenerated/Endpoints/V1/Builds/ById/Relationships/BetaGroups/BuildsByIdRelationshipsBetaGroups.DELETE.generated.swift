// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.Builds.ById.Relationships.BetaGroups {
    public struct DELETE: Endpoint {
        public typealias Parameters = Never
        public typealias Response = Void

        public var path: String {
            "/v1/builds/\(id)/relationships/betaGroups"
        }

        /// the id of the requested resource
        public var id: String

        public init(id: String) {
            self.id = id
        }

        public func request(with baseURL: URL) throws -> URLRequest? {
            var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
            components?.path = path

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "DELETE"
            return urlRequest
        }

        /// - Returns: **204**, Success (no content)
        /// - Throws: **403**, Forbidden error as `ErrorResponse`
        /// - Throws: **404**, Not found error as `ErrorResponse`
        /// - Throws: **409**, Request entity error(s) as `ErrorResponse`
        public static func response(from data: Data, urlResponse: HTTPURLResponse) throws -> Response {
            var jsonDecoder: JSONDecoder {
                let decoder = JSONDecoder()
                return decoder
            }

            switch urlResponse.statusCode {
            case 204:
                return

            case 403:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            case 404:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            case 409:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            default:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)
            }
        }
    }
}

// swiftlint:enable all
