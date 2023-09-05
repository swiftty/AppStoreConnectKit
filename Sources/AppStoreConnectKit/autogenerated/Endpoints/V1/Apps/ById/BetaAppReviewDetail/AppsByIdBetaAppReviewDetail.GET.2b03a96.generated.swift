// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.Apps.ById.BetaAppReviewDetail {
    public struct GET: Endpoint {
        public typealias Response = BetaAppReviewDetailResponse

        public var path: String {
            "/v1/apps/\(id)/betaAppReviewDetail"
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
                URLQueryItem(name: "fields[betaAppReviewDetails]",
                             value: parameters.fields[.betaAppReviewDetails]?.map { "\($0)" }.joined(separator: ","))
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Single BetaAppReviewDetail as `BetaAppReviewDetailResponse`
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
                return try jsonDecoder.decode(BetaAppReviewDetailResponse.self, from: data)

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

extension V1.Apps.ById.BetaAppReviewDetail.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<Self, T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum BetaAppReviewDetails: Hashable, Codable, RawRepresentable {
                case app
                case contactEmail
                case contactFirstName
                case contactLastName
                case contactPhone
                case demoAccountName
                case demoAccountPassword
                case demoAccountRequired
                case notes
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .app: return "app"
                    case .contactEmail: return "contactEmail"
                    case .contactFirstName: return "contactFirstName"
                    case .contactLastName: return "contactLastName"
                    case .contactPhone: return "contactPhone"
                    case .demoAccountName: return "demoAccountName"
                    case .demoAccountPassword: return "demoAccountPassword"
                    case .demoAccountRequired: return "demoAccountRequired"
                    case .notes: return "notes"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "app": self = .app
                    case "contactEmail": self = .contactEmail
                    case "contactFirstName": self = .contactFirstName
                    case "contactLastName": self = .contactLastName
                    case "contactPhone": self = .contactPhone
                    case "demoAccountName": self = .demoAccountName
                    case "demoAccountPassword": self = .demoAccountPassword
                    case "demoAccountRequired": self = .demoAccountRequired
                    case "notes": self = .notes
                    default: self = .unknown(rawValue)
                    }
                }
            }
        }
    }
}

extension Relation<V1.Apps.ById.BetaAppReviewDetail.GET.Parameters.Fields, [V1.Apps.ById.BetaAppReviewDetail.GET.Parameters.Fields.BetaAppReviewDetails]?> {
    /// the fields to include for returned resources of type betaAppReviewDetails
    public static var betaAppReviewDetails: Relation {
        .init(key: "fields[betaAppReviewDetails]")
    }
}

// swiftlint:enable all
