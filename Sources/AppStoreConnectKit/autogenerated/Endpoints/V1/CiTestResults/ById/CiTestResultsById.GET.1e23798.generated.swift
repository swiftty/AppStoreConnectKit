// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.CiTestResults.ById {
    public struct GET: Endpoint {
        public typealias Response = CiTestResultResponse

        public var path: String {
            "/v1/ciTestResults/\(id)"
        }

        /// the id of the requested resource
        public var id: String

        public var parameters: Parameters = Parameters()

        public init(id: String) {
            self.id = id
        }

        public func request(with baseURL: URL) throws -> URLRequest? {
            var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
            components?.path = path

            components?.queryItems = [
                URLQueryItem(name: "fields[ciTestResults]",
                             value: parameters.fields[.ciTestResults]?.map { "\($0)" }.joined(separator: ","))
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Single CiTestResult as `CiTestResultResponse`
        /// - Throws: **400**, Parameter error(s) as `ErrorResponse`
        /// - Throws: **403**, Forbidden error as `ErrorResponse`
        /// - Throws: **404**, Not found error as `ErrorResponse`
        public static func response(from data: Data, urlResponse: HTTPURLResponse) throws -> Response {
            var jsonDecoder: JSONDecoder {
                let decoder = JSONDecoder()
                return decoder
            }

            switch urlResponse.statusCode {
            case 200:
                return try jsonDecoder.decode(CiTestResultResponse.self, from: data)

            case 400:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            case 403:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            case 404:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            default:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)
            }
        }
    }
}

extension V1.CiTestResults.ById.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<Self, T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum CiTestResults: Hashable, Codable, RawRepresentable {
                case className
                case destinationTestResults
                case fileSource
                case message
                case name
                case status
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .className: return "className"
                    case .destinationTestResults: return "destinationTestResults"
                    case .fileSource: return "fileSource"
                    case .message: return "message"
                    case .name: return "name"
                    case .status: return "status"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "className": self = .className
                    case "destinationTestResults": self = .destinationTestResults
                    case "fileSource": self = .fileSource
                    case "message": self = .message
                    case "name": self = .name
                    case "status": self = .status
                    default: self = .unknown(rawValue)
                    }
                }
            }
        }
    }
}

extension Relation<V1.CiTestResults.ById.GET.Parameters.Fields, [V1.CiTestResults.ById.GET.Parameters.Fields.CiTestResults]?> {
    /// the fields to include for returned resources of type ciTestResults
    public static var ciTestResults: Relation {
        .init(key: "fields[ciTestResults]")
    }
}

// swiftlint:enable all
