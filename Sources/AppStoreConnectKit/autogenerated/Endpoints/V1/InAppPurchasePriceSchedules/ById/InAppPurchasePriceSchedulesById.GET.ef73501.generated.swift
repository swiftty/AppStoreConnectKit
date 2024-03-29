// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.InAppPurchasePriceSchedules.ById {
    public struct GET: Endpoint {
        public typealias Response = InAppPurchasePriceScheduleResponse

        public var path: String {
            "/v1/inAppPurchasePriceSchedules/\(id)"
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
                URLQueryItem(name: "fields[inAppPurchasePriceSchedules]",
                             value: parameters.fields[.inAppPurchasePriceSchedules]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[inAppPurchasePrices]",
                             value: parameters.fields[.inAppPurchasePrices]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[territories]",
                             value: parameters.fields[.territories]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[automaticPrices]",
                             value: parameters.limit[.automaticPrices].map { "\($0)" }),
                URLQueryItem(name: "limit[manualPrices]",
                             value: parameters.limit[.manualPrices].map { "\($0)" })
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Single InAppPurchasePriceSchedule as `InAppPurchasePriceScheduleResponse`
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
                return try jsonDecoder.decode(InAppPurchasePriceScheduleResponse.self, from: data)

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

extension V1.InAppPurchasePriceSchedules.ById.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        public var limit: Limit = Limit()

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum InAppPurchasePriceSchedules: Hashable, Codable, RawRepresentable {
                case automaticPrices
                case baseTerritory
                case inAppPurchase
                case manualPrices
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .automaticPrices: return "automaticPrices"
                    case .baseTerritory: return "baseTerritory"
                    case .inAppPurchase: return "inAppPurchase"
                    case .manualPrices: return "manualPrices"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "automaticPrices": self = .automaticPrices
                    case "baseTerritory": self = .baseTerritory
                    case "inAppPurchase": self = .inAppPurchase
                    case "manualPrices": self = .manualPrices
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum InAppPurchasePrices: Hashable, Codable, RawRepresentable {
                case endDate
                case inAppPurchasePricePoint
                case inAppPurchaseV2
                case manual
                case startDate
                case territory
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .endDate: return "endDate"
                    case .inAppPurchasePricePoint: return "inAppPurchasePricePoint"
                    case .inAppPurchaseV2: return "inAppPurchaseV2"
                    case .manual: return "manual"
                    case .startDate: return "startDate"
                    case .territory: return "territory"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "endDate": self = .endDate
                    case "inAppPurchasePricePoint": self = .inAppPurchasePricePoint
                    case "inAppPurchaseV2": self = .inAppPurchaseV2
                    case "manual": self = .manual
                    case "startDate": self = .startDate
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

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type inAppPurchasePriceSchedules
                public static var inAppPurchasePriceSchedules: Relation<[InAppPurchasePriceSchedules]?> {
                    .init(key: "fields[inAppPurchasePriceSchedules]")
                }

                /// the fields to include for returned resources of type inAppPurchasePrices
                public static var inAppPurchasePrices: Relation<[InAppPurchasePrices]?> {
                    .init(key: "fields[inAppPurchasePrices]")
                }

                /// the fields to include for returned resources of type territories
                public static var territories: Relation<[Territories]?> {
                    .init(key: "fields[territories]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case automaticPrices
            case baseTerritory
            case inAppPurchase
            case manualPrices
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .automaticPrices: return "automaticPrices"
                case .baseTerritory: return "baseTerritory"
                case .inAppPurchase: return "inAppPurchase"
                case .manualPrices: return "manualPrices"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "automaticPrices": self = .automaticPrices
                case "baseTerritory": self = .baseTerritory
                case "inAppPurchase": self = .inAppPurchase
                case "manualPrices": self = .manualPrices
                default: self = .unknown(rawValue)
                }
            }
        }

        public struct Limit: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public struct Relation<T>: Hashable {
                /// maximum number of related automaticPrices returned (when they are included)
                public static var automaticPrices: Relation<Int?> {
                    .init(key: "limit[automaticPrices]")
                }

                /// maximum number of related manualPrices returned (when they are included)
                public static var manualPrices: Relation<Int?> {
                    .init(key: "limit[manualPrices]")
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
