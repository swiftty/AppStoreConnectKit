// autogenerated

// swiftlint:disable all
import Foundation

extension V1.BundleIds.ById {
    public struct PATCH: Endpoint {
        public typealias Parameters = BundleIdUpdateRequest
        public typealias Response = BundleIdResponse

        public var path: String {
            "/v1/bundleIds/\(id)"
        }

        /// the id of the requested resource
        public var id: String

        /// BundleId representation
        public var parameters: Parameters

        public init(
            id: String,
            parameters: Parameters
        ) {
            self.id = id
            self.parameters = parameters
        }

        public func request(with baseURL: URL) throws -> URLRequest? {
            var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
            components?.path = path

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "PATCH"

            var jsonEncoder: JSONEncoder {
                let encoder = JSONEncoder()
                return encoder
            }

            urlRequest?.httpBody = try jsonEncoder.encode(parameters)
            return urlRequest
        }

        /// - Returns: **200**, Single BundleId as `BundleIdResponse`
        /// - Throws: **400**, Parameter error(s) as `ErrorResponse`
        /// - Throws: **403**, Forbidden error as `ErrorResponse`
        /// - Throws: **404**, Not found error as `ErrorResponse`
        /// - Throws: **409**, Request entity error(s) as `ErrorResponse`
        public static func response(from data: Data, urlResponse: HTTPURLResponse) throws -> Response {
            var jsonDecoder: JSONDecoder {
                let decoder = JSONDecoder()
                return decoder
            }

            switch urlResponse.statusCode {
            case 200:
                return try jsonDecoder.decode(BundleIdResponse.self, from: data)

            case 400:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

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
