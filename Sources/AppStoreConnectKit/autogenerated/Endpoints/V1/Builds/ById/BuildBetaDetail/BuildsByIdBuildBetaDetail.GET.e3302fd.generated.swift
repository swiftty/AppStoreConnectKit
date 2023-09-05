// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.Builds.ById.BuildBetaDetail {
    public struct GET: Endpoint {
        public typealias Response = BuildBetaDetailResponse

        public var path: String {
            "/v1/builds/\(id)/buildBetaDetail"
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
                URLQueryItem(name: "fields[buildBetaDetails]",
                             value: parameters.fields[.buildBetaDetails]?.map { "\($0)" }.joined(separator: ","))
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Single BuildBetaDetail as `BuildBetaDetailResponse`
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
                return try jsonDecoder.decode(BuildBetaDetailResponse.self, from: data)

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

extension V1.Builds.ById.BuildBetaDetail.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<Self, T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum BuildBetaDetails: Hashable, Codable, RawRepresentable {
                case autoNotifyEnabled
                case build
                case externalBuildState
                case internalBuildState
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .autoNotifyEnabled: return "autoNotifyEnabled"
                    case .build: return "build"
                    case .externalBuildState: return "externalBuildState"
                    case .internalBuildState: return "internalBuildState"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "autoNotifyEnabled": self = .autoNotifyEnabled
                    case "build": self = .build
                    case "externalBuildState": self = .externalBuildState
                    case "internalBuildState": self = .internalBuildState
                    default: self = .unknown(rawValue)
                    }
                }
            }
        }
    }
}

extension Relation<V1.Builds.ById.BuildBetaDetail.GET.Parameters.Fields, [V1.Builds.ById.BuildBetaDetail.GET.Parameters.Fields.BuildBetaDetails]?> {
    /// the fields to include for returned resources of type buildBetaDetails
    public static var buildBetaDetails: Relation {
        .init(key: "fields[buildBetaDetails]")
    }
}

// swiftlint:enable all
