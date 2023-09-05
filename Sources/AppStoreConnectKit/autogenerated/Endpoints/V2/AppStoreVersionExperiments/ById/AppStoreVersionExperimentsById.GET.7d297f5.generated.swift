// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V2.AppStoreVersionExperiments.ById {
    public struct GET: Endpoint {
        public typealias Response = AppStoreVersionExperimentV2Response

        public var path: String {
            "/v2/appStoreVersionExperiments/\(id)"
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
                URLQueryItem(name: "fields[appStoreVersionExperimentTreatments]",
                             value: parameters.fields[.appStoreVersionExperimentTreatments]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[appStoreVersionExperiments]",
                             value: parameters.fields[.appStoreVersionExperiments]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[appStoreVersionExperimentTreatments]",
                             value: parameters.limit[.appStoreVersionExperimentTreatments].map { "\($0)" }),
                URLQueryItem(name: "limit[controlVersions]",
                             value: parameters.limit[.controlVersions].map { "\($0)" })
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Single AppStoreVersionExperiment as `AppStoreVersionExperimentV2Response`
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
                return try jsonDecoder.decode(AppStoreVersionExperimentV2Response.self, from: data)

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

extension V2.AppStoreVersionExperiments.ById.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        public var limit: Limit = Limit()

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<Self, T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum AppStoreVersionExperimentTreatments: Hashable, Codable, RawRepresentable {
                case appIcon
                case appIconName
                case appStoreVersionExperiment
                case appStoreVersionExperimentTreatmentLocalizations
                case appStoreVersionExperimentV2
                case name
                case promotedDate
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appIcon: return "appIcon"
                    case .appIconName: return "appIconName"
                    case .appStoreVersionExperiment: return "appStoreVersionExperiment"
                    case .appStoreVersionExperimentTreatmentLocalizations: return "appStoreVersionExperimentTreatmentLocalizations"
                    case .appStoreVersionExperimentV2: return "appStoreVersionExperimentV2"
                    case .name: return "name"
                    case .promotedDate: return "promotedDate"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "appIcon": self = .appIcon
                    case "appIconName": self = .appIconName
                    case "appStoreVersionExperiment": self = .appStoreVersionExperiment
                    case "appStoreVersionExperimentTreatmentLocalizations": self = .appStoreVersionExperimentTreatmentLocalizations
                    case "appStoreVersionExperimentV2": self = .appStoreVersionExperimentV2
                    case "name": self = .name
                    case "promotedDate": self = .promotedDate
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum AppStoreVersionExperiments: Hashable, Codable, RawRepresentable {
                case app
                case appStoreVersionExperimentTreatments
                case controlVersions
                case endDate
                case latestControlVersion
                case name
                case platform
                case reviewRequired
                case startDate
                case started
                case state
                case trafficProportion
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .app: return "app"
                    case .appStoreVersionExperimentTreatments: return "appStoreVersionExperimentTreatments"
                    case .controlVersions: return "controlVersions"
                    case .endDate: return "endDate"
                    case .latestControlVersion: return "latestControlVersion"
                    case .name: return "name"
                    case .platform: return "platform"
                    case .reviewRequired: return "reviewRequired"
                    case .startDate: return "startDate"
                    case .started: return "started"
                    case .state: return "state"
                    case .trafficProportion: return "trafficProportion"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "app": self = .app
                    case "appStoreVersionExperimentTreatments": self = .appStoreVersionExperimentTreatments
                    case "controlVersions": self = .controlVersions
                    case "endDate": self = .endDate
                    case "latestControlVersion": self = .latestControlVersion
                    case "name": self = .name
                    case "platform": self = .platform
                    case "reviewRequired": self = .reviewRequired
                    case "startDate": self = .startDate
                    case "started": self = .started
                    case "state": self = .state
                    case "trafficProportion": self = .trafficProportion
                    default: self = .unknown(rawValue)
                    }
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case app
            case appStoreVersionExperimentTreatments
            case controlVersions
            case latestControlVersion
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .app: return "app"
                case .appStoreVersionExperimentTreatments: return "appStoreVersionExperimentTreatments"
                case .controlVersions: return "controlVersions"
                case .latestControlVersion: return "latestControlVersion"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "app": self = .app
                case "appStoreVersionExperimentTreatments": self = .appStoreVersionExperimentTreatments
                case "controlVersions": self = .controlVersions
                case "latestControlVersion": self = .latestControlVersion
                default: self = .unknown(rawValue)
                }
            }
        }

        public struct Limit: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<Self, T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]
        }
    }
}

extension Relation<V2.AppStoreVersionExperiments.ById.GET.Parameters.Fields, [V2.AppStoreVersionExperiments.ById.GET.Parameters.Fields.AppStoreVersionExperimentTreatments]?> {
    /// the fields to include for returned resources of type appStoreVersionExperimentTreatments
    public static var appStoreVersionExperimentTreatments: Relation {
        .init(key: "fields[appStoreVersionExperimentTreatments]")
    }
}

extension Relation<V2.AppStoreVersionExperiments.ById.GET.Parameters.Fields, [V2.AppStoreVersionExperiments.ById.GET.Parameters.Fields.AppStoreVersionExperiments]?> {
    /// the fields to include for returned resources of type appStoreVersionExperiments
    public static var appStoreVersionExperiments: Relation {
        .init(key: "fields[appStoreVersionExperiments]")
    }
}

extension Relation<V2.AppStoreVersionExperiments.ById.GET.Parameters.Limit, Int?> {
    /// maximum number of related appStoreVersionExperimentTreatments returned (when they are included)
    public static var appStoreVersionExperimentTreatments: Relation {
        .init(key: "limit[appStoreVersionExperimentTreatments]")
    }
}

extension Relation<V2.AppStoreVersionExperiments.ById.GET.Parameters.Limit, Int?> {
    /// maximum number of related controlVersions returned (when they are included)
    public static var controlVersions: Relation {
        .init(key: "limit[controlVersions]")
    }
}

// swiftlint:enable all
