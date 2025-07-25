// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.AppStoreVersionExperimentTreatmentLocalizations.ById.AppScreenshotSets {
    public struct GET: Endpoint {
        public typealias Response = AppScreenshotSetsResponse

        public var path: String {
            "/v1/appStoreVersionExperimentTreatmentLocalizations/\(id)/appScreenshotSets"
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
                URLQueryItem(name: "fields[appCustomProductPageLocalizations]",
                             value: parameters.fields[.appCustomProductPageLocalizations]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[appScreenshotSets]",
                             value: parameters.fields[.appScreenshotSets]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[appScreenshots]",
                             value: parameters.fields[.appScreenshots]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[appStoreVersionExperimentTreatmentLocalizations]",
                             value: parameters.fields[.appStoreVersionExperimentTreatmentLocalizations]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[appStoreVersionLocalizations]",
                             value: parameters.fields[.appStoreVersionLocalizations]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[appCustomProductPageLocalization]",
                             value: parameters.filter[.appCustomProductPageLocalization]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[appStoreVersionLocalization]",
                             value: parameters.filter[.appStoreVersionLocalization]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[screenshotDisplayType]",
                             value: parameters.filter[.screenshotDisplayType]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[appScreenshots]",
                             value: parameters.limit[.appScreenshots].map { "\($0)" }),
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

        /// - Returns: **200**, List of AppScreenshotSets as `AppScreenshotSetsResponse`
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
                return try jsonDecoder.decode(AppScreenshotSetsResponse.self, from: data)

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

extension V1.AppStoreVersionExperimentTreatmentLocalizations.ById.AppScreenshotSets.GET {
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

            public struct AppCustomProductPageLocalizations: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var appCustomProductPageVersion: Self {
                    .init(rawValue: "appCustomProductPageVersion")
                }

                public static var appPreviewSets: Self {
                    .init(rawValue: "appPreviewSets")
                }

                public static var appScreenshotSets: Self {
                    .init(rawValue: "appScreenshotSets")
                }

                public static var locale: Self {
                    .init(rawValue: "locale")
                }

                public static var promotionalText: Self {
                    .init(rawValue: "promotionalText")
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

            public struct AppScreenshots: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var appScreenshotSet: Self {
                    .init(rawValue: "appScreenshotSet")
                }

                public static var assetDeliveryState: Self {
                    .init(rawValue: "assetDeliveryState")
                }

                public static var assetToken: Self {
                    .init(rawValue: "assetToken")
                }

                public static var assetType: Self {
                    .init(rawValue: "assetType")
                }

                public static var fileName: Self {
                    .init(rawValue: "fileName")
                }

                public static var fileSize: Self {
                    .init(rawValue: "fileSize")
                }

                public static var imageAsset: Self {
                    .init(rawValue: "imageAsset")
                }

                public static var sourceFileChecksum: Self {
                    .init(rawValue: "sourceFileChecksum")
                }

                public static var uploadOperations: Self {
                    .init(rawValue: "uploadOperations")
                }

                public var description: String {
                    rawValue
                }

                public var rawValue: String

                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
            }

            public struct AppStoreVersionExperimentTreatmentLocalizations: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var appPreviewSets: Self {
                    .init(rawValue: "appPreviewSets")
                }

                public static var appScreenshotSets: Self {
                    .init(rawValue: "appScreenshotSets")
                }

                public static var appStoreVersionExperimentTreatment: Self {
                    .init(rawValue: "appStoreVersionExperimentTreatment")
                }

                public static var locale: Self {
                    .init(rawValue: "locale")
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

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type appCustomProductPageLocalizations
                public static var appCustomProductPageLocalizations: Relation<[AppCustomProductPageLocalizations]?> {
                    .init(key: "fields[appCustomProductPageLocalizations]")
                }

                /// the fields to include for returned resources of type appScreenshotSets
                public static var appScreenshotSets: Relation<[AppScreenshotSets]?> {
                    .init(key: "fields[appScreenshotSets]")
                }

                /// the fields to include for returned resources of type appScreenshots
                public static var appScreenshots: Relation<[AppScreenshots]?> {
                    .init(key: "fields[appScreenshots]")
                }

                /// the fields to include for returned resources of type appStoreVersionExperimentTreatmentLocalizations
                public static var appStoreVersionExperimentTreatmentLocalizations: Relation<[AppStoreVersionExperimentTreatmentLocalizations]?> {
                    .init(key: "fields[appStoreVersionExperimentTreatmentLocalizations]")
                }

                /// the fields to include for returned resources of type appStoreVersionLocalizations
                public static var appStoreVersionLocalizations: Relation<[AppStoreVersionLocalizations]?> {
                    .init(key: "fields[appStoreVersionLocalizations]")
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

            public struct ScreenshotDisplayType: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var appAppleTv: Self {
                    .init(rawValue: "APP_APPLE_TV")
                }

                public static var appAppleVisionPro: Self {
                    .init(rawValue: "APP_APPLE_VISION_PRO")
                }

                public static var appDesktop: Self {
                    .init(rawValue: "APP_DESKTOP")
                }

                public static var appIpad105: Self {
                    .init(rawValue: "APP_IPAD_105")
                }

                public static var appIpad97: Self {
                    .init(rawValue: "APP_IPAD_97")
                }

                public static var appIpadPro129: Self {
                    .init(rawValue: "APP_IPAD_PRO_129")
                }

                public static var appIpadPro3Gen11: Self {
                    .init(rawValue: "APP_IPAD_PRO_3GEN_11")
                }

                public static var appIpadPro3Gen129: Self {
                    .init(rawValue: "APP_IPAD_PRO_3GEN_129")
                }

                public static var appIphone35: Self {
                    .init(rawValue: "APP_IPHONE_35")
                }

                public static var appIphone40: Self {
                    .init(rawValue: "APP_IPHONE_40")
                }

                public static var appIphone47: Self {
                    .init(rawValue: "APP_IPHONE_47")
                }

                public static var appIphone55: Self {
                    .init(rawValue: "APP_IPHONE_55")
                }

                public static var appIphone58: Self {
                    .init(rawValue: "APP_IPHONE_58")
                }

                public static var appIphone61: Self {
                    .init(rawValue: "APP_IPHONE_61")
                }

                public static var appIphone65: Self {
                    .init(rawValue: "APP_IPHONE_65")
                }

                public static var appIphone67: Self {
                    .init(rawValue: "APP_IPHONE_67")
                }

                public static var appWatchSeries10: Self {
                    .init(rawValue: "APP_WATCH_SERIES_10")
                }

                public static var appWatchSeries3: Self {
                    .init(rawValue: "APP_WATCH_SERIES_3")
                }

                public static var appWatchSeries4: Self {
                    .init(rawValue: "APP_WATCH_SERIES_4")
                }

                public static var appWatchSeries7: Self {
                    .init(rawValue: "APP_WATCH_SERIES_7")
                }

                public static var appWatchUltra: Self {
                    .init(rawValue: "APP_WATCH_ULTRA")
                }

                public static var imessageAppIpad105: Self {
                    .init(rawValue: "IMESSAGE_APP_IPAD_105")
                }

                public static var imessageAppIpad97: Self {
                    .init(rawValue: "IMESSAGE_APP_IPAD_97")
                }

                public static var imessageAppIpadPro129: Self {
                    .init(rawValue: "IMESSAGE_APP_IPAD_PRO_129")
                }

                public static var imessageAppIpadPro3Gen11: Self {
                    .init(rawValue: "IMESSAGE_APP_IPAD_PRO_3GEN_11")
                }

                public static var imessageAppIpadPro3Gen129: Self {
                    .init(rawValue: "IMESSAGE_APP_IPAD_PRO_3GEN_129")
                }

                public static var imessageAppIphone40: Self {
                    .init(rawValue: "IMESSAGE_APP_IPHONE_40")
                }

                public static var imessageAppIphone47: Self {
                    .init(rawValue: "IMESSAGE_APP_IPHONE_47")
                }

                public static var imessageAppIphone55: Self {
                    .init(rawValue: "IMESSAGE_APP_IPHONE_55")
                }

                public static var imessageAppIphone58: Self {
                    .init(rawValue: "IMESSAGE_APP_IPHONE_58")
                }

                public static var imessageAppIphone61: Self {
                    .init(rawValue: "IMESSAGE_APP_IPHONE_61")
                }

                public static var imessageAppIphone65: Self {
                    .init(rawValue: "IMESSAGE_APP_IPHONE_65")
                }

                public static var imessageAppIphone67: Self {
                    .init(rawValue: "IMESSAGE_APP_IPHONE_67")
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
                /// filter by id(s) of related 'appCustomProductPageLocalization'
                public static var appCustomProductPageLocalization: Relation<[String]?> {
                    .init(key: "filter[appCustomProductPageLocalization]")
                }

                /// filter by id(s) of related 'appStoreVersionLocalization'
                public static var appStoreVersionLocalization: Relation<[String]?> {
                    .init(key: "filter[appStoreVersionLocalization]")
                }

                /// filter by attribute 'screenshotDisplayType'
                public static var screenshotDisplayType: Relation<[ScreenshotDisplayType]?> {
                    .init(key: "filter[screenshotDisplayType]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public struct Include: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
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
                /// maximum number of related appScreenshots returned (when they are included)
                public static var appScreenshots: Relation<Int?> {
                    .init(key: "limit[appScreenshots]")
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
