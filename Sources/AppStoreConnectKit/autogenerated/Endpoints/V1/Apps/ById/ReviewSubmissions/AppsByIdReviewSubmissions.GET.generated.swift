// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.Apps.ById.ReviewSubmissions {
    public struct GET: Endpoint {
        public typealias Response = ReviewSubmissionsResponse

        public var path: String {
            "/v1/apps/\(id)/reviewSubmissions"
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
                URLQueryItem(name: "fields[reviewSubmissionItems]",
                             value: parameters.fields[.reviewSubmissionItems]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[reviewSubmissions]",
                             value: parameters.fields[.reviewSubmissions]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[platform]",
                             value: parameters.filter[.platform]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[state]",
                             value: parameters.filter[.state]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[items]",
                             value: parameters.limit[.items].map { "\($0)" }),
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

        /// - Returns: **200**, List of related resources as `ReviewSubmissionsResponse`
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
                return try jsonDecoder.decode(ReviewSubmissionsResponse.self, from: data)

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

extension V1.Apps.ById.ReviewSubmissions.GET {
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

            public enum ReviewSubmissionItems: Hashable, Codable, RawRepresentable {
                case appCustomProductPageVersion
                case appEvent
                case appStoreVersion
                case appStoreVersionExperiment
                case removed
                case resolved
                case reviewSubmission
                case state
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appCustomProductPageVersion: return "appCustomProductPageVersion"
                    case .appEvent: return "appEvent"
                    case .appStoreVersion: return "appStoreVersion"
                    case .appStoreVersionExperiment: return "appStoreVersionExperiment"
                    case .removed: return "removed"
                    case .resolved: return "resolved"
                    case .reviewSubmission: return "reviewSubmission"
                    case .state: return "state"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "appCustomProductPageVersion": self = .appCustomProductPageVersion
                    case "appEvent": self = .appEvent
                    case "appStoreVersion": self = .appStoreVersion
                    case "appStoreVersionExperiment": self = .appStoreVersionExperiment
                    case "removed": self = .removed
                    case "resolved": self = .resolved
                    case "reviewSubmission": self = .reviewSubmission
                    case "state": self = .state
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum ReviewSubmissions: Hashable, Codable, RawRepresentable {
                case app
                case appStoreVersionForReview
                case canceled
                case items
                case platform
                case state
                case submitted
                case submittedDate
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .app: return "app"
                    case .appStoreVersionForReview: return "appStoreVersionForReview"
                    case .canceled: return "canceled"
                    case .items: return "items"
                    case .platform: return "platform"
                    case .state: return "state"
                    case .submitted: return "submitted"
                    case .submittedDate: return "submittedDate"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "app": self = .app
                    case "appStoreVersionForReview": self = .appStoreVersionForReview
                    case "canceled": self = .canceled
                    case "items": self = .items
                    case "platform": self = .platform
                    case "state": self = .state
                    case "submitted": self = .submitted
                    case "submittedDate": self = .submittedDate
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type reviewSubmissionItems
                public static var reviewSubmissionItems: Relation<[ReviewSubmissionItems]?> {
                    .init(key: "fields[reviewSubmissionItems]")
                }

                /// the fields to include for returned resources of type reviewSubmissions
                public static var reviewSubmissions: Relation<[ReviewSubmissions]?> {
                    .init(key: "fields[reviewSubmissions]")
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

            public enum Platform: Hashable, Codable, RawRepresentable {
                case iOS
                case macOS
                case tvOS
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .iOS: return "IOS"
                    case .macOS: return "MAC_OS"
                    case .tvOS: return "TV_OS"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "IOS": self = .iOS
                    case "MAC_OS": self = .macOS
                    case "TV_OS": self = .tvOS
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum State: Hashable, Codable, RawRepresentable {
                case canceling
                case complete
                case completing
                case inReview
                case readyForReview
                case unresolvedIssues
                case waitingForReview
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .canceling: return "CANCELING"
                    case .complete: return "COMPLETE"
                    case .completing: return "COMPLETING"
                    case .inReview: return "IN_REVIEW"
                    case .readyForReview: return "READY_FOR_REVIEW"
                    case .unresolvedIssues: return "UNRESOLVED_ISSUES"
                    case .waitingForReview: return "WAITING_FOR_REVIEW"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "CANCELING": self = .canceling
                    case "COMPLETE": self = .complete
                    case "COMPLETING": self = .completing
                    case "IN_REVIEW": self = .inReview
                    case "READY_FOR_REVIEW": self = .readyForReview
                    case "UNRESOLVED_ISSUES": self = .unresolvedIssues
                    case "WAITING_FOR_REVIEW": self = .waitingForReview
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// filter by attribute 'platform'
                public static var platform: Relation<[Platform]?> {
                    .init(key: "filter[platform]")
                }

                /// filter by attribute 'state'
                public static var state: Relation<[State]?> {
                    .init(key: "filter[state]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case items
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .items: return "items"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "items": self = .items
                default: self = .unknown(rawValue)
                }
            }
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
                /// maximum number of related items returned (when they are included)
                public static var items: Relation<Int?> {
                    .init(key: "limit[items]")
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
