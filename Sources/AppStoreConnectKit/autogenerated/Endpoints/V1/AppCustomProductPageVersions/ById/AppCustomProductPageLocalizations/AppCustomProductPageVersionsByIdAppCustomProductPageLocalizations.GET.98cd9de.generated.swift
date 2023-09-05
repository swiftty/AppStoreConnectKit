// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.AppCustomProductPageVersions.ById.AppCustomProductPageLocalizations {
    public struct GET: Endpoint {
        public typealias Response = AppCustomProductPageLocalizationsResponse

        public var path: String {
            "/v1/appCustomProductPageVersions/\(id)/appCustomProductPageLocalizations"
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
                URLQueryItem(name: "fields[appCustomProductPageVersions]",
                             value: parameters.fields[.appCustomProductPageVersions]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[appPreviewSets]",
                             value: parameters.fields[.appPreviewSets]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[appScreenshotSets]",
                             value: parameters.fields[.appScreenshotSets]?.map { "\($0)" }.joined(separator: ",")),
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

        /// - Returns: **200**, List of AppCustomProductPageLocalizations as `AppCustomProductPageLocalizationsResponse`
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
                return try jsonDecoder.decode(AppCustomProductPageLocalizationsResponse.self, from: data)

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

extension V1.AppCustomProductPageVersions.ById.AppCustomProductPageLocalizations.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        public var filter: Filter = Filter()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        /// maximum resources per page
        public var limit: Limit = Limit()

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<Self, T>) -> T {
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

            public enum AppCustomProductPageVersions: Hashable, Codable, RawRepresentable {
                case appCustomProductPage
                case appCustomProductPageLocalizations
                case state
                case version
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appCustomProductPage: return "appCustomProductPage"
                    case .appCustomProductPageLocalizations: return "appCustomProductPageLocalizations"
                    case .state: return "state"
                    case .version: return "version"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "appCustomProductPage": self = .appCustomProductPage
                    case "appCustomProductPageLocalizations": self = .appCustomProductPageLocalizations
                    case "state": self = .state
                    case "version": self = .version
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum AppPreviewSets: Hashable, Codable, RawRepresentable {
                case appCustomProductPageLocalization
                case appPreviews
                case appStoreVersionExperimentTreatmentLocalization
                case appStoreVersionLocalization
                case previewType
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appCustomProductPageLocalization: return "appCustomProductPageLocalization"
                    case .appPreviews: return "appPreviews"
                    case .appStoreVersionExperimentTreatmentLocalization: return "appStoreVersionExperimentTreatmentLocalization"
                    case .appStoreVersionLocalization: return "appStoreVersionLocalization"
                    case .previewType: return "previewType"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "appCustomProductPageLocalization": self = .appCustomProductPageLocalization
                    case "appPreviews": self = .appPreviews
                    case "appStoreVersionExperimentTreatmentLocalization": self = .appStoreVersionExperimentTreatmentLocalization
                    case "appStoreVersionLocalization": self = .appStoreVersionLocalization
                    case "previewType": self = .previewType
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
        }

        public struct Filter: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<Self, T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case appCustomProductPageVersion
            case appPreviewSets
            case appScreenshotSets
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .appCustomProductPageVersion: return "appCustomProductPageVersion"
                case .appPreviewSets: return "appPreviewSets"
                case .appScreenshotSets: return "appScreenshotSets"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "appCustomProductPageVersion": self = .appCustomProductPageVersion
                case "appPreviewSets": self = .appPreviewSets
                case "appScreenshotSets": self = .appScreenshotSets
                default: self = .unknown(rawValue)
                }
            }
        }

        public struct Limit: Hashable {
            public subscript () -> Int? {
                get { self[Relation<Self, Int?>(key: "limit")] }
                set { self[Relation<Self, Int?>(key: "limit")] = newValue }
            }

            public subscript <T: Hashable>(_ relation: Relation<Self, T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]
        }
    }
}

extension Relation<V1.AppCustomProductPageVersions.ById.AppCustomProductPageLocalizations.GET.Parameters.Fields, [V1.AppCustomProductPageVersions.ById.AppCustomProductPageLocalizations.GET.Parameters.Fields.AppCustomProductPageLocalizations]?> {
    /// the fields to include for returned resources of type appCustomProductPageLocalizations
    public static var appCustomProductPageLocalizations: Relation {
        .init(key: "fields[appCustomProductPageLocalizations]")
    }
}

extension Relation<V1.AppCustomProductPageVersions.ById.AppCustomProductPageLocalizations.GET.Parameters.Fields, [V1.AppCustomProductPageVersions.ById.AppCustomProductPageLocalizations.GET.Parameters.Fields.AppCustomProductPageVersions]?> {
    /// the fields to include for returned resources of type appCustomProductPageVersions
    public static var appCustomProductPageVersions: Relation {
        .init(key: "fields[appCustomProductPageVersions]")
    }
}

extension Relation<V1.AppCustomProductPageVersions.ById.AppCustomProductPageLocalizations.GET.Parameters.Fields, [V1.AppCustomProductPageVersions.ById.AppCustomProductPageLocalizations.GET.Parameters.Fields.AppPreviewSets]?> {
    /// the fields to include for returned resources of type appPreviewSets
    public static var appPreviewSets: Relation {
        .init(key: "fields[appPreviewSets]")
    }
}

extension Relation<V1.AppCustomProductPageVersions.ById.AppCustomProductPageLocalizations.GET.Parameters.Fields, [V1.AppCustomProductPageVersions.ById.AppCustomProductPageLocalizations.GET.Parameters.Fields.AppScreenshotSets]?> {
    /// the fields to include for returned resources of type appScreenshotSets
    public static var appScreenshotSets: Relation {
        .init(key: "fields[appScreenshotSets]")
    }
}

extension Relation<V1.AppCustomProductPageVersions.ById.AppCustomProductPageLocalizations.GET.Parameters.Filter, [String]?> {
    /// filter by attribute 'locale'
    public static var locale: Relation {
        .init(key: "filter[locale]")
    }
}

extension Relation<V1.AppCustomProductPageVersions.ById.AppCustomProductPageLocalizations.GET.Parameters.Limit, Int?> {
    /// maximum number of related appPreviewSets returned (when they are included)
    public static var appPreviewSets: Relation {
        .init(key: "limit[appPreviewSets]")
    }
}

extension Relation<V1.AppCustomProductPageVersions.ById.AppCustomProductPageLocalizations.GET.Parameters.Limit, Int?> {
    /// maximum number of related appScreenshotSets returned (when they are included)
    public static var appScreenshotSets: Relation {
        .init(key: "limit[appScreenshotSets]")
    }
}

// swiftlint:enable all
