// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.Builds.ById.AppEncryptionDeclaration {
    public struct GET: Endpoint {
        public typealias Response = AppEncryptionDeclarationResponse

        public var path: String {
            "/v1/builds/\(id)/appEncryptionDeclaration"
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
                URLQueryItem(name: "fields[appEncryptionDeclarations]",
                             value: parameters.fields[.appEncryptionDeclarations]?.map { "\($0)" }.joined(separator: ","))
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Single AppEncryptionDeclaration as `AppEncryptionDeclarationResponse`
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
                return try jsonDecoder.decode(AppEncryptionDeclarationResponse.self, from: data)

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

extension V1.Builds.ById.AppEncryptionDeclaration.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<Self, T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum AppEncryptionDeclarations: Hashable, Codable, RawRepresentable {
                case app
                case appDescription
                case appEncryptionDeclarationDocument
                case appEncryptionDeclarationState
                case availableOnFrenchStore
                case builds
                case codeValue
                case containsProprietaryCryptography
                case containsThirdPartyCryptography
                case createdDate
                case documentName
                case documentType
                case documentUrl
                case exempt
                case platform
                case uploadedDate
                case usesEncryption
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .app: return "app"
                    case .appDescription: return "appDescription"
                    case .appEncryptionDeclarationDocument: return "appEncryptionDeclarationDocument"
                    case .appEncryptionDeclarationState: return "appEncryptionDeclarationState"
                    case .availableOnFrenchStore: return "availableOnFrenchStore"
                    case .builds: return "builds"
                    case .codeValue: return "codeValue"
                    case .containsProprietaryCryptography: return "containsProprietaryCryptography"
                    case .containsThirdPartyCryptography: return "containsThirdPartyCryptography"
                    case .createdDate: return "createdDate"
                    case .documentName: return "documentName"
                    case .documentType: return "documentType"
                    case .documentUrl: return "documentUrl"
                    case .exempt: return "exempt"
                    case .platform: return "platform"
                    case .uploadedDate: return "uploadedDate"
                    case .usesEncryption: return "usesEncryption"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "app": self = .app
                    case "appDescription": self = .appDescription
                    case "appEncryptionDeclarationDocument": self = .appEncryptionDeclarationDocument
                    case "appEncryptionDeclarationState": self = .appEncryptionDeclarationState
                    case "availableOnFrenchStore": self = .availableOnFrenchStore
                    case "builds": self = .builds
                    case "codeValue": self = .codeValue
                    case "containsProprietaryCryptography": self = .containsProprietaryCryptography
                    case "containsThirdPartyCryptography": self = .containsThirdPartyCryptography
                    case "createdDate": self = .createdDate
                    case "documentName": self = .documentName
                    case "documentType": self = .documentType
                    case "documentUrl": self = .documentUrl
                    case "exempt": self = .exempt
                    case "platform": self = .platform
                    case "uploadedDate": self = .uploadedDate
                    case "usesEncryption": self = .usesEncryption
                    default: self = .unknown(rawValue)
                    }
                }
            }
        }
    }
}

extension Relation<V1.Builds.ById.AppEncryptionDeclaration.GET.Parameters.Fields, [V1.Builds.ById.AppEncryptionDeclaration.GET.Parameters.Fields.AppEncryptionDeclarations]?> {
    /// the fields to include for returned resources of type appEncryptionDeclarations
    public static var appEncryptionDeclarations: Relation {
        .init(key: "fields[appEncryptionDeclarations]")
    }
}

// swiftlint:enable all
