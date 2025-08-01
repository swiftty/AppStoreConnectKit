// autogenerated

// swiftlint:disable all
import Foundation

public struct AppInfo: Hashable, Codable, Sendable {
    public var id: String

    public var type: `Type`

    public var attributes: Attributes?

    public var relationships: Relationships?

    public var links: ResourceLinks?

    public init(
        id: String,
        type: `Type`,
        attributes: Attributes? = nil,
        relationships: Relationships? = nil,
        links: ResourceLinks? = nil
    ) {
        self.id = id
        self.type = type
        self.attributes = attributes
        self.relationships = relationships
        self.links = links
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case attributes
        case relationships
        case links
    }

    public enum `Type`: String, Hashable, Codable, Sendable {
        case appInfos
    }

    public struct Attributes: Hashable, Codable, Sendable {
        public var appStoreAgeRating: AppStoreAgeRating?

        public var appStoreState: AppStoreVersionState?

        @available(*, deprecated)
        public var australiaAgeRating: AustraliaAgeRating?

        public var brazilAgeRating: BrazilAgeRating?

        @available(*, deprecated)
        public var brazilAgeRatingV2: BrazilAgeRatingV2?

        @available(*, deprecated)
        public var franceAgeRating: FranceAgeRating?

        public var kidsAgeBand: KidsAgeBand?

        @available(*, deprecated)
        public var koreaAgeRating: KoreaAgeRating?

        public var state: State?

        public init(
            appStoreAgeRating: AppStoreAgeRating? = nil,
            appStoreState: AppStoreVersionState? = nil,
            australiaAgeRating: AustraliaAgeRating? = nil,
            brazilAgeRating: BrazilAgeRating? = nil,
            brazilAgeRatingV2: BrazilAgeRatingV2? = nil,
            franceAgeRating: FranceAgeRating? = nil,
            kidsAgeBand: KidsAgeBand? = nil,
            koreaAgeRating: KoreaAgeRating? = nil,
            state: State? = nil
        ) {
            self.appStoreAgeRating = appStoreAgeRating
            self.appStoreState = appStoreState
            self.australiaAgeRating = australiaAgeRating
            self.brazilAgeRating = brazilAgeRating
            self.brazilAgeRatingV2 = brazilAgeRatingV2
            self.franceAgeRating = franceAgeRating
            self.kidsAgeBand = kidsAgeBand
            self.koreaAgeRating = koreaAgeRating
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case appStoreAgeRating
            case appStoreState
            case australiaAgeRating
            case brazilAgeRating
            case brazilAgeRatingV2
            case franceAgeRating
            case kidsAgeBand
            case koreaAgeRating
            case state
        }

        public struct AustraliaAgeRating: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
            public static var eighteen: Self {
                .init(rawValue: "EIGHTEEN")
            }

            public static var fifteen: Self {
                .init(rawValue: "FIFTEEN")
            }

            public var description: String {
                rawValue
            }

            public var rawValue: String

            public init(rawValue: String) {
                self.rawValue = rawValue
            }
        }

        public struct BrazilAgeRatingV2: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
            public static var officialEighteen: Self {
                .init(rawValue: "OFFICIAL_EIGHTEEN")
            }

            public static var officialFourteen: Self {
                .init(rawValue: "OFFICIAL_FOURTEEN")
            }

            public static var officialL: Self {
                .init(rawValue: "OFFICIAL_L")
            }

            public static var officialSixteen: Self {
                .init(rawValue: "OFFICIAL_SIXTEEN")
            }

            public static var officialTen: Self {
                .init(rawValue: "OFFICIAL_TEN")
            }

            public static var officialTwelve: Self {
                .init(rawValue: "OFFICIAL_TWELVE")
            }

            public static var selfRatedEighteen: Self {
                .init(rawValue: "SELF_RATED_EIGHTEEN")
            }

            public static var selfRatedFourteen: Self {
                .init(rawValue: "SELF_RATED_FOURTEEN")
            }

            public static var selfRatedL: Self {
                .init(rawValue: "SELF_RATED_L")
            }

            public static var selfRatedSixteen: Self {
                .init(rawValue: "SELF_RATED_SIXTEEN")
            }

            public static var selfRatedTen: Self {
                .init(rawValue: "SELF_RATED_TEN")
            }

            public static var selfRatedTwelve: Self {
                .init(rawValue: "SELF_RATED_TWELVE")
            }

            public var description: String {
                rawValue
            }

            public var rawValue: String

            public init(rawValue: String) {
                self.rawValue = rawValue
            }
        }

        public struct FranceAgeRating: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
            public static var eighteen: Self {
                .init(rawValue: "EIGHTEEN")
            }

            public var description: String {
                rawValue
            }

            public var rawValue: String

            public init(rawValue: String) {
                self.rawValue = rawValue
            }
        }

        public struct KoreaAgeRating: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
            public static var all: Self {
                .init(rawValue: "ALL")
            }

            public static var fifteen: Self {
                .init(rawValue: "FIFTEEN")
            }

            public static var nineteen: Self {
                .init(rawValue: "NINETEEN")
            }

            public static var notApplicable: Self {
                .init(rawValue: "NOT_APPLICABLE")
            }

            public static var twelve: Self {
                .init(rawValue: "TWELVE")
            }

            public var description: String {
                rawValue
            }

            public var rawValue: String

            public init(rawValue: String) {
                self.rawValue = rawValue
            }
        }

        public struct State: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
            public static var accepted: Self {
                .init(rawValue: "ACCEPTED")
            }

            public static var developerRejected: Self {
                .init(rawValue: "DEVELOPER_REJECTED")
            }

            public static var inReview: Self {
                .init(rawValue: "IN_REVIEW")
            }

            public static var pendingRelease: Self {
                .init(rawValue: "PENDING_RELEASE")
            }

            public static var prepareForSubmission: Self {
                .init(rawValue: "PREPARE_FOR_SUBMISSION")
            }

            public static var readyForDistribution: Self {
                .init(rawValue: "READY_FOR_DISTRIBUTION")
            }

            public static var readyForReview: Self {
                .init(rawValue: "READY_FOR_REVIEW")
            }

            public static var rejected: Self {
                .init(rawValue: "REJECTED")
            }

            public static var replacedWithNewInfo: Self {
                .init(rawValue: "REPLACED_WITH_NEW_INFO")
            }

            public static var waitingForReview: Self {
                .init(rawValue: "WAITING_FOR_REVIEW")
            }

            public var description: String {
                rawValue
            }

            public var rawValue: String

            public init(rawValue: String) {
                self.rawValue = rawValue
            }
        }
    }

    public struct Relationships: Hashable, Codable, Sendable {
        public var ageRatingDeclaration: AgeRatingDeclaration?

        public var app: App?

        public var appInfoLocalizations: AppInfoLocalizations?

        public var primaryCategory: PrimaryCategory?

        public var primarySubcategoryOne: PrimarySubcategoryOne?

        public var primarySubcategoryTwo: PrimarySubcategoryTwo?

        public var secondaryCategory: SecondaryCategory?

        public var secondarySubcategoryOne: SecondarySubcategoryOne?

        public var secondarySubcategoryTwo: SecondarySubcategoryTwo?

        public init(
            ageRatingDeclaration: AgeRatingDeclaration? = nil,
            app: App? = nil,
            appInfoLocalizations: AppInfoLocalizations? = nil,
            primaryCategory: PrimaryCategory? = nil,
            primarySubcategoryOne: PrimarySubcategoryOne? = nil,
            primarySubcategoryTwo: PrimarySubcategoryTwo? = nil,
            secondaryCategory: SecondaryCategory? = nil,
            secondarySubcategoryOne: SecondarySubcategoryOne? = nil,
            secondarySubcategoryTwo: SecondarySubcategoryTwo? = nil
        ) {
            self.ageRatingDeclaration = ageRatingDeclaration
            self.app = app
            self.appInfoLocalizations = appInfoLocalizations
            self.primaryCategory = primaryCategory
            self.primarySubcategoryOne = primarySubcategoryOne
            self.primarySubcategoryTwo = primarySubcategoryTwo
            self.secondaryCategory = secondaryCategory
            self.secondarySubcategoryOne = secondarySubcategoryOne
            self.secondarySubcategoryTwo = secondarySubcategoryTwo
        }

        private enum CodingKeys: String, CodingKey {
            case ageRatingDeclaration
            case app
            case appInfoLocalizations
            case primaryCategory
            case primarySubcategoryOne
            case primarySubcategoryTwo
            case secondaryCategory
            case secondarySubcategoryOne
            case secondarySubcategoryTwo
        }

        public struct AgeRatingDeclaration: Hashable, Codable, Sendable {
            public var data: Data?

            public var links: RelationshipLinks?

            public init(
                data: Data? = nil,
                links: RelationshipLinks? = nil
            ) {
                self.data = data
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
            }

            public struct Data: Hashable, Codable, Sendable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case ageRatingDeclarations
                }
            }
        }

        public struct App: Hashable, Codable, Sendable {
            public var data: Data?

            public init(data: Data? = nil) {
                self.data = data
            }

            private enum CodingKeys: String, CodingKey {
                case data
            }

            public struct Data: Hashable, Codable, Sendable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case apps
                }
            }
        }

        public struct AppInfoLocalizations: Hashable, Codable, Sendable {
            public var data: [Data]?

            public var links: RelationshipLinks?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: RelationshipLinks? = nil,
                meta: PagingInformation? = nil
            ) {
                self.data = data
                self.links = links
                self.meta = meta
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
                case meta
            }

            public struct Data: Hashable, Codable, Sendable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case appInfoLocalizations
                }
            }
        }

        public struct PrimaryCategory: Hashable, Codable, Sendable {
            public var data: Data?

            public var links: RelationshipLinks?

            public init(
                data: Data? = nil,
                links: RelationshipLinks? = nil
            ) {
                self.data = data
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
            }

            public struct Data: Hashable, Codable, Sendable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case appCategories
                }
            }
        }

        public struct PrimarySubcategoryOne: Hashable, Codable, Sendable {
            public var data: Data?

            public var links: RelationshipLinks?

            public init(
                data: Data? = nil,
                links: RelationshipLinks? = nil
            ) {
                self.data = data
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
            }

            public struct Data: Hashable, Codable, Sendable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case appCategories
                }
            }
        }

        public struct PrimarySubcategoryTwo: Hashable, Codable, Sendable {
            public var data: Data?

            public var links: RelationshipLinks?

            public init(
                data: Data? = nil,
                links: RelationshipLinks? = nil
            ) {
                self.data = data
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
            }

            public struct Data: Hashable, Codable, Sendable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case appCategories
                }
            }
        }

        public struct SecondaryCategory: Hashable, Codable, Sendable {
            public var data: Data?

            public var links: RelationshipLinks?

            public init(
                data: Data? = nil,
                links: RelationshipLinks? = nil
            ) {
                self.data = data
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
            }

            public struct Data: Hashable, Codable, Sendable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case appCategories
                }
            }
        }

        public struct SecondarySubcategoryOne: Hashable, Codable, Sendable {
            public var data: Data?

            public var links: RelationshipLinks?

            public init(
                data: Data? = nil,
                links: RelationshipLinks? = nil
            ) {
                self.data = data
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
            }

            public struct Data: Hashable, Codable, Sendable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case appCategories
                }
            }
        }

        public struct SecondarySubcategoryTwo: Hashable, Codable, Sendable {
            public var data: Data?

            public var links: RelationshipLinks?

            public init(
                data: Data? = nil,
                links: RelationshipLinks? = nil
            ) {
                self.data = data
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
            }

            public struct Data: Hashable, Codable, Sendable {
                public var id: String

                public var type: `Type`

                public init(
                    id: String,
                    type: `Type`
                ) {
                    self.id = id
                    self.type = type
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }

                public enum `Type`: String, Hashable, Codable, Sendable {
                    case appCategories
                }
            }
        }
    }
}

// swiftlint:enable all
