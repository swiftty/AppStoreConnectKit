// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.AppStoreVersionLocalizations.ById.AppScreenshotSets {
    public struct GET: Endpoint {
        public typealias Response = AppScreenshotSetsResponse

        public var path: String {
            "/v1/appStoreVersionLocalizations/\(id)/appScreenshotSets"
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
                URLQueryItem(name: "filter[appStoreVersionExperimentTreatmentLocalization]",
                             value: parameters.filter[.appStoreVersionExperimentTreatmentLocalization]?.map { "\($0)" }.joined(separator: ",")),
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
        /// - Throws: **403**, Forbidden error as `ErrorResponse`
        /// - Throws: **404**, Not found error as `ErrorResponse`
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

extension V1.AppStoreVersionLocalizations.ById.AppScreenshotSets.GET {
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

            public enum AppCustomProductPageLocalizations: Hashable, Codable, RawRepresentable {
                case appCustomProductPageVersion
                case appPreviewSets
                case appScreenshotSets
                case locale
                case promotionalText
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appCustomProductPageVersion: return "appCustomProductPageVersion"
                    case .appPreviewSets: return "appPreviewSets"
                    case .appScreenshotSets: return "appScreenshotSets"
                    case .locale: return "locale"
                    case .promotionalText: return "promotionalText"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "appCustomProductPageVersion": self = .appCustomProductPageVersion
                    case "appPreviewSets": self = .appPreviewSets
                    case "appScreenshotSets": self = .appScreenshotSets
                    case "locale": self = .locale
                    case "promotionalText": self = .promotionalText
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum AppScreenshotSets: Hashable, Codable, RawRepresentable {
                case appCustomProductPageLocalization
                case appScreenshots
                case appStoreVersionExperimentTreatmentLocalization
                case appStoreVersionLocalization
                case screenshotDisplayType
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appCustomProductPageLocalization: return "appCustomProductPageLocalization"
                    case .appScreenshots: return "appScreenshots"
                    case .appStoreVersionExperimentTreatmentLocalization: return "appStoreVersionExperimentTreatmentLocalization"
                    case .appStoreVersionLocalization: return "appStoreVersionLocalization"
                    case .screenshotDisplayType: return "screenshotDisplayType"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "appCustomProductPageLocalization": self = .appCustomProductPageLocalization
                    case "appScreenshots": self = .appScreenshots
                    case "appStoreVersionExperimentTreatmentLocalization": self = .appStoreVersionExperimentTreatmentLocalization
                    case "appStoreVersionLocalization": self = .appStoreVersionLocalization
                    case "screenshotDisplayType": self = .screenshotDisplayType
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum AppScreenshots: Hashable, Codable, RawRepresentable {
                case appScreenshotSet
                case assetDeliveryState
                case assetToken
                case assetType
                case fileName
                case fileSize
                case imageAsset
                case sourceFileChecksum
                case uploadOperations
                case uploaded
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appScreenshotSet: return "appScreenshotSet"
                    case .assetDeliveryState: return "assetDeliveryState"
                    case .assetToken: return "assetToken"
                    case .assetType: return "assetType"
                    case .fileName: return "fileName"
                    case .fileSize: return "fileSize"
                    case .imageAsset: return "imageAsset"
                    case .sourceFileChecksum: return "sourceFileChecksum"
                    case .uploadOperations: return "uploadOperations"
                    case .uploaded: return "uploaded"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "appScreenshotSet": self = .appScreenshotSet
                    case "assetDeliveryState": self = .assetDeliveryState
                    case "assetToken": self = .assetToken
                    case "assetType": self = .assetType
                    case "fileName": self = .fileName
                    case "fileSize": self = .fileSize
                    case "imageAsset": self = .imageAsset
                    case "sourceFileChecksum": self = .sourceFileChecksum
                    case "uploadOperations": self = .uploadOperations
                    case "uploaded": self = .uploaded
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum AppStoreVersionExperimentTreatmentLocalizations: Hashable, Codable, RawRepresentable {
                case appPreviewSets
                case appScreenshotSets
                case appStoreVersionExperimentTreatment
                case locale
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appPreviewSets: return "appPreviewSets"
                    case .appScreenshotSets: return "appScreenshotSets"
                    case .appStoreVersionExperimentTreatment: return "appStoreVersionExperimentTreatment"
                    case .locale: return "locale"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "appPreviewSets": self = .appPreviewSets
                    case "appScreenshotSets": self = .appScreenshotSets
                    case "appStoreVersionExperimentTreatment": self = .appStoreVersionExperimentTreatment
                    case "locale": self = .locale
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum AppStoreVersionLocalizations: Hashable, Codable, RawRepresentable {
                case appPreviewSets
                case appScreenshotSets
                case appStoreVersion
                case description
                case keywords
                case locale
                case marketingUrl
                case promotionalText
                case supportUrl
                case whatsNew
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appPreviewSets: return "appPreviewSets"
                    case .appScreenshotSets: return "appScreenshotSets"
                    case .appStoreVersion: return "appStoreVersion"
                    case .description: return "description"
                    case .keywords: return "keywords"
                    case .locale: return "locale"
                    case .marketingUrl: return "marketingUrl"
                    case .promotionalText: return "promotionalText"
                    case .supportUrl: return "supportUrl"
                    case .whatsNew: return "whatsNew"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "appPreviewSets": self = .appPreviewSets
                    case "appScreenshotSets": self = .appScreenshotSets
                    case "appStoreVersion": self = .appStoreVersion
                    case "description": self = .description
                    case "keywords": self = .keywords
                    case "locale": self = .locale
                    case "marketingUrl": self = .marketingUrl
                    case "promotionalText": self = .promotionalText
                    case "supportUrl": self = .supportUrl
                    case "whatsNew": self = .whatsNew
                    default: self = .unknown(rawValue)
                    }
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

            public enum ScreenshotDisplayType: Hashable, Codable, RawRepresentable {
                case appAppleTv
                case appDesktop
                case appIpad105
                case appIpad97
                case appIpadPro129
                case appIpadPro3Gen11
                case appIpadPro3Gen129
                case appIphone35
                case appIphone40
                case appIphone47
                case appIphone55
                case appIphone58
                case appIphone61
                case appIphone65
                case appIphone67
                case appWatchSeries3
                case appWatchSeries4
                case appWatchSeries7
                case appWatchUltra
                case imessageAppIpad105
                case imessageAppIpad97
                case imessageAppIpadPro129
                case imessageAppIpadPro3Gen11
                case imessageAppIpadPro3Gen129
                case imessageAppIphone40
                case imessageAppIphone47
                case imessageAppIphone55
                case imessageAppIphone58
                case imessageAppIphone61
                case imessageAppIphone65
                case imessageAppIphone67
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appAppleTv: return "APP_APPLE_TV"
                    case .appDesktop: return "APP_DESKTOP"
                    case .appIpad105: return "APP_IPAD_105"
                    case .appIpad97: return "APP_IPAD_97"
                    case .appIpadPro129: return "APP_IPAD_PRO_129"
                    case .appIpadPro3Gen11: return "APP_IPAD_PRO_3GEN_11"
                    case .appIpadPro3Gen129: return "APP_IPAD_PRO_3GEN_129"
                    case .appIphone35: return "APP_IPHONE_35"
                    case .appIphone40: return "APP_IPHONE_40"
                    case .appIphone47: return "APP_IPHONE_47"
                    case .appIphone55: return "APP_IPHONE_55"
                    case .appIphone58: return "APP_IPHONE_58"
                    case .appIphone61: return "APP_IPHONE_61"
                    case .appIphone65: return "APP_IPHONE_65"
                    case .appIphone67: return "APP_IPHONE_67"
                    case .appWatchSeries3: return "APP_WATCH_SERIES_3"
                    case .appWatchSeries4: return "APP_WATCH_SERIES_4"
                    case .appWatchSeries7: return "APP_WATCH_SERIES_7"
                    case .appWatchUltra: return "APP_WATCH_ULTRA"
                    case .imessageAppIpad105: return "IMESSAGE_APP_IPAD_105"
                    case .imessageAppIpad97: return "IMESSAGE_APP_IPAD_97"
                    case .imessageAppIpadPro129: return "IMESSAGE_APP_IPAD_PRO_129"
                    case .imessageAppIpadPro3Gen11: return "IMESSAGE_APP_IPAD_PRO_3GEN_11"
                    case .imessageAppIpadPro3Gen129: return "IMESSAGE_APP_IPAD_PRO_3GEN_129"
                    case .imessageAppIphone40: return "IMESSAGE_APP_IPHONE_40"
                    case .imessageAppIphone47: return "IMESSAGE_APP_IPHONE_47"
                    case .imessageAppIphone55: return "IMESSAGE_APP_IPHONE_55"
                    case .imessageAppIphone58: return "IMESSAGE_APP_IPHONE_58"
                    case .imessageAppIphone61: return "IMESSAGE_APP_IPHONE_61"
                    case .imessageAppIphone65: return "IMESSAGE_APP_IPHONE_65"
                    case .imessageAppIphone67: return "IMESSAGE_APP_IPHONE_67"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "APP_APPLE_TV": self = .appAppleTv
                    case "APP_DESKTOP": self = .appDesktop
                    case "APP_IPAD_105": self = .appIpad105
                    case "APP_IPAD_97": self = .appIpad97
                    case "APP_IPAD_PRO_129": self = .appIpadPro129
                    case "APP_IPAD_PRO_3GEN_11": self = .appIpadPro3Gen11
                    case "APP_IPAD_PRO_3GEN_129": self = .appIpadPro3Gen129
                    case "APP_IPHONE_35": self = .appIphone35
                    case "APP_IPHONE_40": self = .appIphone40
                    case "APP_IPHONE_47": self = .appIphone47
                    case "APP_IPHONE_55": self = .appIphone55
                    case "APP_IPHONE_58": self = .appIphone58
                    case "APP_IPHONE_61": self = .appIphone61
                    case "APP_IPHONE_65": self = .appIphone65
                    case "APP_IPHONE_67": self = .appIphone67
                    case "APP_WATCH_SERIES_3": self = .appWatchSeries3
                    case "APP_WATCH_SERIES_4": self = .appWatchSeries4
                    case "APP_WATCH_SERIES_7": self = .appWatchSeries7
                    case "APP_WATCH_ULTRA": self = .appWatchUltra
                    case "IMESSAGE_APP_IPAD_105": self = .imessageAppIpad105
                    case "IMESSAGE_APP_IPAD_97": self = .imessageAppIpad97
                    case "IMESSAGE_APP_IPAD_PRO_129": self = .imessageAppIpadPro129
                    case "IMESSAGE_APP_IPAD_PRO_3GEN_11": self = .imessageAppIpadPro3Gen11
                    case "IMESSAGE_APP_IPAD_PRO_3GEN_129": self = .imessageAppIpadPro3Gen129
                    case "IMESSAGE_APP_IPHONE_40": self = .imessageAppIphone40
                    case "IMESSAGE_APP_IPHONE_47": self = .imessageAppIphone47
                    case "IMESSAGE_APP_IPHONE_55": self = .imessageAppIphone55
                    case "IMESSAGE_APP_IPHONE_58": self = .imessageAppIphone58
                    case "IMESSAGE_APP_IPHONE_61": self = .imessageAppIphone61
                    case "IMESSAGE_APP_IPHONE_65": self = .imessageAppIphone65
                    case "IMESSAGE_APP_IPHONE_67": self = .imessageAppIphone67
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// filter by id(s) of related 'appCustomProductPageLocalization'
                public static var appCustomProductPageLocalization: Relation<[String]?> {
                    .init(key: "filter[appCustomProductPageLocalization]")
                }

                /// filter by id(s) of related 'appStoreVersionExperimentTreatmentLocalization'
                public static var appStoreVersionExperimentTreatmentLocalization: Relation<[String]?> {
                    .init(key: "filter[appStoreVersionExperimentTreatmentLocalization]")
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

        public enum Include: Hashable, Codable, RawRepresentable {
            case appCustomProductPageLocalization
            case appScreenshots
            case appStoreVersionExperimentTreatmentLocalization
            case appStoreVersionLocalization
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .appCustomProductPageLocalization: return "appCustomProductPageLocalization"
                case .appScreenshots: return "appScreenshots"
                case .appStoreVersionExperimentTreatmentLocalization: return "appStoreVersionExperimentTreatmentLocalization"
                case .appStoreVersionLocalization: return "appStoreVersionLocalization"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "appCustomProductPageLocalization": self = .appCustomProductPageLocalization
                case "appScreenshots": self = .appScreenshots
                case "appStoreVersionExperimentTreatmentLocalization": self = .appStoreVersionExperimentTreatmentLocalization
                case "appStoreVersionLocalization": self = .appStoreVersionLocalization
                default: self = .unknown(rawValue)
                }
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
