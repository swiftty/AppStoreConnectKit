// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.Apps.ById.Builds {
    public struct GET: Endpoint {
        public typealias Response = BuildsResponse

        public var path: String {
            "/v1/apps/\(id)/builds"
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
                URLQueryItem(name: "fields[builds]",
                             value: parameters.fields[.builds]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit",
                             value: parameters.limit.map { "\($0)" })
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, List of related resources as `BuildsResponse`
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
                return try jsonDecoder.decode(BuildsResponse.self, from: data)

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

extension V1.Apps.ById.Builds.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        /// maximum resources per page
        public var limit: Int?

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum Builds: Hashable, Codable, RawRepresentable {
                case app
                case appEncryptionDeclaration
                case appStoreVersion
                case betaAppReviewSubmission
                case betaBuildLocalizations
                case betaGroups
                case buildAudienceType
                case buildBetaDetail
                case buildBundles
                case computedMinMacOsVersion
                case diagnosticSignatures
                case expirationDate
                case expired
                case iconAssetToken
                case icons
                case individualTesters
                case lsMinimumSystemVersion
                case minOsVersion
                case perfPowerMetrics
                case preReleaseVersion
                case processingState
                case uploadedDate
                case usesNonExemptEncryption
                case version
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .app: return "app"
                    case .appEncryptionDeclaration: return "appEncryptionDeclaration"
                    case .appStoreVersion: return "appStoreVersion"
                    case .betaAppReviewSubmission: return "betaAppReviewSubmission"
                    case .betaBuildLocalizations: return "betaBuildLocalizations"
                    case .betaGroups: return "betaGroups"
                    case .buildAudienceType: return "buildAudienceType"
                    case .buildBetaDetail: return "buildBetaDetail"
                    case .buildBundles: return "buildBundles"
                    case .computedMinMacOsVersion: return "computedMinMacOsVersion"
                    case .diagnosticSignatures: return "diagnosticSignatures"
                    case .expirationDate: return "expirationDate"
                    case .expired: return "expired"
                    case .iconAssetToken: return "iconAssetToken"
                    case .icons: return "icons"
                    case .individualTesters: return "individualTesters"
                    case .lsMinimumSystemVersion: return "lsMinimumSystemVersion"
                    case .minOsVersion: return "minOsVersion"
                    case .perfPowerMetrics: return "perfPowerMetrics"
                    case .preReleaseVersion: return "preReleaseVersion"
                    case .processingState: return "processingState"
                    case .uploadedDate: return "uploadedDate"
                    case .usesNonExemptEncryption: return "usesNonExemptEncryption"
                    case .version: return "version"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "app": self = .app
                    case "appEncryptionDeclaration": self = .appEncryptionDeclaration
                    case "appStoreVersion": self = .appStoreVersion
                    case "betaAppReviewSubmission": self = .betaAppReviewSubmission
                    case "betaBuildLocalizations": self = .betaBuildLocalizations
                    case "betaGroups": self = .betaGroups
                    case "buildAudienceType": self = .buildAudienceType
                    case "buildBetaDetail": self = .buildBetaDetail
                    case "buildBundles": self = .buildBundles
                    case "computedMinMacOsVersion": self = .computedMinMacOsVersion
                    case "diagnosticSignatures": self = .diagnosticSignatures
                    case "expirationDate": self = .expirationDate
                    case "expired": self = .expired
                    case "iconAssetToken": self = .iconAssetToken
                    case "icons": self = .icons
                    case "individualTesters": self = .individualTesters
                    case "lsMinimumSystemVersion": self = .lsMinimumSystemVersion
                    case "minOsVersion": self = .minOsVersion
                    case "perfPowerMetrics": self = .perfPowerMetrics
                    case "preReleaseVersion": self = .preReleaseVersion
                    case "processingState": self = .processingState
                    case "uploadedDate": self = .uploadedDate
                    case "usesNonExemptEncryption": self = .usesNonExemptEncryption
                    case "version": self = .version
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type builds
                public static var builds: Relation<[Builds]?> {
                    .init(key: "fields[builds]")
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
