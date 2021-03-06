// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.CiMacOsVersions {
    public struct GET: Endpoint {
        public typealias Response = CiMacOsVersionsResponse

        public var path: String {
            "/v1/ciMacOsVersions"
        }

        public var parameters: Parameters = Parameters()

        public init() {

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
                URLQueryItem(name: "limit[xcodeVersions]",
                             value: parameters.limit[.xcodeVersions].map { "\($0)" }),
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

        /// - Returns: **200**, List of CiMacOsVersions as `CiMacOsVersionsResponse`
        /// - Throws: **400**, Parameter error(s) as `ErrorResponse`
        /// - Throws: **403**, Forbidden error as `ErrorResponse`
        public static func response(from data: Data, urlResponse: HTTPURLResponse) throws -> Response {
            var jsonDecoder: JSONDecoder {
                let decoder = JSONDecoder()
                return decoder
            }

            switch urlResponse.statusCode {
            case 200:
                return try jsonDecoder.decode(CiMacOsVersionsResponse.self, from: data)

            case 400:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            case 403:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            default:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)
            }
        }
    }
}

extension V1.CiMacOsVersions.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        /// maximum resources per page
        public var limit: Limit = Limit()

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
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

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type ciMacOsVersions
                public static var ciMacOsVersions: Relation<[CiMacOsVersions]?> {
                    .init(key: "fields[ciMacOsVersions]")
                }

                /// the fields to include for returned resources of type ciXcodeVersions
                public static var ciXcodeVersions: Relation<[CiXcodeVersions]?> {
                    .init(key: "fields[ciXcodeVersions]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case xcodeVersions
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .xcodeVersions: return "xcodeVersions"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "xcodeVersions": self = .xcodeVersions
                default: self = .unknown(rawValue)
                }
            }
        }

        public struct Limit: Hashable {
            public subscript () -> Int? {
                get { self[Relation<Int?>(key: "limit")] }
                set { self[Relation<Int?>(key: "limit")] = newValue }
            }

            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public struct Relation<T>: Hashable {
                /// maximum number of related xcodeVersions returned (when they are included)
                public static var xcodeVersions: Relation<Int?> {
                    .init(key: "limit[xcodeVersions]")
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
