// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.SubscriptionOfferCodeCustomCodes.ById {
    public struct GET: Endpoint {
        public typealias Response = SubscriptionOfferCodeCustomCodeResponse

        public var path: String {
            "/v1/subscriptionOfferCodeCustomCodes/\(id)"
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
                URLQueryItem(name: "fields[subscriptionOfferCodeCustomCodes]",
                             value: parameters.fields[.subscriptionOfferCodeCustomCodes]?.map { "\($0)" }.joined(separator: ",")),
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

        /// - Returns: **200**, Single SubscriptionOfferCodeCustomCode as `SubscriptionOfferCodeCustomCodeResponse`
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
                return try jsonDecoder.decode(SubscriptionOfferCodeCustomCodeResponse.self, from: data)

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

extension V1.SubscriptionOfferCodeCustomCodes.ById.GET {
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

            public enum SubscriptionOfferCodeCustomCodes: Hashable, Codable, RawRepresentable {
                case active
                case createdDate
                case customCode
                case expirationDate
                case numberOfCodes
                case offerCode
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .active: return "active"
                    case .createdDate: return "createdDate"
                    case .customCode: return "customCode"
                    case .expirationDate: return "expirationDate"
                    case .numberOfCodes: return "numberOfCodes"
                    case .offerCode: return "offerCode"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "active": self = .active
                    case "createdDate": self = .createdDate
                    case "customCode": self = .customCode
                    case "expirationDate": self = .expirationDate
                    case "numberOfCodes": self = .numberOfCodes
                    case "offerCode": self = .offerCode
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type subscriptionOfferCodeCustomCodes
                public static var subscriptionOfferCodeCustomCodes: Relation<[SubscriptionOfferCodeCustomCodes]?> {
                    .init(key: "fields[subscriptionOfferCodeCustomCodes]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case offerCode
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .offerCode: return "offerCode"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "offerCode": self = .offerCode
                default: self = .unknown(rawValue)
                }
            }
        }
    }
}

// swiftlint:enable all
