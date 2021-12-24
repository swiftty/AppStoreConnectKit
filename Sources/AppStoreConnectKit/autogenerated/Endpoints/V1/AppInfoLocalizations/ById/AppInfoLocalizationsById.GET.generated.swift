// autogenerated

// swiftlint:disable all
import Foundation

extension V1.AppInfoLocalizations.ById {
    public struct GET: Endpoint {
        public typealias Response = AppInfoLocalizationResponse

        public var path: String {
            "/v1/appInfoLocalizations/\(id)"
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
                URLQueryItem(name: "fields[appInfoLocalizations]",
                             value: parameters.fields[.appInfoLocalizations]?.map { "\($0)" }.joined(separator: ",")),
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

        /// - Returns: **200**, Single AppInfoLocalization as `AppInfoLocalizationResponse`
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
                return try jsonDecoder.decode(AppInfoLocalizationResponse.self, from: data)

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

extension V1.AppInfoLocalizations.ById.GET {
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

            public enum AppInfoLocalizations: Hashable, Codable, RawRepresentable {
                case appInfo
                case locale
                case name
                case privacyChoicesUrl
                case privacyPolicyText
                case privacyPolicyUrl
                case subtitle
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appInfo: return "appInfo"
                    case .locale: return "locale"
                    case .name: return "name"
                    case .privacyChoicesUrl: return "privacyChoicesUrl"
                    case .privacyPolicyText: return "privacyPolicyText"
                    case .privacyPolicyUrl: return "privacyPolicyUrl"
                    case .subtitle: return "subtitle"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "appInfo": self = .appInfo
                    case "locale": self = .locale
                    case "name": self = .name
                    case "privacyChoicesUrl": self = .privacyChoicesUrl
                    case "privacyPolicyText": self = .privacyPolicyText
                    case "privacyPolicyUrl": self = .privacyPolicyUrl
                    case "subtitle": self = .subtitle
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type appInfoLocalizations
                public static var appInfoLocalizations: Relation<[AppInfoLocalizations]?> {
                    .init(key: "fields[appInfoLocalizations]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case appInfo
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .appInfo: return "appInfo"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "appInfo": self = .appInfo
                default: self = .unknown(rawValue)
                }
            }
        }
    }
}

// swiftlint:enable all
