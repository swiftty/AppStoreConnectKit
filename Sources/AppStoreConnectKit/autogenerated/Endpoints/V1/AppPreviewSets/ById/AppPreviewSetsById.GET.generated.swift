// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.AppPreviewSets.ById {
    public struct GET: Endpoint {
        public typealias Response = AppPreviewSetResponse

        public var path: String {
            "/v1/appPreviewSets/\(id)"
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
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[appPreviews]",
                             value: parameters.limit[.appPreviews].map { "\($0)" })
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Single AppPreviewSet as `AppPreviewSetResponse`
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
                return try jsonDecoder.decode(AppPreviewSetResponse.self, from: data)

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

extension V1.AppPreviewSets.ById.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        public var limit: Limit = Limit()

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

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

        public enum Include: Hashable, Codable, RawRepresentable {
            case appCustomProductPageLocalization
            case appPreviews
            case appStoreVersionExperimentTreatmentLocalization
            case appStoreVersionLocalization
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .appCustomProductPageLocalization: return "appCustomProductPageLocalization"
                case .appPreviews: return "appPreviews"
                case .appStoreVersionExperimentTreatmentLocalization: return "appStoreVersionExperimentTreatmentLocalization"
                case .appStoreVersionLocalization: return "appStoreVersionLocalization"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "appCustomProductPageLocalization": self = .appCustomProductPageLocalization
                case "appPreviews": self = .appPreviews
                case "appStoreVersionExperimentTreatmentLocalization": self = .appStoreVersionExperimentTreatmentLocalization
                case "appStoreVersionLocalization": self = .appStoreVersionLocalization
                default: self = .unknown(rawValue)
                }
            }
        }

        public struct Limit: Hashable {
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
