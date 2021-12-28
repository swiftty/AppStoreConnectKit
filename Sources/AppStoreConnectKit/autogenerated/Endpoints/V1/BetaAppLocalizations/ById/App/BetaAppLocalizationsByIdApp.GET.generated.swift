// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.BetaAppLocalizations.ById.App {
    public struct GET: Endpoint {
        public typealias Response = AppResponse

        public var path: String {
            "/v1/betaAppLocalizations/\(id)/app"
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
                URLQueryItem(name: "fields[apps]",
                             value: parameters.fields[.apps]?.map { "\($0)" }.joined(separator: ","))
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Related resource as `AppResponse`
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
                return try jsonDecoder.decode(AppResponse.self, from: data)

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

extension V1.BetaAppLocalizations.ById.App.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum Apps: Hashable, Codable, RawRepresentable {
                case appClips
                case appInfos
                case appStoreVersions
                case availableInNewTerritories
                case availableTerritories
                case betaAppLocalizations
                case betaAppReviewDetail
                case betaGroups
                case betaLicenseAgreement
                case betaTesters
                case builds
                case bundleId
                case ciProduct
                case contentRightsDeclaration
                case endUserLicenseAgreement
                case gameCenterEnabledVersions
                case inAppPurchases
                case isOrEverWasMadeForKids
                case name
                case perfPowerMetrics
                case preOrder
                case preReleaseVersions
                case prices
                case primaryLocale
                case sku
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appClips: return "appClips"
                    case .appInfos: return "appInfos"
                    case .appStoreVersions: return "appStoreVersions"
                    case .availableInNewTerritories: return "availableInNewTerritories"
                    case .availableTerritories: return "availableTerritories"
                    case .betaAppLocalizations: return "betaAppLocalizations"
                    case .betaAppReviewDetail: return "betaAppReviewDetail"
                    case .betaGroups: return "betaGroups"
                    case .betaLicenseAgreement: return "betaLicenseAgreement"
                    case .betaTesters: return "betaTesters"
                    case .builds: return "builds"
                    case .bundleId: return "bundleId"
                    case .ciProduct: return "ciProduct"
                    case .contentRightsDeclaration: return "contentRightsDeclaration"
                    case .endUserLicenseAgreement: return "endUserLicenseAgreement"
                    case .gameCenterEnabledVersions: return "gameCenterEnabledVersions"
                    case .inAppPurchases: return "inAppPurchases"
                    case .isOrEverWasMadeForKids: return "isOrEverWasMadeForKids"
                    case .name: return "name"
                    case .perfPowerMetrics: return "perfPowerMetrics"
                    case .preOrder: return "preOrder"
                    case .preReleaseVersions: return "preReleaseVersions"
                    case .prices: return "prices"
                    case .primaryLocale: return "primaryLocale"
                    case .sku: return "sku"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "appClips": self = .appClips
                    case "appInfos": self = .appInfos
                    case "appStoreVersions": self = .appStoreVersions
                    case "availableInNewTerritories": self = .availableInNewTerritories
                    case "availableTerritories": self = .availableTerritories
                    case "betaAppLocalizations": self = .betaAppLocalizations
                    case "betaAppReviewDetail": self = .betaAppReviewDetail
                    case "betaGroups": self = .betaGroups
                    case "betaLicenseAgreement": self = .betaLicenseAgreement
                    case "betaTesters": self = .betaTesters
                    case "builds": self = .builds
                    case "bundleId": self = .bundleId
                    case "ciProduct": self = .ciProduct
                    case "contentRightsDeclaration": self = .contentRightsDeclaration
                    case "endUserLicenseAgreement": self = .endUserLicenseAgreement
                    case "gameCenterEnabledVersions": self = .gameCenterEnabledVersions
                    case "inAppPurchases": self = .inAppPurchases
                    case "isOrEverWasMadeForKids": self = .isOrEverWasMadeForKids
                    case "name": self = .name
                    case "perfPowerMetrics": self = .perfPowerMetrics
                    case "preOrder": self = .preOrder
                    case "preReleaseVersions": self = .preReleaseVersions
                    case "prices": self = .prices
                    case "primaryLocale": self = .primaryLocale
                    case "sku": self = .sku
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type apps
                public static var apps: Relation<[Apps]?> {
                    .init(key: "fields[apps]")
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
