// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.AppClipDefaultExperiences.ById.AppClipDefaultExperienceLocalizations {
    public struct GET: Endpoint {
        public typealias Response = AppClipDefaultExperienceLocalizationsResponse

        public var path: String {
            "/v1/appClipDefaultExperiences/\(id)/appClipDefaultExperienceLocalizations"
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
                URLQueryItem(name: "fields[appClipDefaultExperienceLocalizations]",
                             value: parameters.fields[.appClipDefaultExperienceLocalizations]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[appClipDefaultExperiences]",
                             value: parameters.fields[.appClipDefaultExperiences]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[appClipHeaderImages]",
                             value: parameters.fields[.appClipHeaderImages]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[locale]",
                             value: parameters.filter[.locale]?.map { "\($0)" }.joined(separator: ",")),
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

        /// - Returns: **200**, List of AppClipDefaultExperienceLocalizations as `AppClipDefaultExperienceLocalizationsResponse`
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
                return try jsonDecoder.decode(AppClipDefaultExperienceLocalizationsResponse.self, from: data)

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

extension V1.AppClipDefaultExperiences.ById.AppClipDefaultExperienceLocalizations.GET {
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

            public enum AppClipDefaultExperienceLocalizations: Hashable, Codable, RawRepresentable {
                case appClipDefaultExperience
                case appClipHeaderImage
                case locale
                case subtitle
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appClipDefaultExperience: return "appClipDefaultExperience"
                    case .appClipHeaderImage: return "appClipHeaderImage"
                    case .locale: return "locale"
                    case .subtitle: return "subtitle"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "appClipDefaultExperience": self = .appClipDefaultExperience
                    case "appClipHeaderImage": self = .appClipHeaderImage
                    case "locale": self = .locale
                    case "subtitle": self = .subtitle
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum AppClipDefaultExperiences: Hashable, Codable, RawRepresentable {
                case action
                case appClip
                case appClipAppStoreReviewDetail
                case appClipDefaultExperienceLocalizations
                case appClipDefaultExperienceTemplate
                case releaseWithAppStoreVersion
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .action: return "action"
                    case .appClip: return "appClip"
                    case .appClipAppStoreReviewDetail: return "appClipAppStoreReviewDetail"
                    case .appClipDefaultExperienceLocalizations: return "appClipDefaultExperienceLocalizations"
                    case .appClipDefaultExperienceTemplate: return "appClipDefaultExperienceTemplate"
                    case .releaseWithAppStoreVersion: return "releaseWithAppStoreVersion"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "action": self = .action
                    case "appClip": self = .appClip
                    case "appClipAppStoreReviewDetail": self = .appClipAppStoreReviewDetail
                    case "appClipDefaultExperienceLocalizations": self = .appClipDefaultExperienceLocalizations
                    case "appClipDefaultExperienceTemplate": self = .appClipDefaultExperienceTemplate
                    case "releaseWithAppStoreVersion": self = .releaseWithAppStoreVersion
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum AppClipHeaderImages: Hashable, Codable, RawRepresentable {
                case appClipDefaultExperienceLocalization
                case assetDeliveryState
                case fileName
                case fileSize
                case imageAsset
                case sourceFileChecksum
                case uploadOperations
                case uploaded
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appClipDefaultExperienceLocalization: return "appClipDefaultExperienceLocalization"
                    case .assetDeliveryState: return "assetDeliveryState"
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
                    case "appClipDefaultExperienceLocalization": self = .appClipDefaultExperienceLocalization
                    case "assetDeliveryState": self = .assetDeliveryState
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

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type appClipDefaultExperienceLocalizations
                public static var appClipDefaultExperienceLocalizations: Relation<[AppClipDefaultExperienceLocalizations]?> {
                    .init(key: "fields[appClipDefaultExperienceLocalizations]")
                }

                /// the fields to include for returned resources of type appClipDefaultExperiences
                public static var appClipDefaultExperiences: Relation<[AppClipDefaultExperiences]?> {
                    .init(key: "fields[appClipDefaultExperiences]")
                }

                /// the fields to include for returned resources of type appClipHeaderImages
                public static var appClipHeaderImages: Relation<[AppClipHeaderImages]?> {
                    .init(key: "fields[appClipHeaderImages]")
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

        public enum Include: Hashable, Codable, RawRepresentable {
            case appClipDefaultExperience
            case appClipHeaderImage
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .appClipDefaultExperience: return "appClipDefaultExperience"
                case .appClipHeaderImage: return "appClipHeaderImage"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "appClipDefaultExperience": self = .appClipDefaultExperience
                case "appClipHeaderImage": self = .appClipHeaderImage
                default: self = .unknown(rawValue)
                }
            }
        }
    }
}

// swiftlint:enable all
