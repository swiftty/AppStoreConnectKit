// autogenerated

// swiftlint:disable all
import Foundation

public struct AppStoreVersion: Hashable, Codable {
    public var id: String

    public var type: `Type`

    public var attributes: Attributes?

    public var relationships: Relationships?

    public var links: ResourceLinks

    public init(
        id: String,
        type: `Type`,
        attributes: Attributes? = nil,
        relationships: Relationships? = nil,
        links: ResourceLinks
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

    public enum `Type`: Hashable, Codable, RawRepresentable {
        case appStoreVersions
        case unknown(String)

        public var rawValue: String {
            switch self {
            case .appStoreVersions: return "appStoreVersions"
            case .unknown(let rawValue): return rawValue
            }
        }

        public init(rawValue: String) {
            switch rawValue {
            case "appStoreVersions": self = .appStoreVersions
            default: self = .unknown(rawValue)
            }
        }
    }

    public struct Attributes: Hashable, Codable {
        public var appStoreState: AppStoreVersionState?

        public var copyright: String?

        public var createdDate: String?

        public var downloadable: Bool?

        public var earliestReleaseDate: String?

        public var platform: Platform?

        public var releaseType: ReleaseType?

        @available(*, deprecated)
        public var usesIdfa: Bool?

        public var versionString: String?

        public init(
            appStoreState: AppStoreVersionState? = nil,
            copyright: String? = nil,
            createdDate: String? = nil,
            downloadable: Bool? = nil,
            earliestReleaseDate: String? = nil,
            platform: Platform? = nil,
            releaseType: ReleaseType? = nil,
            usesIdfa: Bool? = nil,
            versionString: String? = nil
        ) {
            self.appStoreState = appStoreState
            self.copyright = copyright
            self.createdDate = createdDate
            self.downloadable = downloadable
            self.earliestReleaseDate = earliestReleaseDate
            self.platform = platform
            self.releaseType = releaseType
            self.usesIdfa = usesIdfa
            self.versionString = versionString
        }

        private enum CodingKeys: String, CodingKey {
            case appStoreState
            case copyright
            case createdDate
            case downloadable
            case earliestReleaseDate
            case platform
            case releaseType
            case usesIdfa
            case versionString
        }

        public enum ReleaseType: Hashable, Codable, RawRepresentable {
            case afterApproval
            case manual
            case scheduled
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .afterApproval: return "AFTER_APPROVAL"
                case .manual: return "MANUAL"
                case .scheduled: return "SCHEDULED"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "AFTER_APPROVAL": self = .afterApproval
                case "MANUAL": self = .manual
                case "SCHEDULED": self = .scheduled
                default: self = .unknown(rawValue)
                }
            }
        }
    }

    public struct Relationships: Hashable, Codable {
        @available(*, deprecated)
        public var ageRatingDeclaration: AgeRatingDeclaration?

        public var app: App?

        public var appClipDefaultExperience: AppClipDefaultExperience?

        public var appStoreReviewDetail: AppStoreReviewDetail?

        public var appStoreVersionLocalizations: AppStoreVersionLocalizations?

        public var appStoreVersionPhasedRelease: AppStoreVersionPhasedRelease?

        public var appStoreVersionSubmission: AppStoreVersionSubmission?

        public var build: Build?

        public var idfaDeclaration: IdfaDeclaration?

        public var routingAppCoverage: RoutingAppCoverage?

        public init(
            ageRatingDeclaration: AgeRatingDeclaration? = nil,
            app: App? = nil,
            appClipDefaultExperience: AppClipDefaultExperience? = nil,
            appStoreReviewDetail: AppStoreReviewDetail? = nil,
            appStoreVersionLocalizations: AppStoreVersionLocalizations? = nil,
            appStoreVersionPhasedRelease: AppStoreVersionPhasedRelease? = nil,
            appStoreVersionSubmission: AppStoreVersionSubmission? = nil,
            build: Build? = nil,
            idfaDeclaration: IdfaDeclaration? = nil,
            routingAppCoverage: RoutingAppCoverage? = nil
        ) {
            self.ageRatingDeclaration = ageRatingDeclaration
            self.app = app
            self.appClipDefaultExperience = appClipDefaultExperience
            self.appStoreReviewDetail = appStoreReviewDetail
            self.appStoreVersionLocalizations = appStoreVersionLocalizations
            self.appStoreVersionPhasedRelease = appStoreVersionPhasedRelease
            self.appStoreVersionSubmission = appStoreVersionSubmission
            self.build = build
            self.idfaDeclaration = idfaDeclaration
            self.routingAppCoverage = routingAppCoverage
        }

        private enum CodingKeys: String, CodingKey {
            case ageRatingDeclaration
            case app
            case appClipDefaultExperience
            case appStoreReviewDetail
            case appStoreVersionLocalizations
            case appStoreVersionPhasedRelease
            case appStoreVersionSubmission
            case build
            case idfaDeclaration
            case routingAppCoverage
        }

        public struct AgeRatingDeclaration: Hashable, Codable {
            public var data: Data?

            public var links: Links?

            public init(
                data: Data? = nil,
                links: Links? = nil
            ) {
                self.data = data
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
            }

            public struct Data: Hashable, Codable {
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

                public enum `Type`: Hashable, Codable, RawRepresentable {
                    case ageRatingDeclarations
                    case unknown(String)

                    public var rawValue: String {
                        switch self {
                        case .ageRatingDeclarations: return "ageRatingDeclarations"
                        case .unknown(let rawValue): return rawValue
                        }
                    }

                    public init(rawValue: String) {
                        switch rawValue {
                        case "ageRatingDeclarations": self = .ageRatingDeclarations
                        default: self = .unknown(rawValue)
                        }
                    }
                }
            }

            public struct Links: Hashable, Codable {
                public var related: URL?

                public var `self`: URL?

                public init(
                    related: URL? = nil,
                    self _self: URL? = nil
                ) {
                    self.related = related
                    self.`self` = _self
                }

                private enum CodingKeys: String, CodingKey {
                    case related
                    case `self` = "self"
                }
            }
        }

        public struct App: Hashable, Codable {
            public var data: Data?

            public var links: Links?

            public init(
                data: Data? = nil,
                links: Links? = nil
            ) {
                self.data = data
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
            }

            public struct Data: Hashable, Codable {
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

                public enum `Type`: Hashable, Codable, RawRepresentable {
                    case apps
                    case unknown(String)

                    public var rawValue: String {
                        switch self {
                        case .apps: return "apps"
                        case .unknown(let rawValue): return rawValue
                        }
                    }

                    public init(rawValue: String) {
                        switch rawValue {
                        case "apps": self = .apps
                        default: self = .unknown(rawValue)
                        }
                    }
                }
            }

            public struct Links: Hashable, Codable {
                public var related: URL?

                public var `self`: URL?

                public init(
                    related: URL? = nil,
                    self _self: URL? = nil
                ) {
                    self.related = related
                    self.`self` = _self
                }

                private enum CodingKeys: String, CodingKey {
                    case related
                    case `self` = "self"
                }
            }
        }

        public struct AppClipDefaultExperience: Hashable, Codable {
            public var data: Data?

            public var links: Links?

            public init(
                data: Data? = nil,
                links: Links? = nil
            ) {
                self.data = data
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
            }

            public struct Data: Hashable, Codable {
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

                public enum `Type`: Hashable, Codable, RawRepresentable {
                    case appClipDefaultExperiences
                    case unknown(String)

                    public var rawValue: String {
                        switch self {
                        case .appClipDefaultExperiences: return "appClipDefaultExperiences"
                        case .unknown(let rawValue): return rawValue
                        }
                    }

                    public init(rawValue: String) {
                        switch rawValue {
                        case "appClipDefaultExperiences": self = .appClipDefaultExperiences
                        default: self = .unknown(rawValue)
                        }
                    }
                }
            }

            public struct Links: Hashable, Codable {
                public var related: URL?

                public var `self`: URL?

                public init(
                    related: URL? = nil,
                    self _self: URL? = nil
                ) {
                    self.related = related
                    self.`self` = _self
                }

                private enum CodingKeys: String, CodingKey {
                    case related
                    case `self` = "self"
                }
            }
        }

        public struct AppStoreReviewDetail: Hashable, Codable {
            public var data: Data?

            public var links: Links?

            public init(
                data: Data? = nil,
                links: Links? = nil
            ) {
                self.data = data
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
            }

            public struct Data: Hashable, Codable {
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

                public enum `Type`: Hashable, Codable, RawRepresentable {
                    case appStoreReviewDetails
                    case unknown(String)

                    public var rawValue: String {
                        switch self {
                        case .appStoreReviewDetails: return "appStoreReviewDetails"
                        case .unknown(let rawValue): return rawValue
                        }
                    }

                    public init(rawValue: String) {
                        switch rawValue {
                        case "appStoreReviewDetails": self = .appStoreReviewDetails
                        default: self = .unknown(rawValue)
                        }
                    }
                }
            }

            public struct Links: Hashable, Codable {
                public var related: URL?

                public var `self`: URL?

                public init(
                    related: URL? = nil,
                    self _self: URL? = nil
                ) {
                    self.related = related
                    self.`self` = _self
                }

                private enum CodingKeys: String, CodingKey {
                    case related
                    case `self` = "self"
                }
            }
        }

        public struct AppStoreVersionLocalizations: Hashable, Codable {
            public var data: [Data]?

            public var links: Links?

            public var meta: PagingInformation?

            public init(
                data: [Data]? = nil,
                links: Links? = nil,
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

            public struct Data: Hashable, Codable {
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

                public enum `Type`: Hashable, Codable, RawRepresentable {
                    case appStoreVersionLocalizations
                    case unknown(String)

                    public var rawValue: String {
                        switch self {
                        case .appStoreVersionLocalizations: return "appStoreVersionLocalizations"
                        case .unknown(let rawValue): return rawValue
                        }
                    }

                    public init(rawValue: String) {
                        switch rawValue {
                        case "appStoreVersionLocalizations": self = .appStoreVersionLocalizations
                        default: self = .unknown(rawValue)
                        }
                    }
                }
            }

            public struct Links: Hashable, Codable {
                public var related: URL?

                public var `self`: URL?

                public init(
                    related: URL? = nil,
                    self _self: URL? = nil
                ) {
                    self.related = related
                    self.`self` = _self
                }

                private enum CodingKeys: String, CodingKey {
                    case related
                    case `self` = "self"
                }
            }
        }

        public struct AppStoreVersionPhasedRelease: Hashable, Codable {
            public var data: Data?

            public var links: Links?

            public init(
                data: Data? = nil,
                links: Links? = nil
            ) {
                self.data = data
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
            }

            public struct Data: Hashable, Codable {
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

                public enum `Type`: Hashable, Codable, RawRepresentable {
                    case appStoreVersionPhasedReleases
                    case unknown(String)

                    public var rawValue: String {
                        switch self {
                        case .appStoreVersionPhasedReleases: return "appStoreVersionPhasedReleases"
                        case .unknown(let rawValue): return rawValue
                        }
                    }

                    public init(rawValue: String) {
                        switch rawValue {
                        case "appStoreVersionPhasedReleases": self = .appStoreVersionPhasedReleases
                        default: self = .unknown(rawValue)
                        }
                    }
                }
            }

            public struct Links: Hashable, Codable {
                public var related: URL?

                public var `self`: URL?

                public init(
                    related: URL? = nil,
                    self _self: URL? = nil
                ) {
                    self.related = related
                    self.`self` = _self
                }

                private enum CodingKeys: String, CodingKey {
                    case related
                    case `self` = "self"
                }
            }
        }

        public struct AppStoreVersionSubmission: Hashable, Codable {
            public var data: Data?

            public var links: Links?

            public init(
                data: Data? = nil,
                links: Links? = nil
            ) {
                self.data = data
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
            }

            public struct Data: Hashable, Codable {
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

                public enum `Type`: Hashable, Codable, RawRepresentable {
                    case appStoreVersionSubmissions
                    case unknown(String)

                    public var rawValue: String {
                        switch self {
                        case .appStoreVersionSubmissions: return "appStoreVersionSubmissions"
                        case .unknown(let rawValue): return rawValue
                        }
                    }

                    public init(rawValue: String) {
                        switch rawValue {
                        case "appStoreVersionSubmissions": self = .appStoreVersionSubmissions
                        default: self = .unknown(rawValue)
                        }
                    }
                }
            }

            public struct Links: Hashable, Codable {
                public var related: URL?

                public var `self`: URL?

                public init(
                    related: URL? = nil,
                    self _self: URL? = nil
                ) {
                    self.related = related
                    self.`self` = _self
                }

                private enum CodingKeys: String, CodingKey {
                    case related
                    case `self` = "self"
                }
            }
        }

        public struct Build: Hashable, Codable {
            public var data: Data?

            public var links: Links?

            public init(
                data: Data? = nil,
                links: Links? = nil
            ) {
                self.data = data
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
            }

            public struct Data: Hashable, Codable {
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

                public enum `Type`: Hashable, Codable, RawRepresentable {
                    case builds
                    case unknown(String)

                    public var rawValue: String {
                        switch self {
                        case .builds: return "builds"
                        case .unknown(let rawValue): return rawValue
                        }
                    }

                    public init(rawValue: String) {
                        switch rawValue {
                        case "builds": self = .builds
                        default: self = .unknown(rawValue)
                        }
                    }
                }
            }

            public struct Links: Hashable, Codable {
                public var related: URL?

                public var `self`: URL?

                public init(
                    related: URL? = nil,
                    self _self: URL? = nil
                ) {
                    self.related = related
                    self.`self` = _self
                }

                private enum CodingKeys: String, CodingKey {
                    case related
                    case `self` = "self"
                }
            }
        }

        public struct IdfaDeclaration: Hashable, Codable {
            public var data: Data?

            public var links: Links?

            public init(
                data: Data? = nil,
                links: Links? = nil
            ) {
                self.data = data
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
            }

            public struct Data: Hashable, Codable {
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

                public enum `Type`: Hashable, Codable, RawRepresentable {
                    case idfaDeclarations
                    case unknown(String)

                    public var rawValue: String {
                        switch self {
                        case .idfaDeclarations: return "idfaDeclarations"
                        case .unknown(let rawValue): return rawValue
                        }
                    }

                    public init(rawValue: String) {
                        switch rawValue {
                        case "idfaDeclarations": self = .idfaDeclarations
                        default: self = .unknown(rawValue)
                        }
                    }
                }
            }

            public struct Links: Hashable, Codable {
                public var related: URL?

                public var `self`: URL?

                public init(
                    related: URL? = nil,
                    self _self: URL? = nil
                ) {
                    self.related = related
                    self.`self` = _self
                }

                private enum CodingKeys: String, CodingKey {
                    case related
                    case `self` = "self"
                }
            }
        }

        public struct RoutingAppCoverage: Hashable, Codable {
            public var data: Data?

            public var links: Links?

            public init(
                data: Data? = nil,
                links: Links? = nil
            ) {
                self.data = data
                self.links = links
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
            }

            public struct Data: Hashable, Codable {
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

                public enum `Type`: Hashable, Codable, RawRepresentable {
                    case routingAppCoverages
                    case unknown(String)

                    public var rawValue: String {
                        switch self {
                        case .routingAppCoverages: return "routingAppCoverages"
                        case .unknown(let rawValue): return rawValue
                        }
                    }

                    public init(rawValue: String) {
                        switch rawValue {
                        case "routingAppCoverages": self = .routingAppCoverages
                        default: self = .unknown(rawValue)
                        }
                    }
                }
            }

            public struct Links: Hashable, Codable {
                public var related: URL?

                public var `self`: URL?

                public init(
                    related: URL? = nil,
                    self _self: URL? = nil
                ) {
                    self.related = related
                    self.`self` = _self
                }

                private enum CodingKeys: String, CodingKey {
                    case related
                    case `self` = "self"
                }
            }
        }
    }
}

// swiftlint:enable all
