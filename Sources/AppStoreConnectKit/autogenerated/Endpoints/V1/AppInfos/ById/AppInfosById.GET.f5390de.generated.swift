// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.AppInfos.ById {
    public struct GET: Endpoint {
        public typealias Response = AppInfoResponse

        public var path: String {
            "/v1/appInfos/\(id)"
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
                             value: parameters.fields[.ageRatingDeclarations]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[appCategories]",
                             value: parameters.fields[.appCategories]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[appInfoLocalizations]",
                             value: parameters.fields[.appInfoLocalizations]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[appInfos]",
                             value: parameters.fields[.appInfos]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[appInfoLocalizations]",
                             value: parameters.limit[.appInfoLocalizations].map { "\($0)" })
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Single AppInfo as `AppInfoResponse`
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
                return try jsonDecoder.decode(AppInfoResponse.self, from: data)

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

extension V1.AppInfos.ById.GET {
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

            public enum AppCategories: Hashable, Codable, RawRepresentable {
                case parent
                case platforms
                case subcategories
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .parent: return "parent"
                    case .platforms: return "platforms"
                    case .subcategories: return "subcategories"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "parent": self = .parent
                    case "platforms": self = .platforms
                    case "subcategories": self = .subcategories
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum AppInfoLocalizations: Hashable, Codable, RawRepresentable {
                case appInfo
                case locale
                case name
                case privacyChoicesUrl
                case privacyPolicyText
                case privacyPolicyUrl
                case subtitle
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appInfo: return "appInfo"
                    case .locale: return "locale"
                    case .name: return "name"
                    case .privacyChoicesUrl: return "privacyChoicesUrl"
                    case .privacyPolicyText: return "privacyPolicyText"
                    case .privacyPolicyUrl: return "privacyPolicyUrl"
                    case .subtitle: return "subtitle"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "appInfo": self = .appInfo
                    case "locale": self = .locale
                    case "name": self = .name
                    case "privacyChoicesUrl": self = .privacyChoicesUrl
                    case "privacyPolicyText": self = .privacyPolicyText
                    case "privacyPolicyUrl": self = .privacyPolicyUrl
                    case "subtitle": self = .subtitle
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum AppInfos: Hashable, Codable, RawRepresentable {
                case ageRatingDeclaration
                case app
                case appInfoLocalizations
                case appStoreAgeRating
                case appStoreState
                case brazilAgeRating
                case brazilAgeRatingV2
                case kidsAgeBand
                case primaryCategory
                case primarySubcategoryOne
                case primarySubcategoryTwo
                case secondaryCategory
                case secondarySubcategoryOne
                case secondarySubcategoryTwo
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .ageRatingDeclaration: return "ageRatingDeclaration"
                    case .app: return "app"
                    case .appInfoLocalizations: return "appInfoLocalizations"
                    case .appStoreAgeRating: return "appStoreAgeRating"
                    case .appStoreState: return "appStoreState"
                    case .brazilAgeRating: return "brazilAgeRating"
                    case .brazilAgeRatingV2: return "brazilAgeRatingV2"
                    case .kidsAgeBand: return "kidsAgeBand"
                    case .primaryCategory: return "primaryCategory"
                    case .primarySubcategoryOne: return "primarySubcategoryOne"
                    case .primarySubcategoryTwo: return "primarySubcategoryTwo"
                    case .secondaryCategory: return "secondaryCategory"
                    case .secondarySubcategoryOne: return "secondarySubcategoryOne"
                    case .secondarySubcategoryTwo: return "secondarySubcategoryTwo"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "ageRatingDeclaration": self = .ageRatingDeclaration
                    case "app": self = .app
                    case "appInfoLocalizations": self = .appInfoLocalizations
                    case "appStoreAgeRating": self = .appStoreAgeRating
                    case "appStoreState": self = .appStoreState
                    case "brazilAgeRating": self = .brazilAgeRating
                    case "brazilAgeRatingV2": self = .brazilAgeRatingV2
                    case "kidsAgeBand": self = .kidsAgeBand
                    case "primaryCategory": self = .primaryCategory
                    case "primarySubcategoryOne": self = .primarySubcategoryOne
                    case "primarySubcategoryTwo": self = .primarySubcategoryTwo
                    case "secondaryCategory": self = .secondaryCategory
                    case "secondarySubcategoryOne": self = .secondarySubcategoryOne
                    case "secondarySubcategoryTwo": self = .secondarySubcategoryTwo
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type ageRatingDeclarations
                public static var ageRatingDeclarations: Relation<[AgeRatingDeclarations]?> {
                    .init(key: "fields[ageRatingDeclarations]")
                }

                /// the fields to include for returned resources of type appCategories
                public static var appCategories: Relation<[AppCategories]?> {
                    .init(key: "fields[appCategories]")
                }

                /// the fields to include for returned resources of type appInfoLocalizations
                public static var appInfoLocalizations: Relation<[AppInfoLocalizations]?> {
                    .init(key: "fields[appInfoLocalizations]")
                }

                /// the fields to include for returned resources of type appInfos
                public static var appInfos: Relation<[AppInfos]?> {
                    .init(key: "fields[appInfos]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case ageRatingDeclaration
            case app
            case appInfoLocalizations
            case primaryCategory
            case primarySubcategoryOne
            case primarySubcategoryTwo
            case secondaryCategory
            case secondarySubcategoryOne
            case secondarySubcategoryTwo
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .ageRatingDeclaration: return "ageRatingDeclaration"
                case .app: return "app"
                case .appInfoLocalizations: return "appInfoLocalizations"
                case .primaryCategory: return "primaryCategory"
                case .primarySubcategoryOne: return "primarySubcategoryOne"
                case .primarySubcategoryTwo: return "primarySubcategoryTwo"
                case .secondaryCategory: return "secondaryCategory"
                case .secondarySubcategoryOne: return "secondarySubcategoryOne"
                case .secondarySubcategoryTwo: return "secondarySubcategoryTwo"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "ageRatingDeclaration": self = .ageRatingDeclaration
                case "app": self = .app
                case "appInfoLocalizations": self = .appInfoLocalizations
                case "primaryCategory": self = .primaryCategory
                case "primarySubcategoryOne": self = .primarySubcategoryOne
                case "primarySubcategoryTwo": self = .primarySubcategoryTwo
                case "secondaryCategory": self = .secondaryCategory
                case "secondarySubcategoryOne": self = .secondarySubcategoryOne
                case "secondarySubcategoryTwo": self = .secondarySubcategoryTwo
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
                /// maximum number of related appInfoLocalizations returned (when they are included)
                public static var appInfoLocalizations: Relation<Int?> {
                    .init(key: "limit[appInfoLocalizations]")
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
