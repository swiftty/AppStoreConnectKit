// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.AppAvailabilities.ById {
    @available(*, deprecated)
    public struct GET: Endpoint {
        public typealias Response = AppAvailabilityResponse

        public var path: String {
            "/v1/appAvailabilities/\(id)"
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
                URLQueryItem(name: "fields[appAvailabilities]",
                             value: parameters.fields[.appAvailabilities]?.map { "\($0)" }.joined(separator: ",")),
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

        /// - Returns: **200**, Single AppAvailability as `AppAvailabilityResponse`
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
                return try jsonDecoder.decode(AppAvailabilityResponse.self, from: data)

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

extension V1.AppAvailabilities.ById.GET {
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

            public enum AppAvailabilities: Hashable, Codable, RawRepresentable {
                case app
                case availableInNewTerritories
                case availableTerritories
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .app: return "app"
                    case .availableInNewTerritories: return "availableInNewTerritories"
                    case .availableTerritories: return "availableTerritories"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "app": self = .app
                    case "availableInNewTerritories": self = .availableInNewTerritories
                    case "availableTerritories": self = .availableTerritories
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
                /// the fields to include for returned resources of type appAvailabilities
                public static var appAvailabilities: Relation<[AppAvailabilities]?> {
                    .init(key: "fields[appAvailabilities]")
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
            case app
            case availableTerritories
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .app: return "app"
                case .availableTerritories: return "availableTerritories"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "app": self = .app
                case "availableTerritories": self = .availableTerritories
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
                /// maximum number of related availableTerritories returned (when they are included)
                public static var availableTerritories: Relation<Int?> {
                    .init(key: "limit[availableTerritories]")
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
