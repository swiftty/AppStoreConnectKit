// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.AppStoreVersionLocalizations.ById.AppPreviewSets {
    public struct GET: Endpoint {
        public typealias Response = AppPreviewSetsResponse

        public var path: String {
            "/v1/appStoreVersionLocalizations/\(id)/appPreviewSets"
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
                URLQueryItem(name: "fields[appPreviews]",
                             value: parameters.fields[.appPreviews]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[previewType]",
                             value: parameters.filter[.previewType]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[appPreviews]",
                             value: parameters.limit[.appPreviews].map { "\($0)" }),
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

        /// - Returns: **200**, List of related resources as `AppPreviewSetsResponse`
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
                return try jsonDecoder.decode(AppPreviewSetsResponse.self, from: data)

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

extension V1.AppStoreVersionLocalizations.ById.AppPreviewSets.GET {
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

            public enum AppPreviewSets: Hashable, Codable, RawRepresentable {
                case appPreviews
                case appStoreVersionLocalization
                case previewType
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appPreviews: return "appPreviews"
                    case .appStoreVersionLocalization: return "appStoreVersionLocalization"
                    case .previewType: return "previewType"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "appPreviews": self = .appPreviews
                    case "appStoreVersionLocalization": self = .appStoreVersionLocalization
                    case "previewType": self = .previewType
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum AppPreviews: Hashable, Codable, RawRepresentable {
                case appPreviewSet
                case assetDeliveryState
                case fileName
                case fileSize
                case mimeType
                case previewFrameTimeCode
                case previewImage
                case sourceFileChecksum
                case uploadOperations
                case uploaded
                case videoUrl
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appPreviewSet: return "appPreviewSet"
                    case .assetDeliveryState: return "assetDeliveryState"
                    case .fileName: return "fileName"
                    case .fileSize: return "fileSize"
                    case .mimeType: return "mimeType"
                    case .previewFrameTimeCode: return "previewFrameTimeCode"
                    case .previewImage: return "previewImage"
                    case .sourceFileChecksum: return "sourceFileChecksum"
                    case .uploadOperations: return "uploadOperations"
                    case .uploaded: return "uploaded"
                    case .videoUrl: return "videoUrl"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "appPreviewSet": self = .appPreviewSet
                    case "assetDeliveryState": self = .assetDeliveryState
                    case "fileName": self = .fileName
                    case "fileSize": self = .fileSize
                    case "mimeType": self = .mimeType
                    case "previewFrameTimeCode": self = .previewFrameTimeCode
                    case "previewImage": self = .previewImage
                    case "sourceFileChecksum": self = .sourceFileChecksum
                    case "uploadOperations": self = .uploadOperations
                    case "uploaded": self = .uploaded
                    case "videoUrl": self = .videoUrl
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type appPreviewSets
                public static var appPreviewSets: Relation<[AppPreviewSets]?> {
                    .init(key: "fields[appPreviewSets]")
                }

                /// the fields to include for returned resources of type appPreviews
                public static var appPreviews: Relation<[AppPreviews]?> {
                    .init(key: "fields[appPreviews]")
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

            public enum PreviewType: Hashable, Codable, RawRepresentable {
                case appleTv
                case desktop
                case ipad105
                case ipad97
                case ipadPro129
                case ipadPro3Gen11
                case ipadPro3Gen129
                case iphone35
                case iphone40
                case iphone47
                case iphone55
                case iphone58
                case iphone65
                case watchSeries3
                case watchSeries4
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appleTv: return "APPLE_TV"
                    case .desktop: return "DESKTOP"
                    case .ipad105: return "IPAD_105"
                    case .ipad97: return "IPAD_97"
                    case .ipadPro129: return "IPAD_PRO_129"
                    case .ipadPro3Gen11: return "IPAD_PRO_3GEN_11"
                    case .ipadPro3Gen129: return "IPAD_PRO_3GEN_129"
                    case .iphone35: return "IPHONE_35"
                    case .iphone40: return "IPHONE_40"
                    case .iphone47: return "IPHONE_47"
                    case .iphone55: return "IPHONE_55"
                    case .iphone58: return "IPHONE_58"
                    case .iphone65: return "IPHONE_65"
                    case .watchSeries3: return "WATCH_SERIES_3"
                    case .watchSeries4: return "WATCH_SERIES_4"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "APPLE_TV": self = .appleTv
                    case "DESKTOP": self = .desktop
                    case "IPAD_105": self = .ipad105
                    case "IPAD_97": self = .ipad97
                    case "IPAD_PRO_129": self = .ipadPro129
                    case "IPAD_PRO_3GEN_11": self = .ipadPro3Gen11
                    case "IPAD_PRO_3GEN_129": self = .ipadPro3Gen129
                    case "IPHONE_35": self = .iphone35
                    case "IPHONE_40": self = .iphone40
                    case "IPHONE_47": self = .iphone47
                    case "IPHONE_55": self = .iphone55
                    case "IPHONE_58": self = .iphone58
                    case "IPHONE_65": self = .iphone65
                    case "WATCH_SERIES_3": self = .watchSeries3
                    case "WATCH_SERIES_4": self = .watchSeries4
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// filter by attribute 'previewType'
                public static var previewType: Relation<[PreviewType]?> {
                    .init(key: "filter[previewType]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case appPreviews
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .appPreviews: return "appPreviews"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "appPreviews": self = .appPreviews
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
                /// maximum number of related appPreviews returned (when they are included)
                public static var appPreviews: Relation<Int?> {
                    .init(key: "limit[appPreviews]")
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
