// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.CiMacOsVersions.ById.XcodeVersions {
    public struct GET: Endpoint {
        public typealias Response = CiXcodeVersionsResponse

        public var path: String {
            "/v1/ciMacOsVersions/\(id)/xcodeVersions"
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
                URLQueryItem(name: "fields[ciMacOsVersions]",
                             value: parameters.fields[.ciMacOsVersions]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[ciXcodeVersions]",
                             value: parameters.fields[.ciXcodeVersions]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[macOsVersions]",
                             value: parameters.limit[.macOsVersions].map { "\($0)" }),
                URLQueryItem(name: "limit",
                             value: parameters.limit[].map { "\($0)" })
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, List of CiXcodeVersions as `CiXcodeVersionsResponse`
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
                return try jsonDecoder.decode(CiXcodeVersionsResponse.self, from: data)

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

extension V1.CiMacOsVersions.ById.XcodeVersions.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        /// maximum resources per page
        public var limit: Limit = Limit()

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<Self, T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum CiMacOsVersions: Hashable, Codable, RawRepresentable {
                case name
                case version
                case xcodeVersions
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .name: return "name"
                    case .version: return "version"
                    case .xcodeVersions: return "xcodeVersions"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "name": self = .name
                    case "version": self = .version
                    case "xcodeVersions": self = .xcodeVersions
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum CiXcodeVersions: Hashable, Codable, RawRepresentable {
                case macOsVersions
                case name
                case testDestinations
                case version
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .macOsVersions: return "macOsVersions"
                    case .name: return "name"
                    case .testDestinations: return "testDestinations"
                    case .version: return "version"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "macOsVersions": self = .macOsVersions
                    case "name": self = .name
                    case "testDestinations": self = .testDestinations
                    case "version": self = .version
                    default: self = .unknown(rawValue)
                    }
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case macOsVersions
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .macOsVersions: return "macOsVersions"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "macOsVersions": self = .macOsVersions
                default: self = .unknown(rawValue)
                }
            }
        }

        public struct Limit: Hashable {
            public subscript () -> Int? {
                get { self[Relation<Self, Int?>(key: "limit")] }
                set { self[Relation<Self, Int?>(key: "limit")] = newValue }
            }

            public subscript <T: Hashable>(_ relation: Relation<Self, T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]
        }
    }
}

extension Relation<V1.CiMacOsVersions.ById.XcodeVersions.GET.Parameters.Fields, [V1.CiMacOsVersions.ById.XcodeVersions.GET.Parameters.Fields.CiMacOsVersions]?> {
    /// the fields to include for returned resources of type ciMacOsVersions
    public static var ciMacOsVersions: Relation {
        .init(key: "fields[ciMacOsVersions]")
    }
}

extension Relation<V1.CiMacOsVersions.ById.XcodeVersions.GET.Parameters.Fields, [V1.CiMacOsVersions.ById.XcodeVersions.GET.Parameters.Fields.CiXcodeVersions]?> {
    /// the fields to include for returned resources of type ciXcodeVersions
    public static var ciXcodeVersions: Relation {
        .init(key: "fields[ciXcodeVersions]")
    }
}

extension Relation<V1.CiMacOsVersions.ById.XcodeVersions.GET.Parameters.Limit, Int?> {
    /// maximum number of related macOsVersions returned (when they are included)
    public static var macOsVersions: Relation {
        .init(key: "limit[macOsVersions]")
    }
}

// swiftlint:enable all
