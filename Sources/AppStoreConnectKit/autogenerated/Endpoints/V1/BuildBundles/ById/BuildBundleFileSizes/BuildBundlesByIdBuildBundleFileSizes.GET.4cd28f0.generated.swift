// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.BuildBundles.ById.BuildBundleFileSizes {
    public struct GET: Endpoint {
        public typealias Response = BuildBundleFileSizesResponse

        public var path: String {
            "/v1/buildBundles/\(id)/buildBundleFileSizes"
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
                URLQueryItem(name: "fields[buildBundleFileSizes]",
                             value: parameters.fields[.buildBundleFileSizes]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit",
                             value: parameters.limit.map { "\($0)" })
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, List of BuildBundleFileSizes as `BuildBundleFileSizesResponse`
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
                return try jsonDecoder.decode(BuildBundleFileSizesResponse.self, from: data)

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

extension V1.BuildBundles.ById.BuildBundleFileSizes.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        /// maximum resources per page
        public var limit: Int?

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<Self, T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum BuildBundleFileSizes: Hashable, Codable, RawRepresentable {
                case deviceModel
                case downloadBytes
                case installBytes
                case osVersion
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .deviceModel: return "deviceModel"
                    case .downloadBytes: return "downloadBytes"
                    case .installBytes: return "installBytes"
                    case .osVersion: return "osVersion"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "deviceModel": self = .deviceModel
                    case "downloadBytes": self = .downloadBytes
                    case "installBytes": self = .installBytes
                    case "osVersion": self = .osVersion
                    default: self = .unknown(rawValue)
                    }
                }
            }
        }
    }
}

extension Relation<V1.BuildBundles.ById.BuildBundleFileSizes.GET.Parameters.Fields, [V1.BuildBundles.ById.BuildBundleFileSizes.GET.Parameters.Fields.BuildBundleFileSizes]?> {
    /// the fields to include for returned resources of type buildBundleFileSizes
    public static var buildBundleFileSizes: Relation {
        .init(key: "fields[buildBundleFileSizes]")
    }
}

// swiftlint:enable all
