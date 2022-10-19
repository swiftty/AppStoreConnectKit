// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.InAppPurchaseLocalizations.ById {
    public struct GET: Endpoint {
        public typealias Response = InAppPurchaseLocalizationResponse

        public var path: String {
            "/v1/inAppPurchaseLocalizations/\(id)"
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
                URLQueryItem(name: "fields[inAppPurchaseLocalizations]",
                             value: parameters.fields[.inAppPurchaseLocalizations]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ","))
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Single InAppPurchaseLocalization as `InAppPurchaseLocalizationResponse`
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
                return try jsonDecoder.decode(InAppPurchaseLocalizationResponse.self, from: data)

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

extension V1.InAppPurchaseLocalizations.ById.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum InAppPurchaseLocalizations: Hashable, Codable, RawRepresentable {
                case description
                case inAppPurchaseV2
                case locale
                case name
                case state
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .description: return "description"
                    case .inAppPurchaseV2: return "inAppPurchaseV2"
                    case .locale: return "locale"
                    case .name: return "name"
                    case .state: return "state"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "description": self = .description
                    case "inAppPurchaseV2": self = .inAppPurchaseV2
                    case "locale": self = .locale
                    case "name": self = .name
                    case "state": self = .state
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type inAppPurchaseLocalizations
                public static var inAppPurchaseLocalizations: Relation<[InAppPurchaseLocalizations]?> {
                    .init(key: "fields[inAppPurchaseLocalizations]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case inAppPurchaseV2
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .inAppPurchaseV2: return "inAppPurchaseV2"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "inAppPurchaseV2": self = .inAppPurchaseV2
                default: self = .unknown(rawValue)
                }
            }
        }
    }
}

// swiftlint:enable all
