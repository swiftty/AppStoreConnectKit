// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.GameCenterLeaderboardSets.ById.Localizations {
    public struct GET: Endpoint {
        public typealias Response = GameCenterLeaderboardSetLocalizationsResponse

        public var path: String {
            "/v1/gameCenterLeaderboardSets/\(id)/localizations"
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
                URLQueryItem(name: "fields[gameCenterLeaderboardSetImages]",
                             value: parameters.fields[.gameCenterLeaderboardSetImages]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[gameCenterLeaderboardSetLocalizations]",
                             value: parameters.fields[.gameCenterLeaderboardSetLocalizations]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[gameCenterLeaderboardSets]",
                             value: parameters.fields[.gameCenterLeaderboardSets]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
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

        /// - Returns: **200**, List of GameCenterLeaderboardSetLocalizations as `GameCenterLeaderboardSetLocalizationsResponse`
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
                return try jsonDecoder.decode(GameCenterLeaderboardSetLocalizationsResponse.self, from: data)

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

extension V1.GameCenterLeaderboardSets.ById.Localizations.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        /// maximum resources per page
        public var limit: Int?

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum GameCenterLeaderboardSetImages: Hashable, Codable, RawRepresentable {
                case assetDeliveryState
                case fileName
                case fileSize
                case gameCenterLeaderboardSetLocalization
                case imageAsset
                case uploadOperations
                case uploaded
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .assetDeliveryState: return "assetDeliveryState"
                    case .fileName: return "fileName"
                    case .fileSize: return "fileSize"
                    case .gameCenterLeaderboardSetLocalization: return "gameCenterLeaderboardSetLocalization"
                    case .imageAsset: return "imageAsset"
                    case .uploadOperations: return "uploadOperations"
                    case .uploaded: return "uploaded"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "assetDeliveryState": self = .assetDeliveryState
                    case "fileName": self = .fileName
                    case "fileSize": self = .fileSize
                    case "gameCenterLeaderboardSetLocalization": self = .gameCenterLeaderboardSetLocalization
                    case "imageAsset": self = .imageAsset
                    case "uploadOperations": self = .uploadOperations
                    case "uploaded": self = .uploaded
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum GameCenterLeaderboardSetLocalizations: Hashable, Codable, RawRepresentable {
                case gameCenterLeaderboardSet
                case gameCenterLeaderboardSetImage
                case locale
                case name
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .gameCenterLeaderboardSet: return "gameCenterLeaderboardSet"
                    case .gameCenterLeaderboardSetImage: return "gameCenterLeaderboardSetImage"
                    case .locale: return "locale"
                    case .name: return "name"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "gameCenterLeaderboardSet": self = .gameCenterLeaderboardSet
                    case "gameCenterLeaderboardSetImage": self = .gameCenterLeaderboardSetImage
                    case "locale": self = .locale
                    case "name": self = .name
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum GameCenterLeaderboardSets: Hashable, Codable, RawRepresentable {
                case gameCenterDetail
                case gameCenterGroup
                case gameCenterLeaderboards
                case groupLeaderboardSet
                case localizations
                case referenceName
                case releases
                case vendorIdentifier
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .gameCenterDetail: return "gameCenterDetail"
                    case .gameCenterGroup: return "gameCenterGroup"
                    case .gameCenterLeaderboards: return "gameCenterLeaderboards"
                    case .groupLeaderboardSet: return "groupLeaderboardSet"
                    case .localizations: return "localizations"
                    case .referenceName: return "referenceName"
                    case .releases: return "releases"
                    case .vendorIdentifier: return "vendorIdentifier"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "gameCenterDetail": self = .gameCenterDetail
                    case "gameCenterGroup": self = .gameCenterGroup
                    case "gameCenterLeaderboards": self = .gameCenterLeaderboards
                    case "groupLeaderboardSet": self = .groupLeaderboardSet
                    case "localizations": self = .localizations
                    case "referenceName": self = .referenceName
                    case "releases": self = .releases
                    case "vendorIdentifier": self = .vendorIdentifier
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type gameCenterLeaderboardSetImages
                public static var gameCenterLeaderboardSetImages: Relation<[GameCenterLeaderboardSetImages]?> {
                    .init(key: "fields[gameCenterLeaderboardSetImages]")
                }

                /// the fields to include for returned resources of type gameCenterLeaderboardSetLocalizations
                public static var gameCenterLeaderboardSetLocalizations: Relation<[GameCenterLeaderboardSetLocalizations]?> {
                    .init(key: "fields[gameCenterLeaderboardSetLocalizations]")
                }

                /// the fields to include for returned resources of type gameCenterLeaderboardSets
                public static var gameCenterLeaderboardSets: Relation<[GameCenterLeaderboardSets]?> {
                    .init(key: "fields[gameCenterLeaderboardSets]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case gameCenterLeaderboardSet
            case gameCenterLeaderboardSetImage
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .gameCenterLeaderboardSet: return "gameCenterLeaderboardSet"
                case .gameCenterLeaderboardSetImage: return "gameCenterLeaderboardSetImage"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "gameCenterLeaderboardSet": self = .gameCenterLeaderboardSet
                case "gameCenterLeaderboardSetImage": self = .gameCenterLeaderboardSetImage
                default: self = .unknown(rawValue)
                }
            }
        }
    }
}

// swiftlint:enable all