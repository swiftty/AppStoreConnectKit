// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.AppStoreReviewDetails.ById {
    public struct GET: Endpoint {
        public typealias Response = AppStoreReviewDetailResponse

        public var path: String {
            "/v1/appStoreReviewDetails/\(id)"
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

        /// - Returns: **200**, Single AppStoreReviewDetail as `AppStoreReviewDetailResponse`
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

extension V1.AppStoreReviewDetails.ById.GET {
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

            public enum AppStoreReviewAttachments: Hashable, Codable, RawRepresentable {
                case appStoreReviewDetail
                case assetDeliveryState
                case fileName
                case fileSize
                case sourceFileChecksum
                case uploadOperations
                case uploaded
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appStoreReviewDetail: return "appStoreReviewDetail"
                    case .assetDeliveryState: return "assetDeliveryState"
                    case .fileName: return "fileName"
                    case .fileSize: return "fileSize"
                    case .sourceFileChecksum: return "sourceFileChecksum"
                    case .uploadOperations: return "uploadOperations"
                    case .uploaded: return "uploaded"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "appStoreReviewDetail": self = .appStoreReviewDetail
                    case "assetDeliveryState": self = .assetDeliveryState
                    case "fileName": self = .fileName
                    case "fileSize": self = .fileSize
                    case "sourceFileChecksum": self = .sourceFileChecksum
                    case "uploadOperations": self = .uploadOperations
                    case "uploaded": self = .uploaded
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum AppStoreReviewDetails: Hashable, Codable, RawRepresentable {
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
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appStoreReviewAttachments: return "appStoreReviewAttachments"
                    case .appStoreVersion: return "appStoreVersion"
                    case .contactEmail: return "contactEmail"
                    case .contactFirstName: return "contactFirstName"
                    case .contactLastName: return "contactLastName"
                    case .contactPhone: return "contactPhone"
                    case .demoAccountName: return "demoAccountName"
                    case .demoAccountPassword: return "demoAccountPassword"
                    case .demoAccountRequired: return "demoAccountRequired"
                    case .notes: return "notes"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "appStoreReviewAttachments": self = .appStoreReviewAttachments
                    case "appStoreVersion": self = .appStoreVersion
                    case "contactEmail": self = .contactEmail
                    case "contactFirstName": self = .contactFirstName
                    case "contactLastName": self = .contactLastName
                    case "contactPhone": self = .contactPhone
                    case "demoAccountName": self = .demoAccountName
                    case "demoAccountPassword": self = .demoAccountPassword
                    case "demoAccountRequired": self = .demoAccountRequired
                    case "notes": self = .notes
                    default: self = .unknown(rawValue)
                    }
                }
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

        public enum Include: Hashable, Codable, RawRepresentable {
            case appStoreReviewAttachments
            case appStoreVersion
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .appStoreReviewAttachments: return "appStoreReviewAttachments"
                case .appStoreVersion: return "appStoreVersion"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "appStoreReviewAttachments": self = .appStoreReviewAttachments
                case "appStoreVersion": self = .appStoreVersion
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
