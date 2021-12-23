// autogenerated

// swiftlint:disable all
import Foundation

extension V1.Apps.ById.AppStoreVersions {
    public struct GET: Endpoint {
        public typealias Response = AppStoreVersionsResponse

        public var path: String {
            "/v1/apps/\(id)/appStoreVersions"
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
                URLQueryItem(name: "fields[appStoreVersionLocalizations]",
                             value: parameters.fields[.appStoreVersionLocalizations]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[appStoreVersions]",
                             value: parameters.fields[.appStoreVersions]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[appStoreState]",
                             value: parameters.filter[.appStoreState]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[id]",
                             value: parameters.filter[.id]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[platform]",
                             value: parameters.filter[.platform]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[versionString]",
                             value: parameters.filter[.versionString]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[appStoreVersionLocalizations]",
                             value: parameters.limit[.appStoreVersionLocalizations].map { "\($0)" }),
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

        /// - Returns: **200**, List of related resources as `AppStoreVersionsResponse`
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
                return try jsonDecoder.decode(AppStoreVersionsResponse.self, from: data)

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

extension V1.Apps.ById.AppStoreVersions.GET {
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

            public enum AppStoreVersionLocalizations: String, Hashable, Codable {
                case appPreviewSets
                case appScreenshotSets
                case appStoreVersion
                case description
                case keywords
                case locale
                case marketingUrl
                case promotionalText
                case supportUrl
                case whatsNew
            }

            public enum AppStoreVersions: String, Hashable, Codable {
                case ageRatingDeclaration
                case app
                case appClipDefaultExperience
                case appStoreReviewDetail
                case appStoreState
                case appStoreVersionLocalizations
                case appStoreVersionPhasedRelease
                case appStoreVersionSubmission
                case build
                case copyright
                case createdDate
                case downloadable
                case earliestReleaseDate
                case idfaDeclaration
                case platform
                case releaseType
                case routingAppCoverage
                case usesIdfa
                case versionString
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type appStoreVersionLocalizations
                public static var appStoreVersionLocalizations: Relation<[AppStoreVersionLocalizations]?> {
                    .init(key: "fields[appStoreVersionLocalizations]")
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

        public struct Filter: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum AppStoreState: String, Hashable, Codable {
                case developerRejected = "DEVELOPER_REJECTED"
                case developerRemovedFromSale = "DEVELOPER_REMOVED_FROM_SALE"
                case invalidBinary = "INVALID_BINARY"
                case inReview = "IN_REVIEW"
                case metadataRejected = "METADATA_REJECTED"
                case pendingAppleRelease = "PENDING_APPLE_RELEASE"
                case pendingContract = "PENDING_CONTRACT"
                case pendingDeveloperRelease = "PENDING_DEVELOPER_RELEASE"
                case preorderReadyForSale = "PREORDER_READY_FOR_SALE"
                case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
                case processingForAppStore = "PROCESSING_FOR_APP_STORE"
                case readyForSale = "READY_FOR_SALE"
                case rejected = "REJECTED"
                case removedFromSale = "REMOVED_FROM_SALE"
                case replacedWithNewVersion = "REPLACED_WITH_NEW_VERSION"
                case waitingForExportCompliance = "WAITING_FOR_EXPORT_COMPLIANCE"
                case waitingForReview = "WAITING_FOR_REVIEW"
            }

            public enum Platform: String, Hashable, Codable {
                case iOS = "IOS"
                case macOS = "MAC_OS"
                case tvOS = "TV_OS"
            }

            public struct Relation<T>: Hashable {
                /// filter by attribute 'appStoreState'
                public static var appStoreState: Relation<[AppStoreState]?> {
                    .init(key: "filter[appStoreState]")
                }

                /// filter by id(s)
                public static var id: Relation<[String]?> {
                    .init(key: "filter[id]")
                }

                /// filter by attribute 'platform'
                public static var platform: Relation<[Platform]?> {
                    .init(key: "filter[platform]")
                }

                /// filter by attribute 'versionString'
                public static var versionString: Relation<[String]?> {
                    .init(key: "filter[versionString]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: String, Hashable, Codable {
            case appStoreVersionLocalizations
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
                /// maximum number of related appStoreVersionLocalizations returned (when they are included)
                public static var appStoreVersionLocalizations: Relation<Int?> {
                    .init(key: "limit[appStoreVersionLocalizations]")
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