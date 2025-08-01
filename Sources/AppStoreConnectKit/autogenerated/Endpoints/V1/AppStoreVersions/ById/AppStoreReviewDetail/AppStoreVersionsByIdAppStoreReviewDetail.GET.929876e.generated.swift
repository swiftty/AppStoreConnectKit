// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

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
                URLQueryItem(name: "fields[appStoreVersions]",
                             value: parameters.fields[.appStoreVersions]?.map { "\($0)" }.joined(separator: ",")),
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
                return try jsonDecoder.decode(AppStoreReviewDetailResponse.self, from: data)

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

            public struct AppStoreReviewAttachments: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var appStoreReviewDetail: Self {
                    .init(rawValue: "appStoreReviewDetail")
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

                public static var sourceFileChecksum: Self {
                    .init(rawValue: "sourceFileChecksum")
                }

                public static var uploadOperations: Self {
                    .init(rawValue: "uploadOperations")
                }

                public var description: String {
                    rawValue
                }

                public var rawValue: String

                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
            }

            public struct AppStoreReviewDetails: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var appStoreReviewAttachments: Self {
                    .init(rawValue: "appStoreReviewAttachments")
                }

                public static var appStoreVersion: Self {
                    .init(rawValue: "appStoreVersion")
                }

                public static var contactEmail: Self {
                    .init(rawValue: "contactEmail")
                }

                public static var contactFirstName: Self {
                    .init(rawValue: "contactFirstName")
                }

                public static var contactLastName: Self {
                    .init(rawValue: "contactLastName")
                }

                public static var contactPhone: Self {
                    .init(rawValue: "contactPhone")
                }

                public static var demoAccountName: Self {
                    .init(rawValue: "demoAccountName")
                }

                public static var demoAccountPassword: Self {
                    .init(rawValue: "demoAccountPassword")
                }

                public static var demoAccountRequired: Self {
                    .init(rawValue: "demoAccountRequired")
                }

                public static var notes: Self {
                    .init(rawValue: "notes")
                }

                public var description: String {
                    rawValue
                }

                public var rawValue: String

                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
            }

            public struct AppStoreVersions: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var ageRatingDeclaration: Self {
                    .init(rawValue: "ageRatingDeclaration")
                }

                public static var alternativeDistributionPackage: Self {
                    .init(rawValue: "alternativeDistributionPackage")
                }

                public static var app: Self {
                    .init(rawValue: "app")
                }

                public static var appClipDefaultExperience: Self {
                    .init(rawValue: "appClipDefaultExperience")
                }

                public static var appStoreReviewDetail: Self {
                    .init(rawValue: "appStoreReviewDetail")
                }

                public static var appStoreState: Self {
                    .init(rawValue: "appStoreState")
                }

                public static var appStoreVersionExperiments: Self {
                    .init(rawValue: "appStoreVersionExperiments")
                }

                public static var appStoreVersionExperimentsV2: Self {
                    .init(rawValue: "appStoreVersionExperimentsV2")
                }

                public static var appStoreVersionLocalizations: Self {
                    .init(rawValue: "appStoreVersionLocalizations")
                }

                public static var appStoreVersionPhasedRelease: Self {
                    .init(rawValue: "appStoreVersionPhasedRelease")
                }

                public static var appStoreVersionSubmission: Self {
                    .init(rawValue: "appStoreVersionSubmission")
                }

                public static var appVersionState: Self {
                    .init(rawValue: "appVersionState")
                }

                public static var build: Self {
                    .init(rawValue: "build")
                }

                public static var copyright: Self {
                    .init(rawValue: "copyright")
                }

                public static var createdDate: Self {
                    .init(rawValue: "createdDate")
                }

                public static var customerReviews: Self {
                    .init(rawValue: "customerReviews")
                }

                public static var downloadable: Self {
                    .init(rawValue: "downloadable")
                }

                public static var earliestReleaseDate: Self {
                    .init(rawValue: "earliestReleaseDate")
                }

                public static var gameCenterAppVersion: Self {
                    .init(rawValue: "gameCenterAppVersion")
                }

                public static var platform: Self {
                    .init(rawValue: "platform")
                }

                public static var releaseType: Self {
                    .init(rawValue: "releaseType")
                }

                public static var reviewType: Self {
                    .init(rawValue: "reviewType")
                }

                public static var routingAppCoverage: Self {
                    .init(rawValue: "routingAppCoverage")
                }

                public static var usesIdfa: Self {
                    .init(rawValue: "usesIdfa")
                }

                public static var versionString: Self {
                    .init(rawValue: "versionString")
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
                /// the fields to include for returned resources of type appStoreReviewAttachments
                public static var appStoreReviewAttachments: Relation<[AppStoreReviewAttachments]?> {
                    .init(key: "fields[appStoreReviewAttachments]")
                }

                /// the fields to include for returned resources of type appStoreReviewDetails
                public static var appStoreReviewDetails: Relation<[AppStoreReviewDetails]?> {
                    .init(key: "fields[appStoreReviewDetails]")
                }

                /// the fields to include for returned resources of type appStoreVersions
                public static var appStoreVersions: Relation<[AppStoreVersions]?> {
                    .init(key: "fields[appStoreVersions]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public struct Include: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
            public static var appStoreReviewAttachments: Self {
                .init(rawValue: "appStoreReviewAttachments")
            }

            public static var appStoreVersion: Self {
                .init(rawValue: "appStoreVersion")
            }

            public var description: String {
                rawValue
            }

            public var rawValue: String

            public init(rawValue: String) {
                self.rawValue = rawValue
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
