// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.AppClipDefaultExperienceLocalizations.ById.AppClipHeaderImage {
    public struct GET: Endpoint {
        public typealias Response = AppClipHeaderImageResponse

        public var path: String {
            "/v1/appClipDefaultExperienceLocalizations/\(id)/appClipHeaderImage"
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
                URLQueryItem(name: "fields[appClipHeaderImages]",
                             value: parameters.fields[.appClipHeaderImages]?.map { "\($0)" }.joined(separator: ","))
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Related resource as `AppClipHeaderImageResponse`
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
                return try jsonDecoder.decode(AppClipHeaderImageResponse.self, from: data)

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

extension V1.AppClipDefaultExperienceLocalizations.ById.AppClipHeaderImage.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

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
    }
}

// swiftlint:enable all
