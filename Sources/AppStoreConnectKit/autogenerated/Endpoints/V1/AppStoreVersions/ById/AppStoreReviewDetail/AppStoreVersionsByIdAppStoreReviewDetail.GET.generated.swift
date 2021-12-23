// autogenerated

// swiftlint:disable all
import Foundation

extension V1.AppStoreVersions.ById.AppStoreReviewDetail {
    public struct GET: Endpoint {
        public typealias Response = AppStoreReviewDetailResponse

        public var path: String {
            "/v1/appStoreVersions/\(id)/appStoreReviewDetail"
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
                URLQueryItem(name: "fields[appStoreReviewAttachments]",
                             value: parameters.fields[.appStoreReviewAttachments]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[appStoreReviewDetails]",
                             value: parameters.fields[.appStoreReviewDetails]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[appStoreReviewAttachments]",
                             value: parameters.limit[.appStoreReviewAttachments].map { "\($0)" })
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Related resource as `AppStoreReviewDetailResponse`
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
                return try jsonDecoder.decode(AppStoreReviewDetailResponse.self, from: data)

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

extension V1.AppStoreVersions.ById.AppStoreReviewDetail.GET {
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

            public enum AppStoreReviewAttachments: String, Hashable, Codable {
                case appStoreReviewDetail
                case assetDeliveryState
                case fileName
                case fileSize
                case sourceFileChecksum
                case uploadOperations
                case uploaded
            }

            public enum AppStoreReviewDetails: String, Hashable, Codable {
                case appStoreReviewAttachments
                case appStoreVersion
                case contactEmail
                case contactFirstName
                case contactLastName
                case contactPhone
                case demoAccountName
                case demoAccountPassword
                case demoAccountRequired
                case notes
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type appStoreReviewAttachments
                public static var appStoreReviewAttachments: Relation<[AppStoreReviewAttachments]?> {
                    .init(key: "fields[appStoreReviewAttachments]")
                }

                /// the fields to include for returned resources of type appStoreReviewDetails
                public static var appStoreReviewDetails: Relation<[AppStoreReviewDetails]?> {
                    .init(key: "fields[appStoreReviewDetails]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: String, Hashable, Codable {
            case appStoreReviewAttachments
        }

        public struct Limit: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public struct Relation<T>: Hashable {
                /// maximum number of related appStoreReviewAttachments returned (when they are included)
                public static var appStoreReviewAttachments: Relation<Int?> {
                    .init(key: "limit[appStoreReviewAttachments]")
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