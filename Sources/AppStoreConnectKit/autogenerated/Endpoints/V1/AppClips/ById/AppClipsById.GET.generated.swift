// autogenerated

// swiftlint:disable all
import Foundation

extension V1.AppClips.ById {
    public struct GET: Endpoint {
        public typealias Response = AppClipResponse

        public var path: String {
            "/v1/appClips/\(id)"
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
                URLQueryItem(name: "fields[appClipAdvancedExperiences]",
                             value: parameters.fields[.appClipAdvancedExperiences]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[appClipDefaultExperiences]",
                             value: parameters.fields[.appClipDefaultExperiences]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[appClips]",
                             value: parameters.fields[.appClips]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[appClipDefaultExperiences]",
                             value: parameters.limit[.appClipDefaultExperiences].map { "\($0)" })
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Single AppClip as `AppClipResponse`
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
                return try jsonDecoder.decode(AppClipResponse.self, from: data)

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

extension V1.AppClips.ById.GET {
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

            public enum AppClipAdvancedExperiences: String, Hashable, Codable {
                case action
                case appClip
                case businessCategory
                case defaultLanguage
                case headerImage
                case isPoweredBy
                case link
                case localizations
                case place
                case placeStatus
                case removed
                case status
                case version
            }

            public enum AppClipDefaultExperiences: String, Hashable, Codable {
                case action
                case appClip
                case appClipAppStoreReviewDetail
                case appClipDefaultExperienceLocalizations
                case appClipDefaultExperienceTemplate
                case releaseWithAppStoreVersion
            }

            public enum AppClips: String, Hashable, Codable {
                case app
                case appClipAdvancedExperiences
                case appClipDefaultExperiences
                case bundleId
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type appClipAdvancedExperiences
                public static var appClipAdvancedExperiences: Relation<[AppClipAdvancedExperiences]?> {
                    .init(key: "fields[appClipAdvancedExperiences]")
                }

                /// the fields to include for returned resources of type appClipDefaultExperiences
                public static var appClipDefaultExperiences: Relation<[AppClipDefaultExperiences]?> {
                    .init(key: "fields[appClipDefaultExperiences]")
                }

                /// the fields to include for returned resources of type appClips
                public static var appClips: Relation<[AppClips]?> {
                    .init(key: "fields[appClips]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: String, Hashable, Codable {
            case app
            case appClipDefaultExperiences
        }

        public struct Limit: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public struct Relation<T>: Hashable {
                /// maximum number of related appClipDefaultExperiences returned (when they are included)
                public static var appClipDefaultExperiences: Relation<Int?> {
                    .init(key: "limit[appClipDefaultExperiences]")
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
