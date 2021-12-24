// autogenerated

// swiftlint:disable all
import Foundation

extension V1.Builds.ById.DiagnosticSignatures {
    public struct GET: Endpoint {
        public typealias Response = DiagnosticSignaturesResponse

        public var path: String {
            "/v1/builds/\(id)/diagnosticSignatures"
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
                URLQueryItem(name: "fields[diagnosticSignatures]",
                             value: parameters.fields[.diagnosticSignatures]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[diagnosticType]",
                             value: parameters.filter[.diagnosticType]?.map { "\($0)" }.joined(separator: ",")),
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

        /// - Returns: **200**, List of related resources as `DiagnosticSignaturesResponse`
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
                return try jsonDecoder.decode(DiagnosticSignaturesResponse.self, from: data)

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

extension V1.Builds.ById.DiagnosticSignatures.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        public var filter: Filter = Filter()

        /// maximum resources per page
        public var limit: Int?

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum DiagnosticSignatures: Hashable, Codable, RawRepresentable {
                case diagnosticType
                case logs
                case signature
                case weight
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .diagnosticType: return "diagnosticType"
                    case .logs: return "logs"
                    case .signature: return "signature"
                    case .weight: return "weight"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "diagnosticType": self = .diagnosticType
                    case "logs": self = .logs
                    case "signature": self = .signature
                    case "weight": self = .weight
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type diagnosticSignatures
                public static var diagnosticSignatures: Relation<[DiagnosticSignatures]?> {
                    .init(key: "fields[diagnosticSignatures]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public struct Filter: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum DiagnosticType: Hashable, Codable, RawRepresentable {
                case diskWrites
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .diskWrites: return "DISK_WRITES"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "DISK_WRITES": self = .diskWrites
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// filter by attribute 'diagnosticType'
                public static var diagnosticType: Relation<[DiagnosticType]?> {
                    .init(key: "filter[diagnosticType]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }
    }
}

// swiftlint:enable all
