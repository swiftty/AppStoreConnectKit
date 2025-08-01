// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.GameCenterMatchmakingQueues.ById.Metrics.MatchmakingSessions {
    public struct GET: Endpoint {
        public typealias Response = GameCenterMatchmakingSessionsV1MetricResponse

        public var path: String {
            "/v1/gameCenterMatchmakingQueues/\(id)/metrics/matchmakingSessions"
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
                URLQueryItem(name: "granularity",
                             value: parameters.granularity.map { "\($0)" }),
                URLQueryItem(name: "limit",
                             value: parameters.limit.map { "\($0)" }),
                URLQueryItem(name: "sort",
                             value: parameters.sort?.map { "\($0)" }.joined(separator: ","))
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Metrics data response as `GameCenterMatchmakingSessionsV1MetricResponse`
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
                return try jsonDecoder.decode(GameCenterMatchmakingSessionsV1MetricResponse.self, from: data)

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

extension V1.GameCenterMatchmakingQueues.ById.Metrics.MatchmakingSessions.GET {
    public struct Parameters: Hashable {
        /// the granularity of the per-group dataset
        public var granularity: Granularity?

        /// maximum number of groups to return per page
        public var limit: Int?

        /// comma-separated list of sort expressions; metrics will be sorted as specified
        public var sort: [Sort]?

        public struct Granularity: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
            public static var p1D: Self {
                .init(rawValue: "P1D")
            }

            public static var pT15M: Self {
                .init(rawValue: "PT15M")
            }

            public static var pT1H: Self {
                .init(rawValue: "PT1H")
            }

            public var description: String {
                rawValue
            }

            public var rawValue: String

            public init(rawValue: String) {
                self.rawValue = rawValue
            }
        }

        public struct Sort: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
            public static var averagePlayerCount: Self {
                .init(rawValue: "averagePlayerCount")
            }

            public static var averagePlayerCountDesc: Self {
                .init(rawValue: "-averagePlayerCount")
            }

            public static var count: Self {
                .init(rawValue: "count")
            }

            public static var countDesc: Self {
                .init(rawValue: "-count")
            }

            public static var p50PlayerCount: Self {
                .init(rawValue: "p50PlayerCount")
            }

            public static var p50PlayerCountDesc: Self {
                .init(rawValue: "-p50PlayerCount")
            }

            public static var p95PlayerCount: Self {
                .init(rawValue: "p95PlayerCount")
            }

            public static var p95PlayerCountDesc: Self {
                .init(rawValue: "-p95PlayerCount")
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
