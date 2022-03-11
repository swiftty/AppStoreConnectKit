// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.AppEncryptionDeclarations {
    public struct GET: Endpoint {
        public typealias Response = AppEncryptionDeclarationsResponse

        public var path: String {
            "/v1/appEncryptionDeclarations"
        }

        public var parameters: Parameters = Parameters()

        public init() {

        }

        public func request(with baseURL: URL) throws -> URLRequest? {
            var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
            components?.path = path

            components?.queryItems = [
                URLQueryItem(name: "fields[appEncryptionDeclarations]",
                             value: parameters.fields[.appEncryptionDeclarations]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[apps]",
                             value: parameters.fields[.apps]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[app]",
                             value: parameters.filter[.app]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[builds]",
                             value: parameters.filter[.builds]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[platform]",
                             value: parameters.filter[.platform]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
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

        /// - Returns: **200**, List of AppEncryptionDeclarations as `AppEncryptionDeclarationsResponse`
        /// - Throws: **400**, Parameter error(s) as `ErrorResponse`
        /// - Throws: **403**, Forbidden error as `ErrorResponse`
        public static func response(from data: Data, urlResponse: HTTPURLResponse) throws -> Response {
            var jsonDecoder: JSONDecoder {
                let decoder = JSONDecoder()
                return decoder
            }

            switch urlResponse.statusCode {
            case 200:
                return try jsonDecoder.decode(AppEncryptionDeclarationsResponse.self, from: data)

            case 400:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            case 403:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            default:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)
            }
        }
    }
}

extension V1.AppEncryptionDeclarations.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        public var filter: Filter = Filter()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        /// maximum resources per page
        public var limit: Int?

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum AppEncryptionDeclarations: Hashable, Codable, RawRepresentable {
                case app
                case appEncryptionDeclarationState
                case availableOnFrenchStore
                case builds
                case codeValue
                case containsProprietaryCryptography
                case containsThirdPartyCryptography
                case documentName
                case documentType
                case documentUrl
                case exempt
                case platform
                case uploadedDate
                case usesEncryption
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .app: return "app"
                    case .appEncryptionDeclarationState: return "appEncryptionDeclarationState"
                    case .availableOnFrenchStore: return "availableOnFrenchStore"
                    case .builds: return "builds"
                    case .codeValue: return "codeValue"
                    case .containsProprietaryCryptography: return "containsProprietaryCryptography"
                    case .containsThirdPartyCryptography: return "containsThirdPartyCryptography"
                    case .documentName: return "documentName"
                    case .documentType: return "documentType"
                    case .documentUrl: return "documentUrl"
                    case .exempt: return "exempt"
                    case .platform: return "platform"
                    case .uploadedDate: return "uploadedDate"
                    case .usesEncryption: return "usesEncryption"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "app": self = .app
                    case "appEncryptionDeclarationState": self = .appEncryptionDeclarationState
                    case "availableOnFrenchStore": self = .availableOnFrenchStore
                    case "builds": self = .builds
                    case "codeValue": self = .codeValue
                    case "containsProprietaryCryptography": self = .containsProprietaryCryptography
                    case "containsThirdPartyCryptography": self = .containsThirdPartyCryptography
                    case "documentName": self = .documentName
                    case "documentType": self = .documentType
                    case "documentUrl": self = .documentUrl
                    case "exempt": self = .exempt
                    case "platform": self = .platform
                    case "uploadedDate": self = .uploadedDate
                    case "usesEncryption": self = .usesEncryption
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum Apps: Hashable, Codable, RawRepresentable {
                case appClips
                case appCustomProductPages
                case appEvents
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
                case pricePoints
                case prices
                case primaryLocale
                case reviewSubmissions
                case sku
                case subscriptionStatusUrl
                case subscriptionStatusUrlForSandbox
                case subscriptionStatusUrlVersion
                case subscriptionStatusUrlVersionForSandbox
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appClips: return "appClips"
                    case .appCustomProductPages: return "appCustomProductPages"
                    case .appEvents: return "appEvents"
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
                    case .pricePoints: return "pricePoints"
                    case .prices: return "prices"
                    case .primaryLocale: return "primaryLocale"
                    case .reviewSubmissions: return "reviewSubmissions"
                    case .sku: return "sku"
                    case .subscriptionStatusUrl: return "subscriptionStatusUrl"
                    case .subscriptionStatusUrlForSandbox: return "subscriptionStatusUrlForSandbox"
                    case .subscriptionStatusUrlVersion: return "subscriptionStatusUrlVersion"
                    case .subscriptionStatusUrlVersionForSandbox: return "subscriptionStatusUrlVersionForSandbox"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "appClips": self = .appClips
                    case "appCustomProductPages": self = .appCustomProductPages
                    case "appEvents": self = .appEvents
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
                    case "pricePoints": self = .pricePoints
                    case "prices": self = .prices
                    case "primaryLocale": self = .primaryLocale
                    case "reviewSubmissions": self = .reviewSubmissions
                    case "sku": self = .sku
                    case "subscriptionStatusUrl": self = .subscriptionStatusUrl
                    case "subscriptionStatusUrlForSandbox": self = .subscriptionStatusUrlForSandbox
                    case "subscriptionStatusUrlVersion": self = .subscriptionStatusUrlVersion
                    case "subscriptionStatusUrlVersionForSandbox": self = .subscriptionStatusUrlVersionForSandbox
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type appEncryptionDeclarations
                public static var appEncryptionDeclarations: Relation<[AppEncryptionDeclarations]?> {
                    .init(key: "fields[appEncryptionDeclarations]")
                }

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

                /// filter by id(s) of related 'builds'
                public static var builds: Relation<[String]?> {
                    .init(key: "filter[builds]")
                }

                /// filter by attribute 'platform'
                public static var platform: Relation<[Platform]?> {
                    .init(key: "filter[platform]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case app
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .app: return "app"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "app": self = .app
                default: self = .unknown(rawValue)
                }
            }
        }
    }
}

// swiftlint:enable all
