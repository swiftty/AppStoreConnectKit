// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.BetaGroups.ById.Metrics.BetaTesterUsages {
    public struct GET: Endpoint {
        public typealias Response = AppsBetaTesterUsagesV1MetricResponse

        public var path: String {
            "/v1/betaGroups/\(id)/metrics/betaTesterUsages"
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
                URLQueryItem(name: "filter[betaTesters]",
                             value: parameters.filter[.betaTesters].map { "\($0)" }),
                URLQueryItem(name: "groupBy",
                             value: parameters.groupBy?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit",
                             value: parameters.limit.map { "\($0)" }),
                URLQueryItem(name: "period",
                             value: parameters.period.map { "\($0)" })
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Metrics data response as `AppsBetaTesterUsagesV1MetricResponse`
        /// - Throws: **400**, Parameter error(s) as `ErrorResponse`
        /// - Throws: **401**, Unauthorized error(s) as `ErrorResponse`
        /// - Throws: **403**, Forbidden error as `ErrorResponse`
        /// - Throws: **404**, Not found error as `ErrorResponse`
        /// - Throws: **429**, Rate limit exceeded error as `ErrorResponse`
        public static func response(from data: Data, urlResponse: HTTPURLResponse) throws -> Response {
            var jsonDecoder: JSONDecoder {
                let decoder = JSONDecoder()
                return decoder
            }

            switch urlResponse.statusCode {
            case 200:
                return try jsonDecoder.decode(AppsBetaTesterUsagesV1MetricResponse.self, from: data)

            case 400:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            case 401:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            case 403:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            case 404:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            case 429:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            default:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)
            }
        }
    }
}

extension V1.BetaGroups.ById.Metrics.BetaTesterUsages.GET {
    public struct Parameters: Hashable {
        public var filter: Filter = Filter()

        /// the dimension by which to group the results
        public var groupBy: [GroupBy]?

        /// maximum number of groups to return per page
        public var limit: Int?

        /// the duration of the reporting period
        public var period: Period?

        public struct Filter: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public struct Relation<T>: Hashable {
                /// filter by 'betaTesters' relationship dimension
                public static var betaTesters: Relation<String?> {
                    .init(key: "filter[betaTesters]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public struct GroupBy: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
            public static var betaTesters: Self {
                .init(rawValue: "betaTesters")
            }

            public var description: String {
                rawValue
            }

            public var rawValue: String

            public init(rawValue: String) {
                self.rawValue = rawValue
            }
        }

        public struct Period: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
            public static var p30D: Self {
                .init(rawValue: "P30D")
            }

            public static var p365D: Self {
                .init(rawValue: "P365D")
            }

            public static var p7D: Self {
                .init(rawValue: "P7D")
            }

            public static var p90D: Self {
                .init(rawValue: "P90D")
            }

            public var description: String {
                rawValue
            }

            public var rawValue: String

            public init(rawValue: String) {
                self.rawValue = rawValue
            }
        }
    }
}

// swiftlint:enable all
