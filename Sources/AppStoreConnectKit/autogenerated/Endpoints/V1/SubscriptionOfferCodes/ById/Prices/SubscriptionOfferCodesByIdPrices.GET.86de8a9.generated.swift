// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.SubscriptionOfferCodes.ById.Prices {
    public struct GET: Endpoint {
        public typealias Response = SubscriptionOfferCodePricesResponse

        public var path: String {
            "/v1/subscriptionOfferCodes/\(id)/prices"
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
                URLQueryItem(name: "fields[subscriptionOfferCodePrices]",
                             value: parameters.fields[.subscriptionOfferCodePrices]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[subscriptionPricePoints]",
                             value: parameters.fields[.subscriptionPricePoints]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[territories]",
                             value: parameters.fields[.territories]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[territory]",
                             value: parameters.filter[.territory]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
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

        /// - Returns: **200**, List of SubscriptionOfferCodePrices as `SubscriptionOfferCodePricesResponse`
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
                return try jsonDecoder.decode(SubscriptionOfferCodePricesResponse.self, from: data)

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

extension V1.SubscriptionOfferCodes.ById.Prices.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        public var filter: Filter = Filter()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        /// maximum resources per page
        public var limit: Int?

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<Self, T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum SubscriptionOfferCodePrices: Hashable, Codable, RawRepresentable {
                case subscriptionPricePoint
                case territory
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .subscriptionPricePoint: return "subscriptionPricePoint"
                    case .territory: return "territory"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "subscriptionPricePoint": self = .subscriptionPricePoint
                    case "territory": self = .territory
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum SubscriptionPricePoints: Hashable, Codable, RawRepresentable {
                case customerPrice
                case equalizations
                case proceeds
                case proceedsYear2
                case subscription
                case territory
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .customerPrice: return "customerPrice"
                    case .equalizations: return "equalizations"
                    case .proceeds: return "proceeds"
                    case .proceedsYear2: return "proceedsYear2"
                    case .subscription: return "subscription"
                    case .territory: return "territory"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "customerPrice": self = .customerPrice
                    case "equalizations": self = .equalizations
                    case "proceeds": self = .proceeds
                    case "proceedsYear2": self = .proceedsYear2
                    case "subscription": self = .subscription
                    case "territory": self = .territory
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

        public struct Filter: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<Self, T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case subscriptionPricePoint
            case territory
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .subscriptionPricePoint: return "subscriptionPricePoint"
                case .territory: return "territory"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "subscriptionPricePoint": self = .subscriptionPricePoint
                case "territory": self = .territory
                default: self = .unknown(rawValue)
                }
            }
        }
    }
}

extension Relation<V1.SubscriptionOfferCodes.ById.Prices.GET.Parameters.Fields, [V1.SubscriptionOfferCodes.ById.Prices.GET.Parameters.Fields.SubscriptionOfferCodePrices]?> {
    /// the fields to include for returned resources of type subscriptionOfferCodePrices
    public static var subscriptionOfferCodePrices: Relation {
        .init(key: "fields[subscriptionOfferCodePrices]")
    }
}

extension Relation<V1.SubscriptionOfferCodes.ById.Prices.GET.Parameters.Fields, [V1.SubscriptionOfferCodes.ById.Prices.GET.Parameters.Fields.SubscriptionPricePoints]?> {
    /// the fields to include for returned resources of type subscriptionPricePoints
    public static var subscriptionPricePoints: Relation {
        .init(key: "fields[subscriptionPricePoints]")
    }
}

extension Relation<V1.SubscriptionOfferCodes.ById.Prices.GET.Parameters.Fields, [V1.SubscriptionOfferCodes.ById.Prices.GET.Parameters.Fields.Territories]?> {
    /// the fields to include for returned resources of type territories
    public static var territories: Relation {
        .init(key: "fields[territories]")
    }
}

extension Relation<V1.SubscriptionOfferCodes.ById.Prices.GET.Parameters.Filter, [String]?> {
    /// filter by id(s) of related 'territory'
    public static var territory: Relation {
        .init(key: "filter[territory]")
    }
}

// swiftlint:enable all
