// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.Profiles.ById.Certificates {
    public struct GET: Endpoint {
        public typealias Response = CertificatesResponse

        public var path: String {
            "/v1/profiles/\(id)/certificates"
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
                URLQueryItem(name: "fields[certificates]",
                             value: parameters.fields[.certificates]?.map { "\($0)" }.joined(separator: ",")),
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

        /// - Returns: **200**, List of Certificates as `CertificatesResponse`
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
                return try jsonDecoder.decode(CertificatesResponse.self, from: data)

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

extension V1.Profiles.ById.Certificates.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        /// maximum resources per page
        public var limit: Int?

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum Certificates: Hashable, Codable, RawRepresentable {
                case certificateContent
                case certificateType
                case csrContent
                case displayName
                case expirationDate
                case name
                case platform
                case serialNumber
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .certificateContent: return "certificateContent"
                    case .certificateType: return "certificateType"
                    case .csrContent: return "csrContent"
                    case .displayName: return "displayName"
                    case .expirationDate: return "expirationDate"
                    case .name: return "name"
                    case .platform: return "platform"
                    case .serialNumber: return "serialNumber"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "certificateContent": self = .certificateContent
                    case "certificateType": self = .certificateType
                    case "csrContent": self = .csrContent
                    case "displayName": self = .displayName
                    case "expirationDate": self = .expirationDate
                    case "name": self = .name
                    case "platform": self = .platform
                    case "serialNumber": self = .serialNumber
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type certificates
                public static var certificates: Relation<[Certificates]?> {
                    .init(key: "fields[certificates]")
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
