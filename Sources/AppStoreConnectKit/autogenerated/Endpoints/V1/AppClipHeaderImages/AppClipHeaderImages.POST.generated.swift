// autogenerated

// swiftlint:disable all
import Foundation

extension V1.AppClipHeaderImages {
    public struct POST: Endpoint {
        public typealias Parameters = AppClipHeaderImageCreateRequest
        public typealias Response = AppClipHeaderImageResponse

        public var path: String {
            "/v1/appClipHeaderImages"
        }

        /// AppClipHeaderImage representation
        public var parameters: Parameters

        public init(parameters: Parameters) {
            self.parameters = parameters
        }

        public func request(with baseURL: URL) throws -> URLRequest? {
            var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
            components?.path = path

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "POST"

            var jsonEncoder: JSONEncoder {
                let encoder = JSONEncoder()
                return encoder
            }

            urlRequest?.httpBody = try jsonEncoder.encode(parameters)
            return urlRequest
        }

        /// - Returns: **201**, Single AppClipHeaderImage as `AppClipHeaderImageResponse`
        /// - Throws: **400**, Parameter error(s) as `ErrorResponse`
        /// - Throws: **403**, Forbidden error as `ErrorResponse`
        /// - Throws: **409**, Request entity error(s) as `ErrorResponse`
        public static func response(from data: Data, urlResponse: HTTPURLResponse) throws -> Response {
            var jsonDecoder: JSONDecoder {
                let decoder = JSONDecoder()
                return decoder
            }

            switch urlResponse.statusCode {
            case 201:
                return try jsonDecoder.decode(AppClipHeaderImageResponse.self, from: data)

            case 400:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            case 403:
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
