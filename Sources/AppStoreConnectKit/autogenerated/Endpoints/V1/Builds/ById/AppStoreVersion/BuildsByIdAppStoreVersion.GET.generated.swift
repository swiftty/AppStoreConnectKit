// autogenerated

// swiftlint:disable all
import Foundation

extension V1.Builds.ById.AppStoreVersion {
    public struct GET: Endpoint {
        public typealias Response = AppStoreVersionResponse

        public var path: String {
            "/v1/builds/\(id)/appStoreVersion"
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
                URLQueryItem(name: "fields[appStoreVersions]",
                             value: parameters.fields[.appStoreVersions]?.map { "\($0)" }.joined(separator: ","))
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Related resource as `AppStoreVersionResponse`
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
                return try jsonDecoder.decode(AppStoreVersionResponse.self, from: data)

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

extension V1.Builds.ById.AppStoreVersion.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum AppStoreVersions: Hashable, Codable, RawRepresentable {
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
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .ageRatingDeclaration: return "ageRatingDeclaration"
                    case .app: return "app"
                    case .appClipDefaultExperience: return "appClipDefaultExperience"
                    case .appStoreReviewDetail: return "appStoreReviewDetail"
                    case .appStoreState: return "appStoreState"
                    case .appStoreVersionLocalizations: return "appStoreVersionLocalizations"
                    case .appStoreVersionPhasedRelease: return "appStoreVersionPhasedRelease"
                    case .appStoreVersionSubmission: return "appStoreVersionSubmission"
                    case .build: return "build"
                    case .copyright: return "copyright"
                    case .createdDate: return "createdDate"
                    case .downloadable: return "downloadable"
                    case .earliestReleaseDate: return "earliestReleaseDate"
                    case .idfaDeclaration: return "idfaDeclaration"
                    case .platform: return "platform"
                    case .releaseType: return "releaseType"
                    case .routingAppCoverage: return "routingAppCoverage"
                    case .usesIdfa: return "usesIdfa"
                    case .versionString: return "versionString"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "ageRatingDeclaration": self = .ageRatingDeclaration
                    case "app": self = .app
                    case "appClipDefaultExperience": self = .appClipDefaultExperience
                    case "appStoreReviewDetail": self = .appStoreReviewDetail
                    case "appStoreState": self = .appStoreState
                    case "appStoreVersionLocalizations": self = .appStoreVersionLocalizations
                    case "appStoreVersionPhasedRelease": self = .appStoreVersionPhasedRelease
                    case "appStoreVersionSubmission": self = .appStoreVersionSubmission
                    case "build": self = .build
                    case "copyright": self = .copyright
                    case "createdDate": self = .createdDate
                    case "downloadable": self = .downloadable
                    case "earliestReleaseDate": self = .earliestReleaseDate
                    case "idfaDeclaration": self = .idfaDeclaration
                    case "platform": self = .platform
                    case "releaseType": self = .releaseType
                    case "routingAppCoverage": self = .routingAppCoverage
                    case "usesIdfa": self = .usesIdfa
                    case "versionString": self = .versionString
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
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
    }
}

// swiftlint:enable all
