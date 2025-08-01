// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.AppStoreVersions.ById.AppStoreVersionLocalizations {
    public struct GET: Endpoint {
        public typealias Response = AppStoreVersionLocalizationsResponse

        public var path: String {
            "/v1/appStoreVersions/\(id)/appStoreVersionLocalizations"
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
                URLQueryItem(name: "fields[appPreviewSets]",
                             value: parameters.fields[.appPreviewSets]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[appScreenshotSets]",
                             value: parameters.fields[.appScreenshotSets]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[appStoreVersionLocalizations]",
                             value: parameters.fields[.appStoreVersionLocalizations]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[appStoreVersions]",
                             value: parameters.fields[.appStoreVersions]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[locale]",
                             value: parameters.filter[.locale]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[appPreviewSets]",
                             value: parameters.limit[.appPreviewSets].map { "\($0)" }),
                URLQueryItem(name: "limit[appScreenshotSets]",
                             value: parameters.limit[.appScreenshotSets].map { "\($0)" }),
                URLQueryItem(name: "limit",
                             value: parameters.limit[].map { "\($0)" })
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, List of AppStoreVersionLocalizations as `AppStoreVersionLocalizationsResponse`
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
                return try jsonDecoder.decode(AppStoreVersionLocalizationsResponse.self, from: data)

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

extension V1.AppStoreVersions.ById.AppStoreVersionLocalizations.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        public var filter: Filter = Filter()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        /// maximum resources per page
        public var limit: Limit = Limit()

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public struct AppPreviewSets: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var appCustomProductPageLocalization: Self {
                    .init(rawValue: "appCustomProductPageLocalization")
                }

                public static var appPreviews: Self {
                    .init(rawValue: "appPreviews")
                }

                public static var appStoreVersionExperimentTreatmentLocalization: Self {
                    .init(rawValue: "appStoreVersionExperimentTreatmentLocalization")
                }

                public static var appStoreVersionLocalization: Self {
                    .init(rawValue: "appStoreVersionLocalization")
                }

                public static var previewType: Self {
                    .init(rawValue: "previewType")
                }

                public var description: String {
                    rawValue
                }

                public var rawValue: String

                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
            }

            public struct AppScreenshotSets: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var appCustomProductPageLocalization: Self {
                    .init(rawValue: "appCustomProductPageLocalization")
                }

                public static var appScreenshots: Self {
                    .init(rawValue: "appScreenshots")
                }

                public static var appStoreVersionExperimentTreatmentLocalization: Self {
                    .init(rawValue: "appStoreVersionExperimentTreatmentLocalization")
                }

                public static var appStoreVersionLocalization: Self {
                    .init(rawValue: "appStoreVersionLocalization")
                }

                public static var screenshotDisplayType: Self {
                    .init(rawValue: "screenshotDisplayType")
                }

                public var description: String {
                    rawValue
                }

                public var rawValue: String

                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
            }

            public struct AppStoreVersionLocalizations: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var appPreviewSets: Self {
                    .init(rawValue: "appPreviewSets")
                }

                public static var appScreenshotSets: Self {
                    .init(rawValue: "appScreenshotSets")
                }

                public static var appStoreVersion: Self {
                    .init(rawValue: "appStoreVersion")
                }

                public static var description: Self {
                    .init(rawValue: "description")
                }

                public static var keywords: Self {
                    .init(rawValue: "keywords")
                }

                public static var locale: Self {
                    .init(rawValue: "locale")
                }

                public static var marketingUrl: Self {
                    .init(rawValue: "marketingUrl")
                }

                public static var promotionalText: Self {
                    .init(rawValue: "promotionalText")
                }

                public static var supportUrl: Self {
                    .init(rawValue: "supportUrl")
                }

                public static var whatsNew: Self {
                    .init(rawValue: "whatsNew")
                }

                public var description: String {
                    rawValue
                }

                public var rawValue: String

                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
            }

            public struct AppStoreVersions: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var ageRatingDeclaration: Self {
                    .init(rawValue: "ageRatingDeclaration")
                }

                public static var alternativeDistributionPackage: Self {
                    .init(rawValue: "alternativeDistributionPackage")
                }

                public static var app: Self {
                    .init(rawValue: "app")
                }

                public static var appClipDefaultExperience: Self {
                    .init(rawValue: "appClipDefaultExperience")
                }

                public static var appStoreReviewDetail: Self {
                    .init(rawValue: "appStoreReviewDetail")
                }

                public static var appStoreState: Self {
                    .init(rawValue: "appStoreState")
                }

                public static var appStoreVersionExperiments: Self {
                    .init(rawValue: "appStoreVersionExperiments")
                }

                public static var appStoreVersionExperimentsV2: Self {
                    .init(rawValue: "appStoreVersionExperimentsV2")
                }

                public static var appStoreVersionLocalizations: Self {
                    .init(rawValue: "appStoreVersionLocalizations")
                }

                public static var appStoreVersionPhasedRelease: Self {
                    .init(rawValue: "appStoreVersionPhasedRelease")
                }

                public static var appStoreVersionSubmission: Self {
                    .init(rawValue: "appStoreVersionSubmission")
                }

                public static var appVersionState: Self {
                    .init(rawValue: "appVersionState")
                }

                public static var build: Self {
                    .init(rawValue: "build")
                }

                public static var copyright: Self {
                    .init(rawValue: "copyright")
                }

                public static var createdDate: Self {
                    .init(rawValue: "createdDate")
                }

                public static var customerReviews: Self {
                    .init(rawValue: "customerReviews")
                }

                public static var downloadable: Self {
                    .init(rawValue: "downloadable")
                }

                public static var earliestReleaseDate: Self {
                    .init(rawValue: "earliestReleaseDate")
                }

                public static var gameCenterAppVersion: Self {
                    .init(rawValue: "gameCenterAppVersion")
                }

                public static var platform: Self {
                    .init(rawValue: "platform")
                }

                public static var releaseType: Self {
                    .init(rawValue: "releaseType")
                }

                public static var reviewType: Self {
                    .init(rawValue: "reviewType")
                }

                public static var routingAppCoverage: Self {
                    .init(rawValue: "routingAppCoverage")
                }

                public static var usesIdfa: Self {
                    .init(rawValue: "usesIdfa")
                }

                public static var versionString: Self {
                    .init(rawValue: "versionString")
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
                /// the fields to include for returned resources of type appPreviewSets
                public static var appPreviewSets: Relation<[AppPreviewSets]?> {
                    .init(key: "fields[appPreviewSets]")
                }

                /// the fields to include for returned resources of type appScreenshotSets
                public static var appScreenshotSets: Relation<[AppScreenshotSets]?> {
                    .init(key: "fields[appScreenshotSets]")
                }

                /// the fields to include for returned resources of type appStoreVersionLocalizations
                public static var appStoreVersionLocalizations: Relation<[AppStoreVersionLocalizations]?> {
                    .init(key: "fields[appStoreVersionLocalizations]")
                }

                /// the fields to include for returned resources of type appStoreVersions
                public static var appStoreVersions: Relation<[AppStoreVersions]?> {
                    .init(key: "fields[appStoreVersions]")
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
                /// filter by attribute 'locale'
                public static var locale: Relation<[String]?> {
                    .init(key: "filter[locale]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public struct Include: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
            public static var appPreviewSets: Self {
                .init(rawValue: "appPreviewSets")
            }

            public static var appScreenshotSets: Self {
                .init(rawValue: "appScreenshotSets")
            }

            public static var appStoreVersion: Self {
                .init(rawValue: "appStoreVersion")
            }

            public var description: String {
                rawValue
            }

            public var rawValue: String

            public init(rawValue: String) {
                self.rawValue = rawValue
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
                /// maximum number of related appPreviewSets returned (when they are included)
                public static var appPreviewSets: Relation<Int?> {
                    .init(key: "limit[appPreviewSets]")
                }

                /// maximum number of related appScreenshotSets returned (when they are included)
                public static var appScreenshotSets: Relation<Int?> {
                    .init(key: "limit[appScreenshotSets]")
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
