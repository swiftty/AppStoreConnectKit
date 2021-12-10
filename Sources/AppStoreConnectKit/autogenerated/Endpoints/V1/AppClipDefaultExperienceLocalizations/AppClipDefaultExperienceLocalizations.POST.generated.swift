// autogenerated

// swiftlint:disable all
import Foundation

extension V1.AppClipDefaultExperienceLocalizations {
    public struct POST: Endpoint {
        public typealias Parameters = AppClipDefaultExperienceLocalizationCreateRequest
        public typealias Response = AppClipDefaultExperienceLocalizationResponse

        public var path: String {
            "/v1/appClipDefaultExperienceLocalizations"
        }

        /// AppClipDefaultExperienceLocalization representation
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

        /// - Returns: **201**, Single AppClipDefaultExperienceLocalization as `AppClipDefaultExperienceLocalizationResponse`
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
                return try jsonDecoder.decode(AppClipDefaultExperienceLocalizationResponse.self, from: data)

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
