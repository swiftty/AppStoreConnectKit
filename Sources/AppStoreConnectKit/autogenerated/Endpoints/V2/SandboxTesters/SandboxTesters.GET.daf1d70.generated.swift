// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V2.SandboxTesters {
    public struct GET: Endpoint {
        public typealias Response = SandboxTestersV2Response

        public var path: String {
            "/v2/sandboxTesters"
        }

        public var parameters: Parameters = Parameters()

        public init() {

        }

        public func request(with baseURL: URL) throws -> URLRequest? {
            var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
            components?.path = path

            components?.queryItems = [
                URLQueryItem(name: "fields[sandboxTesters]",
                             value: parameters.fields[.sandboxTesters]?.map { "\($0)" }.joined(separator: ",")),
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

        /// - Returns: **200**, List of SandboxTesters as `SandboxTestersV2Response`
        /// - Throws: **400**, Parameter error(s) as `ErrorResponse`
        /// - Throws: **403**, Forbidden error as `ErrorResponse`
        public static func response(from data: Data, urlResponse: HTTPURLResponse) throws -> Response {
            var jsonDecoder: JSONDecoder {
                let decoder = JSONDecoder()
                return decoder
            }

            switch urlResponse.statusCode {
            case 200:
                return try jsonDecoder.decode(SandboxTestersV2Response.self, from: data)

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

extension V2.SandboxTesters.GET {
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

            public enum SandboxTesters: Hashable, Codable, RawRepresentable {
                case acAccountName
                case applePayCompatible
                case firstName
                case interruptPurchases
                case lastName
                case subscriptionRenewalRate
                case territory
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .acAccountName: return "acAccountName"
                    case .applePayCompatible: return "applePayCompatible"
                    case .firstName: return "firstName"
                    case .interruptPurchases: return "interruptPurchases"
                    case .lastName: return "lastName"
                    case .subscriptionRenewalRate: return "subscriptionRenewalRate"
                    case .territory: return "territory"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "acAccountName": self = .acAccountName
                    case "applePayCompatible": self = .applePayCompatible
                    case "firstName": self = .firstName
                    case "interruptPurchases": self = .interruptPurchases
                    case "lastName": self = .lastName
                    case "subscriptionRenewalRate": self = .subscriptionRenewalRate
                    case "territory": self = .territory
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type sandboxTesters
                public static var sandboxTesters: Relation<[SandboxTesters]?> {
                    .init(key: "fields[sandboxTesters]")
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
