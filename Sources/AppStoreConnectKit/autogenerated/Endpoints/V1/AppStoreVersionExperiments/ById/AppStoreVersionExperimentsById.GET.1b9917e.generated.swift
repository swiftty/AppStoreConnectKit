// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.AppStoreVersionExperiments.ById {
    @available(*, deprecated)
    public struct GET: Endpoint {
        public typealias Response = AppStoreVersionExperimentResponse

        public var path: String {
            "/v1/appStoreVersionExperiments/\(id)"
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
                             value: parameters.limit[.appStoreVersionExperimentTreatments].map { "\($0)" })
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Single AppStoreVersionExperiment as `AppStoreVersionExperimentResponse`
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
                return try jsonDecoder.decode(AppStoreVersionExperimentResponse.self, from: data)

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

extension V1.AppStoreVersionExperiments.ById.GET {
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
                case appStoreVersion
                case appStoreVersionExperimentTreatments
                case endDate
                case name
                case reviewRequired
                case startDate
                case started
                case state
                case trafficProportion
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appStoreVersion: return "appStoreVersion"
                    case .appStoreVersionExperimentTreatments: return "appStoreVersionExperimentTreatments"
                    case .endDate: return "endDate"
                    case .name: return "name"
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
                    case "appStoreVersion": self = .appStoreVersion
                    case "appStoreVersionExperimentTreatments": self = .appStoreVersionExperimentTreatments
                    case "endDate": self = .endDate
                    case "name": self = .name
                    case "reviewRequired": self = .reviewRequired
                    case "startDate": self = .startDate
                    case "started": self = .started
                    case "state": self = .state
                    case "trafficProportion": self = .trafficProportion
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type appStoreVersionExperimentTreatments
                public static var appStoreVersionExperimentTreatments: Relation<[AppStoreVersionExperimentTreatments]?> {
                    .init(key: "fields[appStoreVersionExperimentTreatments]")
                }

                /// the fields to include for returned resources of type appStoreVersionExperiments
                public static var appStoreVersionExperiments: Relation<[AppStoreVersionExperiments]?> {
                    .init(key: "fields[appStoreVersionExperiments]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case appStoreVersion
            case appStoreVersionExperimentTreatments
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .appStoreVersion: return "appStoreVersion"
                case .appStoreVersionExperimentTreatments: return "appStoreVersionExperimentTreatments"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "appStoreVersion": self = .appStoreVersion
                case "appStoreVersionExperimentTreatments": self = .appStoreVersionExperimentTreatments
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
                /// maximum number of related appStoreVersionExperimentTreatments returned (when they are included)
                public static var appStoreVersionExperimentTreatments: Relation<Int?> {
                    .init(key: "limit[appStoreVersionExperimentTreatments]")
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
