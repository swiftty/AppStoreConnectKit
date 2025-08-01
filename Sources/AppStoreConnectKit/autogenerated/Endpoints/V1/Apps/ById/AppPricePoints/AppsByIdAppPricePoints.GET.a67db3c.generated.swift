// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.Apps.ById.AppPricePoints {
    public struct GET: Endpoint {
        public typealias Response = AppPricePointsV3Response

        public var path: String {
            "/v1/apps/\(id)/appPricePoints"
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
                URLQueryItem(name: "fields[appPricePoints]",
                             value: parameters.fields[.appPricePoints]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[apps]",
                             value: parameters.fields[.apps]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[territories]",
                             value: parameters.fields[.territories]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[territory]",
                             value: parameters.filter[.territory]?.map { "\($0)" }.joined(separator: ",")),
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

        /// - Returns: **200**, List of AppPricePoints as `AppPricePointsV3Response`
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
                return try jsonDecoder.decode(AppPricePointsV3Response.self, from: data)

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

extension V1.Apps.ById.AppPricePoints.GET {
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

            public struct AppPricePoints: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var app: Self {
                    .init(rawValue: "app")
                }

                public static var customerPrice: Self {
                    .init(rawValue: "customerPrice")
                }

                public static var equalizations: Self {
                    .init(rawValue: "equalizations")
                }

                public static var proceeds: Self {
                    .init(rawValue: "proceeds")
                }

                public static var territory: Self {
                    .init(rawValue: "territory")
                }

                public var description: String {
                    rawValue
                }

                public var rawValue: String

                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
            }

            public struct Apps: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var accessibilityDeclarations: Self {
                    .init(rawValue: "accessibilityDeclarations")
                }

                public static var accessibilityUrl: Self {
                    .init(rawValue: "accessibilityUrl")
                }

                public static var alternativeDistributionKey: Self {
                    .init(rawValue: "alternativeDistributionKey")
                }

                public static var analyticsReportRequests: Self {
                    .init(rawValue: "analyticsReportRequests")
                }

                public static var appAvailabilityV2: Self {
                    .init(rawValue: "appAvailabilityV2")
                }

                public static var appClips: Self {
                    .init(rawValue: "appClips")
                }

                public static var appCustomProductPages: Self {
                    .init(rawValue: "appCustomProductPages")
                }

                public static var appEncryptionDeclarations: Self {
                    .init(rawValue: "appEncryptionDeclarations")
                }

                public static var appEvents: Self {
                    .init(rawValue: "appEvents")
                }

                public static var appInfos: Self {
                    .init(rawValue: "appInfos")
                }

                public static var appPricePoints: Self {
                    .init(rawValue: "appPricePoints")
                }

                public static var appPriceSchedule: Self {
                    .init(rawValue: "appPriceSchedule")
                }

                public static var appStoreVersionExperimentsV2: Self {
                    .init(rawValue: "appStoreVersionExperimentsV2")
                }

                public static var appStoreVersions: Self {
                    .init(rawValue: "appStoreVersions")
                }

                public static var backgroundAssets: Self {
                    .init(rawValue: "backgroundAssets")
                }

                public static var betaAppLocalizations: Self {
                    .init(rawValue: "betaAppLocalizations")
                }

                public static var betaAppReviewDetail: Self {
                    .init(rawValue: "betaAppReviewDetail")
                }

                public static var betaFeedbackCrashSubmissions: Self {
                    .init(rawValue: "betaFeedbackCrashSubmissions")
                }

                public static var betaFeedbackScreenshotSubmissions: Self {
                    .init(rawValue: "betaFeedbackScreenshotSubmissions")
                }

                public static var betaGroups: Self {
                    .init(rawValue: "betaGroups")
                }

                public static var betaLicenseAgreement: Self {
                    .init(rawValue: "betaLicenseAgreement")
                }

                public static var betaTesters: Self {
                    .init(rawValue: "betaTesters")
                }

                public static var builds: Self {
                    .init(rawValue: "builds")
                }

                public static var bundleId: Self {
                    .init(rawValue: "bundleId")
                }

                public static var ciProduct: Self {
                    .init(rawValue: "ciProduct")
                }

                public static var contentRightsDeclaration: Self {
                    .init(rawValue: "contentRightsDeclaration")
                }

                public static var customerReviewSummarizations: Self {
                    .init(rawValue: "customerReviewSummarizations")
                }

                public static var customerReviews: Self {
                    .init(rawValue: "customerReviews")
                }

                public static var endUserLicenseAgreement: Self {
                    .init(rawValue: "endUserLicenseAgreement")
                }

                public static var gameCenterDetail: Self {
                    .init(rawValue: "gameCenterDetail")
                }

                public static var gameCenterEnabledVersions: Self {
                    .init(rawValue: "gameCenterEnabledVersions")
                }

                public static var inAppPurchases: Self {
                    .init(rawValue: "inAppPurchases")
                }

                public static var inAppPurchasesV2: Self {
                    .init(rawValue: "inAppPurchasesV2")
                }

                public static var isOrEverWasMadeForKids: Self {
                    .init(rawValue: "isOrEverWasMadeForKids")
                }

                public static var marketplaceSearchDetail: Self {
                    .init(rawValue: "marketplaceSearchDetail")
                }

                public static var name: Self {
                    .init(rawValue: "name")
                }

                public static var perfPowerMetrics: Self {
                    .init(rawValue: "perfPowerMetrics")
                }

                public static var preReleaseVersions: Self {
                    .init(rawValue: "preReleaseVersions")
                }

                public static var primaryLocale: Self {
                    .init(rawValue: "primaryLocale")
                }

                public static var promotedPurchases: Self {
                    .init(rawValue: "promotedPurchases")
                }

                public static var reviewSubmissions: Self {
                    .init(rawValue: "reviewSubmissions")
                }

                public static var sku: Self {
                    .init(rawValue: "sku")
                }

                public static var streamlinedPurchasingEnabled: Self {
                    .init(rawValue: "streamlinedPurchasingEnabled")
                }

                public static var subscriptionGracePeriod: Self {
                    .init(rawValue: "subscriptionGracePeriod")
                }

                public static var subscriptionGroups: Self {
                    .init(rawValue: "subscriptionGroups")
                }

                public static var subscriptionStatusUrl: Self {
                    .init(rawValue: "subscriptionStatusUrl")
                }

                public static var subscriptionStatusUrlForSandbox: Self {
                    .init(rawValue: "subscriptionStatusUrlForSandbox")
                }

                public static var subscriptionStatusUrlVersion: Self {
                    .init(rawValue: "subscriptionStatusUrlVersion")
                }

                public static var subscriptionStatusUrlVersionForSandbox: Self {
                    .init(rawValue: "subscriptionStatusUrlVersionForSandbox")
                }

                public static var webhooks: Self {
                    .init(rawValue: "webhooks")
                }

                public var description: String {
                    rawValue
                }

                public var rawValue: String

                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
            }

            public struct Territories: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var currency: Self {
                    .init(rawValue: "currency")
                }

                public var description: String {
                    rawValue
                }

                public var rawValue: String

                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type appPricePoints
                public static var appPricePoints: Relation<[AppPricePoints]?> {
                    .init(key: "fields[appPricePoints]")
                }

                /// the fields to include for returned resources of type apps
                public static var apps: Relation<[Apps]?> {
                    .init(key: "fields[apps]")
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

        public struct Filter: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public struct Relation<T>: Hashable {
                /// filter by id(s) of related 'territory'
                public static var territory: Relation<[String]?> {
                    .init(key: "filter[territory]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public struct Include: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
            public static var app: Self {
                .init(rawValue: "app")
            }

            public static var territory: Self {
                .init(rawValue: "territory")
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
