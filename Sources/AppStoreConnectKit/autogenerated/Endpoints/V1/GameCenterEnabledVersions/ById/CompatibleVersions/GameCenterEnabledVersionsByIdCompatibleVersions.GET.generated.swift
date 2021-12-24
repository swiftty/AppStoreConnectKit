// autogenerated

// swiftlint:disable all
import Foundation

extension V1.GameCenterEnabledVersions.ById.CompatibleVersions {
    public struct GET: Endpoint {
        public typealias Response = GameCenterEnabledVersionsResponse

        public var path: String {
            "/v1/gameCenterEnabledVersions/\(id)/compatibleVersions"
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
                URLQueryItem(name: "fields[gameCenterEnabledVersions]",
                             value: parameters.fields[.gameCenterEnabledVersions]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[app]",
                             value: parameters.filter[.app]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[id]",
                             value: parameters.filter[.id]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[platform]",
                             value: parameters.filter[.platform]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[versionString]",
                             value: parameters.filter[.versionString]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[compatibleVersions]",
                             value: parameters.limit[.compatibleVersions].map { "\($0)" }),
                URLQueryItem(name: "limit",
                             value: parameters.limit[].map { "\($0)" }),
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

        /// - Returns: **200**, List of related resources as `GameCenterEnabledVersionsResponse`
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
                return try jsonDecoder.decode(GameCenterEnabledVersionsResponse.self, from: data)

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

extension V1.GameCenterEnabledVersions.ById.CompatibleVersions.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        public var filter: Filter = Filter()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        /// maximum resources per page
        public var limit: Limit = Limit()

        /// comma-separated list of sort expressions; resources will be sorted as specified
        public var sort: [Sort]?

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum GameCenterEnabledVersions: Hashable, Codable, RawRepresentable {
                case app
                case compatibleVersions
                case iconAsset
                case platform
                case versionString
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .app: return "app"
                    case .compatibleVersions: return "compatibleVersions"
                    case .iconAsset: return "iconAsset"
                    case .platform: return "platform"
                    case .versionString: return "versionString"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "app": self = .app
                    case "compatibleVersions": self = .compatibleVersions
                    case "iconAsset": self = .iconAsset
                    case "platform": self = .platform
                    case "versionString": self = .versionString
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type gameCenterEnabledVersions
                public static var gameCenterEnabledVersions: Relation<[GameCenterEnabledVersions]?> {
                    .init(key: "fields[gameCenterEnabledVersions]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public struct Filter: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum Platform: Hashable, Codable, RawRepresentable {
                case iOS
                case macOS
                case tvOS
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .iOS: return "IOS"
                    case .macOS: return "MAC_OS"
                    case .tvOS: return "TV_OS"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "IOS": self = .iOS
                    case "MAC_OS": self = .macOS
                    case "TV_OS": self = .tvOS
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// filter by id(s) of related 'app'
                public static var app: Relation<[String]?> {
                    .init(key: "filter[app]")
                }

                /// filter by id(s)
                public static var id: Relation<[String]?> {
                    .init(key: "filter[id]")
                }

                /// filter by attribute 'platform'
                public static var platform: Relation<[Platform]?> {
                    .init(key: "filter[platform]")
                }

                /// filter by attribute 'versionString'
                public static var versionString: Relation<[String]?> {
                    .init(key: "filter[versionString]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case compatibleVersions
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .compatibleVersions: return "compatibleVersions"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "compatibleVersions": self = .compatibleVersions
                default: self = .unknown(rawValue)
                }
            }
        }

        public struct Limit: Hashable {
            public subscript () -> Int? {
                get { self[Relation<Int?>(key: "limit")] }
                set { self[Relation<Int?>(key: "limit")] = newValue }
            }

            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public struct Relation<T>: Hashable {
                /// maximum number of related compatibleVersions returned (when they are included)
                public static var compatibleVersions: Relation<Int?> {
                    .init(key: "limit[compatibleVersions]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Sort: Hashable, Codable, RawRepresentable {
            case versionString
            case versionStringDesc
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .versionString: return "versionString"
                case .versionStringDesc: return "-versionString"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "versionString": self = .versionString
                case "-versionString": self = .versionStringDesc
                default: self = .unknown(rawValue)
                }
            }
        }
    }
}

// swiftlint:enable all
