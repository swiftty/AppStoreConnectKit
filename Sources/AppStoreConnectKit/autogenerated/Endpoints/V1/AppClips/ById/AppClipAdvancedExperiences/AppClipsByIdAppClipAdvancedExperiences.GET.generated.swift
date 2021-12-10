// autogenerated

// swiftlint:disable all
import Foundation

extension V1.AppClips.ById.AppClipAdvancedExperiences {
    public struct GET: Endpoint {
        public typealias Response = AppClipAdvancedExperiencesResponse

        public var path: String {
            "/v1/appClips/\(id)/appClipAdvancedExperiences"
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
                URLQueryItem(name: "fields[appClipAdvancedExperienceLocalizations]",
                             value: parameters.fields[.appClipAdvancedExperienceLocalizations]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[appClipAdvancedExperiences]",
                             value: parameters.fields[.appClipAdvancedExperiences]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[action]",
                             value: parameters.filter[.action]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[placeStatus]",
                             value: parameters.filter[.placeStatus]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[status]",
                             value: parameters.filter[.status]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[localizations]",
                             value: parameters.limit[.localizations].map { "\($0)" }),
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

        /// - Returns: **200**, List of related resources as `AppClipAdvancedExperiencesResponse`
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
                return try jsonDecoder.decode(AppClipAdvancedExperiencesResponse.self, from: data)

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

extension V1.AppClips.ById.AppClipAdvancedExperiences.GET {
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

            public enum AppClipAdvancedExperienceLocalizations: String, Hashable, Codable {
                case language
                case subtitle
                case title
            }

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

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type appClipAdvancedExperienceLocalizations
                public static var appClipAdvancedExperienceLocalizations: Relation<[AppClipAdvancedExperienceLocalizations]?> {
                    .init(key: "fields[appClipAdvancedExperienceLocalizations]")
                }

                /// the fields to include for returned resources of type appClipAdvancedExperiences
                public static var appClipAdvancedExperiences: Relation<[AppClipAdvancedExperiences]?> {
                    .init(key: "fields[appClipAdvancedExperiences]")
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

            public enum Action: String, Hashable, Codable {
                case open = "OPEN"
                case play = "PLAY"
                case view = "VIEW"
            }

            public enum PlaceStatus: String, Hashable, Codable {
                case matched = "MATCHED"
                case noMatch = "NO_MATCH"
                case pending = "PENDING"
            }

            public enum Status: String, Hashable, Codable {
                case appTransferInProgress = "APP_TRANSFER_IN_PROGRESS"
                case deactivated = "DEACTIVATED"
                case received = "RECEIVED"
            }

            public struct Relation<T>: Hashable {
                /// filter by attribute 'action'
                public static var action: Relation<[Action]?> {
                    .init(key: "filter[action]")
                }

                /// filter by attribute 'placeStatus'
                public static var placeStatus: Relation<[PlaceStatus]?> {
                    .init(key: "filter[placeStatus]")
                }

                /// filter by attribute 'status'
                public static var status: Relation<[Status]?> {
                    .init(key: "filter[status]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: String, Hashable, Codable {
            case localizations
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
                /// maximum number of related localizations returned (when they are included)
                public static var localizations: Relation<Int?> {
                    .init(key: "limit[localizations]")
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
