// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.AppEventLocalizations.ById.AppEventVideoClips {
    public struct GET: Endpoint {
        public typealias Response = AppEventVideoClipsResponse

        public var path: String {
            "/v1/appEventLocalizations/\(id)/appEventVideoClips"
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
                URLQueryItem(name: "fields[appEventVideoClips]",
                             value: parameters.fields[.appEventVideoClips]?.map { "\($0)" }.joined(separator: ",")),
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

        /// - Returns: **200**, List of related resources as `AppEventVideoClipsResponse`
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
                return try jsonDecoder.decode(AppEventVideoClipsResponse.self, from: data)

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

extension V1.AppEventLocalizations.ById.AppEventVideoClips.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        /// maximum resources per page
        public var limit: Int?

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum AppEventVideoClips: Hashable, Codable, RawRepresentable {
                case appEventAssetType
                case appEventLocalization
                case assetDeliveryState
                case fileName
                case fileSize
                case previewFrameTimeCode
                case previewImage
                case uploadOperations
                case uploaded
                case videoUrl
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appEventAssetType: return "appEventAssetType"
                    case .appEventLocalization: return "appEventLocalization"
                    case .assetDeliveryState: return "assetDeliveryState"
                    case .fileName: return "fileName"
                    case .fileSize: return "fileSize"
                    case .previewFrameTimeCode: return "previewFrameTimeCode"
                    case .previewImage: return "previewImage"
                    case .uploadOperations: return "uploadOperations"
                    case .uploaded: return "uploaded"
                    case .videoUrl: return "videoUrl"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "appEventAssetType": self = .appEventAssetType
                    case "appEventLocalization": self = .appEventLocalization
                    case "assetDeliveryState": self = .assetDeliveryState
                    case "fileName": self = .fileName
                    case "fileSize": self = .fileSize
                    case "previewFrameTimeCode": self = .previewFrameTimeCode
                    case "previewImage": self = .previewImage
                    case "uploadOperations": self = .uploadOperations
                    case "uploaded": self = .uploaded
                    case "videoUrl": self = .videoUrl
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type appEventVideoClips
                public static var appEventVideoClips: Relation<[AppEventVideoClips]?> {
                    .init(key: "fields[appEventVideoClips]")
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