// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.Apps.ById.BetaAppLocalizations {
    public struct GET: Endpoint {
        public typealias Response = BetaAppLocalizationsWithoutIncludesResponse

        public var path: String {
            "/v1/apps/\(id)/betaAppLocalizations"
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
                URLQueryItem(name: "fields[betaAppLocalizations]",
                             value: parameters.fields[.betaAppLocalizations]?.map { "\($0)" }.joined(separator: ",")),
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

        /// - Returns: **200**, List of BetaAppLocalizations with get as `BetaAppLocalizationsWithoutIncludesResponse`
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
                return try jsonDecoder.decode(BetaAppLocalizationsWithoutIncludesResponse.self, from: data)

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

extension V1.Apps.ById.BetaAppLocalizations.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        /// maximum resources per page
        public var limit: Int?

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum BetaAppLocalizations: Hashable, Codable, RawRepresentable {
                case app
                case description
                case feedbackEmail
                case locale
                case marketingUrl
                case privacyPolicyUrl
                case tvOsPrivacyPolicy
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .app: return "app"
                    case .description: return "description"
                    case .feedbackEmail: return "feedbackEmail"
                    case .locale: return "locale"
                    case .marketingUrl: return "marketingUrl"
                    case .privacyPolicyUrl: return "privacyPolicyUrl"
                    case .tvOsPrivacyPolicy: return "tvOsPrivacyPolicy"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "app": self = .app
                    case "description": self = .description
                    case "feedbackEmail": self = .feedbackEmail
                    case "locale": self = .locale
                    case "marketingUrl": self = .marketingUrl
                    case "privacyPolicyUrl": self = .privacyPolicyUrl
                    case "tvOsPrivacyPolicy": self = .tvOsPrivacyPolicy
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type betaAppLocalizations
                public static var betaAppLocalizations: Relation<[BetaAppLocalizations]?> {
                    .init(key: "fields[betaAppLocalizations]")
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
