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
                             value: parameters.granularity.map { "\($0)" }.joined(separator: ",")),
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
        /// - Throws: **403**, Forbidden error as `ErrorResponse`
        /// - Throws: **404**, Not found error as `ErrorResponse`
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

extension V1.GameCenterMatchmakingQueues.ById.Metrics.MatchmakingSessions.GET {
    public struct Parameters: Hashable {
        /// the granularity of the per-group dataset
        public var granularity: [Granularity] = []

        /// maximum number of groups to return per page
        public var limit: Int?

        /// comma-separated list of sort expressions; metrics will be sorted as specified
        public var sort: [Sort]?

        public enum Granularity: Hashable, Codable, RawRepresentable {
            case p1D
            case pT15M
            case pT1H
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .p1D: return "P1D"
                case .pT15M: return "PT15M"
                case .pT1H: return "PT1H"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "P1D": self = .p1D
                case "PT15M": self = .pT15M
                case "PT1H": self = .pT1H
                default: self = .unknown(rawValue)
                }
            }
        }

        public enum Sort: Hashable, Codable, RawRepresentable {
            case averagePlayerCount
            case averagePlayerCountDesc
            case count
            case countDesc
            case p50PlayerCount
            case p50PlayerCountDesc
            case p95PlayerCount
            case p95PlayerCountDesc
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .averagePlayerCount: return "averagePlayerCount"
                case .averagePlayerCountDesc: return "-averagePlayerCount"
                case .count: return "count"
                case .countDesc: return "-count"
                case .p50PlayerCount: return "p50PlayerCount"
                case .p50PlayerCountDesc: return "-p50PlayerCount"
                case .p95PlayerCount: return "p95PlayerCount"
                case .p95PlayerCountDesc: return "-p95PlayerCount"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "averagePlayerCount": self = .averagePlayerCount
                case "-averagePlayerCount": self = .averagePlayerCountDesc
                case "count": self = .count
                case "-count": self = .countDesc
                case "p50PlayerCount": self = .p50PlayerCount
                case "-p50PlayerCount": self = .p50PlayerCountDesc
                case "p95PlayerCount": self = .p95PlayerCount
                case "-p95PlayerCount": self = .p95PlayerCountDesc
                default: self = .unknown(rawValue)
                }
            }
        }
    }
}

// swiftlint:enable all
