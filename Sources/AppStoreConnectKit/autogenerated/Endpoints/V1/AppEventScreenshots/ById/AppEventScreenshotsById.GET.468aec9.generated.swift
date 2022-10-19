// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.AppEventScreenshots.ById {
    public struct GET: Endpoint {
        public typealias Response = AppEventScreenshotResponse

        public var path: String {
            "/v1/appEventScreenshots/\(id)"
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
                URLQueryItem(name: "fields[appEventScreenshots]",
                             value: parameters.fields[.appEventScreenshots]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ","))
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Single AppEventScreenshot as `AppEventScreenshotResponse`
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
                return try jsonDecoder.decode(AppEventScreenshotResponse.self, from: data)

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

extension V1.AppEventScreenshots.ById.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum AppEventScreenshots: Hashable, Codable, RawRepresentable {
                case appEventAssetType
                case appEventLocalization
                case assetDeliveryState
                case assetToken
                case fileName
                case fileSize
                case imageAsset
                case uploadOperations
                case uploaded
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appEventAssetType: return "appEventAssetType"
                    case .appEventLocalization: return "appEventLocalization"
                    case .assetDeliveryState: return "assetDeliveryState"
                    case .assetToken: return "assetToken"
                    case .fileName: return "fileName"
                    case .fileSize: return "fileSize"
                    case .imageAsset: return "imageAsset"
                    case .uploadOperations: return "uploadOperations"
                    case .uploaded: return "uploaded"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "appEventAssetType": self = .appEventAssetType
                    case "appEventLocalization": self = .appEventLocalization
                    case "assetDeliveryState": self = .assetDeliveryState
                    case "assetToken": self = .assetToken
                    case "fileName": self = .fileName
                    case "fileSize": self = .fileSize
                    case "imageAsset": self = .imageAsset
                    case "uploadOperations": self = .uploadOperations
                    case "uploaded": self = .uploaded
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type appEventScreenshots
                public static var appEventScreenshots: Relation<[AppEventScreenshots]?> {
                    .init(key: "fields[appEventScreenshots]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case appEventLocalization
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .appEventLocalization: return "appEventLocalization"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "appEventLocalization": self = .appEventLocalization
                default: self = .unknown(rawValue)
                }
            }
        }
    }
}

// swiftlint:enable all