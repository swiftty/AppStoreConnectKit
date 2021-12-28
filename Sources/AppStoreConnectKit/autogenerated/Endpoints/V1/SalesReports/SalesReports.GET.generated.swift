// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.SalesReports {
    public struct GET: Endpoint {
        public typealias Response = Data

        public var path: String {
            "/v1/salesReports"
        }

        public var parameters: Parameters = Parameters()

        public init() {

        }

        public func request(with baseURL: URL) throws -> URLRequest? {
            var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
            components?.path = path

            components?.queryItems = [
                URLQueryItem(name: "filter[frequency]",
                             value: parameters.filter[.frequency]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[reportDate]",
                             value: parameters.filter[.reportDate]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[reportSubType]",
                             value: parameters.filter[.reportSubType]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[reportType]",
                             value: parameters.filter[.reportType]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[vendorNumber]",
                             value: parameters.filter[.vendorNumber]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[version]",
                             value: parameters.filter[.version]?.map { "\($0)" }.joined(separator: ","))
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, List of SalesReports as `Data`
        /// - Throws: **400**, Parameter error(s) as `ErrorResponse`
        /// - Throws: **403**, Forbidden error as `ErrorResponse`
        public static func response(from data: Data, urlResponse: HTTPURLResponse) throws -> Response {
            var jsonDecoder: JSONDecoder {
                let decoder = JSONDecoder()
                return decoder
            }

            switch urlResponse.statusCode {
            case 200:
                return data

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

extension V1.SalesReports.GET {
    public struct Parameters: Hashable {
        public var filter: Filter = Filter()

        public struct Filter: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum Frequency: Hashable, Codable, RawRepresentable {
                case daily
                case monthly
                case weekly
                case yearly
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .daily: return "DAILY"
                    case .monthly: return "MONTHLY"
                    case .weekly: return "WEEKLY"
                    case .yearly: return "YEARLY"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "DAILY": self = .daily
                    case "MONTHLY": self = .monthly
                    case "WEEKLY": self = .weekly
                    case "YEARLY": self = .yearly
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum ReportSubType: Hashable, Codable, RawRepresentable {
                case detailed
                case summary
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .detailed: return "DETAILED"
                    case .summary: return "SUMMARY"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "DETAILED": self = .detailed
                    case "SUMMARY": self = .summary
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum ReportType: Hashable, Codable, RawRepresentable {
                case newsstand
                case preOrder
                case sales
                case subscriber
                case subscription
                case subscriptionEvent
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .newsstand: return "NEWSSTAND"
                    case .preOrder: return "PRE_ORDER"
                    case .sales: return "SALES"
                    case .subscriber: return "SUBSCRIBER"
                    case .subscription: return "SUBSCRIPTION"
                    case .subscriptionEvent: return "SUBSCRIPTION_EVENT"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "NEWSSTAND": self = .newsstand
                    case "PRE_ORDER": self = .preOrder
                    case "SALES": self = .sales
                    case "SUBSCRIBER": self = .subscriber
                    case "SUBSCRIPTION": self = .subscription
                    case "SUBSCRIPTION_EVENT": self = .subscriptionEvent
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// filter by attribute 'frequency' **(required)**
                public static var frequency: Relation<[Frequency]?> {
                    .init(key: "filter[frequency]")
                }

                /// filter by attribute 'reportDate'
                public static var reportDate: Relation<[String]?> {
                    .init(key: "filter[reportDate]")
                }

                /// filter by attribute 'reportSubType' **(required)**
                public static var reportSubType: Relation<[ReportSubType]?> {
                    .init(key: "filter[reportSubType]")
                }

                /// filter by attribute 'reportType' **(required)**
                public static var reportType: Relation<[ReportType]?> {
                    .init(key: "filter[reportType]")
                }

                /// filter by attribute 'vendorNumber' **(required)**
                public static var vendorNumber: Relation<[String]?> {
                    .init(key: "filter[vendorNumber]")
                }

                /// filter by attribute 'version'
                public static var version: Relation<[String]?> {
                    .init(key: "filter[version]")
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
