// autogenerated

// swiftlint:disable all
import Foundation

extension V1.AppInfos.ById.AgeRatingDeclaration {
    public struct GET: Endpoint {
        public typealias Response = AgeRatingDeclarationResponse

        public var path: String {
            "/v1/appInfos/\(id)/ageRatingDeclaration"
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
                URLQueryItem(name: "fields[ageRatingDeclarations]",
                             value: parameters.fields[.ageRatingDeclarations]?.map { "\($0)" }.joined(separator: ","))
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Related resource as `AgeRatingDeclarationResponse`
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
                return try jsonDecoder.decode(AgeRatingDeclarationResponse.self, from: data)

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

extension V1.AppInfos.ById.AgeRatingDeclaration.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum AgeRatingDeclarations: Hashable, Codable, RawRepresentable {
                case alcoholTobaccoOrDrugUseOrReferences
                case contests
                case gambling
                case gamblingAndContests
                case gamblingSimulated
                case horrorOrFearThemes
                case kidsAgeBand
                case matureOrSuggestiveThemes
                case medicalOrTreatmentInformation
                case profanityOrCrudeHumor
                case seventeenPlus
                case sexualContentGraphicAndNudity
                case sexualContentOrNudity
                case unrestrictedWebAccess
                case violenceCartoonOrFantasy
                case violenceRealistic
                case violenceRealisticProlongedGraphicOrSadistic
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .alcoholTobaccoOrDrugUseOrReferences: return "alcoholTobaccoOrDrugUseOrReferences"
                    case .contests: return "contests"
                    case .gambling: return "gambling"
                    case .gamblingAndContests: return "gamblingAndContests"
                    case .gamblingSimulated: return "gamblingSimulated"
                    case .horrorOrFearThemes: return "horrorOrFearThemes"
                    case .kidsAgeBand: return "kidsAgeBand"
                    case .matureOrSuggestiveThemes: return "matureOrSuggestiveThemes"
                    case .medicalOrTreatmentInformation: return "medicalOrTreatmentInformation"
                    case .profanityOrCrudeHumor: return "profanityOrCrudeHumor"
                    case .seventeenPlus: return "seventeenPlus"
                    case .sexualContentGraphicAndNudity: return "sexualContentGraphicAndNudity"
                    case .sexualContentOrNudity: return "sexualContentOrNudity"
                    case .unrestrictedWebAccess: return "unrestrictedWebAccess"
                    case .violenceCartoonOrFantasy: return "violenceCartoonOrFantasy"
                    case .violenceRealistic: return "violenceRealistic"
                    case .violenceRealisticProlongedGraphicOrSadistic: return "violenceRealisticProlongedGraphicOrSadistic"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "alcoholTobaccoOrDrugUseOrReferences": self = .alcoholTobaccoOrDrugUseOrReferences
                    case "contests": self = .contests
                    case "gambling": self = .gambling
                    case "gamblingAndContests": self = .gamblingAndContests
                    case "gamblingSimulated": self = .gamblingSimulated
                    case "horrorOrFearThemes": self = .horrorOrFearThemes
                    case "kidsAgeBand": self = .kidsAgeBand
                    case "matureOrSuggestiveThemes": self = .matureOrSuggestiveThemes
                    case "medicalOrTreatmentInformation": self = .medicalOrTreatmentInformation
                    case "profanityOrCrudeHumor": self = .profanityOrCrudeHumor
                    case "seventeenPlus": self = .seventeenPlus
                    case "sexualContentGraphicAndNudity": self = .sexualContentGraphicAndNudity
                    case "sexualContentOrNudity": self = .sexualContentOrNudity
                    case "unrestrictedWebAccess": self = .unrestrictedWebAccess
                    case "violenceCartoonOrFantasy": self = .violenceCartoonOrFantasy
                    case "violenceRealistic": self = .violenceRealistic
                    case "violenceRealisticProlongedGraphicOrSadistic": self = .violenceRealisticProlongedGraphicOrSadistic
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type ageRatingDeclarations
                public static var ageRatingDeclarations: Relation<[AgeRatingDeclarations]?> {
                    .init(key: "fields[ageRatingDeclarations]")
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
