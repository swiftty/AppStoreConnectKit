// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.AppEventVideoClips.ById {
    public struct GET: Endpoint {
        public typealias Response = AppEventVideoClipResponse

        public var path: String {
            "/v1/appEventVideoClips/\(id)"
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

        /// - Returns: **200**, Single AppEventVideoClip as `AppEventVideoClipResponse`
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
                return try jsonDecoder.decode(AppEventVideoClipResponse.self, from: data)

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

extension V1.AppEventVideoClips.ById.GET {
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

            public struct AppEventVideoClips: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var appEventAssetType: Self {
                    .init(rawValue: "appEventAssetType")
                }

                public static var appEventLocalization: Self {
                    .init(rawValue: "appEventLocalization")
                }

                public static var assetDeliveryState: Self {
                    .init(rawValue: "assetDeliveryState")
                }

                public static var fileName: Self {
                    .init(rawValue: "fileName")
                }

                public static var fileSize: Self {
                    .init(rawValue: "fileSize")
                }

                public static var previewFrameImage: Self {
                    .init(rawValue: "previewFrameImage")
                }

                public static var previewFrameTimeCode: Self {
                    .init(rawValue: "previewFrameTimeCode")
                }

                public static var previewImage: Self {
                    .init(rawValue: "previewImage")
                }

                public static var uploadOperations: Self {
                    .init(rawValue: "uploadOperations")
                }

                public static var videoDeliveryState: Self {
                    .init(rawValue: "videoDeliveryState")
                }

                public static var videoUrl: Self {
                    .init(rawValue: "videoUrl")
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

        public struct Include: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
            public static var appEventLocalization: Self {
                .init(rawValue: "appEventLocalization")
            }

            public var description: String {
                rawValue
            }

            public var rawValue: String

            public init(rawValue: String) {
                self.rawValue = rawValue
            }
        }
    }
}

// swiftlint:enable all
