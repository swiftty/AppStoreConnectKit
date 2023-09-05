// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V2.InAppPurchases.ById.InAppPurchaseAvailability {
    public struct GET: Endpoint {
        public typealias Response = InAppPurchaseAvailabilityResponse

        public var path: String {
            "/v2/inAppPurchases/\(id)/inAppPurchaseAvailability"
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
                URLQueryItem(name: "fields[inAppPurchaseAvailabilities]",
                             value: parameters.fields[.inAppPurchaseAvailabilities]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[territories]",
                             value: parameters.fields[.territories]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[availableTerritories]",
                             value: parameters.limit[.availableTerritories].map { "\($0)" })
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Single InAppPurchaseAvailability as `InAppPurchaseAvailabilityResponse`
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
                return try jsonDecoder.decode(InAppPurchaseAvailabilityResponse.self, from: data)

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

extension V2.InAppPurchases.ById.InAppPurchaseAvailability.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        public var limit: Limit = Limit()

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<Self, T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum InAppPurchaseAvailabilities: Hashable, Codable, RawRepresentable {
                case availableInNewTerritories
                case availableTerritories
                case inAppPurchase
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .availableInNewTerritories: return "availableInNewTerritories"
                    case .availableTerritories: return "availableTerritories"
                    case .inAppPurchase: return "inAppPurchase"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "availableInNewTerritories": self = .availableInNewTerritories
                    case "availableTerritories": self = .availableTerritories
                    case "inAppPurchase": self = .inAppPurchase
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum Territories: Hashable, Codable, RawRepresentable {
                case currency
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .currency: return "currency"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "currency": self = .currency
                    default: self = .unknown(rawValue)
                    }
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case availableTerritories
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .availableTerritories: return "availableTerritories"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "availableTerritories": self = .availableTerritories
                default: self = .unknown(rawValue)
                }
            }
        }

        public struct Limit: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<Self, T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]
        }
    }
}

extension Relation<V2.InAppPurchases.ById.InAppPurchaseAvailability.GET.Parameters.Fields, [V2.InAppPurchases.ById.InAppPurchaseAvailability.GET.Parameters.Fields.InAppPurchaseAvailabilities]?> {
    /// the fields to include for returned resources of type inAppPurchaseAvailabilities
    public static var inAppPurchaseAvailabilities: Relation {
        .init(key: "fields[inAppPurchaseAvailabilities]")
    }
}

extension Relation<V2.InAppPurchases.ById.InAppPurchaseAvailability.GET.Parameters.Fields, [V2.InAppPurchases.ById.InAppPurchaseAvailability.GET.Parameters.Fields.Territories]?> {
    /// the fields to include for returned resources of type territories
    public static var territories: Relation {
        .init(key: "fields[territories]")
    }
}

extension Relation<V2.InAppPurchases.ById.InAppPurchaseAvailability.GET.Parameters.Limit, Int?> {
    /// maximum number of related availableTerritories returned (when they are included)
    public static var availableTerritories: Relation {
        .init(key: "limit[availableTerritories]")
    }
}

// swiftlint:enable all
