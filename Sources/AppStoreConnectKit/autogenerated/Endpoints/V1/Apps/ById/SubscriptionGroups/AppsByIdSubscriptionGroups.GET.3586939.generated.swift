// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.Apps.ById.SubscriptionGroups {
    public struct GET: Endpoint {
        public typealias Response = SubscriptionGroupsResponse

        public var path: String {
            "/v1/apps/\(id)/subscriptionGroups"
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
                URLQueryItem(name: "fields[subscriptionGroupLocalizations]",
                             value: parameters.fields[.subscriptionGroupLocalizations]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[subscriptionGroups]",
                             value: parameters.fields[.subscriptionGroups]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[subscriptions]",
                             value: parameters.fields[.subscriptions]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[referenceName]",
                             value: parameters.filter[.referenceName]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[subscriptions.state]",
                             value: parameters.filter[.subscriptionsState]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[subscriptionGroupLocalizations]",
                             value: parameters.limit[.subscriptionGroupLocalizations].map { "\($0)" }),
                URLQueryItem(name: "limit[subscriptions]",
                             value: parameters.limit[.subscriptions].map { "\($0)" }),
                URLQueryItem(name: "limit",
                             value: parameters.limit[].map { "\($0)" }),
                URLQueryItem(name: "sort",
                             value: parameters.sort?.map { "\($0)" }.joined(separator: ","))
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, List of SubscriptionGroups as `SubscriptionGroupsResponse`
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
                return try jsonDecoder.decode(SubscriptionGroupsResponse.self, from: data)

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

extension V1.Apps.ById.SubscriptionGroups.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        public var filter: Filter = Filter()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        /// maximum resources per page
        public var limit: Limit = Limit()

        /// comma-separated list of sort expressions; resources will be sorted as specified
        public var sort: [Sort]?

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum SubscriptionGroupLocalizations: Hashable, Codable, RawRepresentable {
                case customAppName
                case locale
                case name
                case state
                case subscriptionGroup
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .customAppName: return "customAppName"
                    case .locale: return "locale"
                    case .name: return "name"
                    case .state: return "state"
                    case .subscriptionGroup: return "subscriptionGroup"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "customAppName": self = .customAppName
                    case "locale": self = .locale
                    case "name": self = .name
                    case "state": self = .state
                    case "subscriptionGroup": self = .subscriptionGroup
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum SubscriptionGroups: Hashable, Codable, RawRepresentable {
                case app
                case referenceName
                case subscriptionGroupLocalizations
                case subscriptions
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .app: return "app"
                    case .referenceName: return "referenceName"
                    case .subscriptionGroupLocalizations: return "subscriptionGroupLocalizations"
                    case .subscriptions: return "subscriptions"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "app": self = .app
                    case "referenceName": self = .referenceName
                    case "subscriptionGroupLocalizations": self = .subscriptionGroupLocalizations
                    case "subscriptions": self = .subscriptions
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum Subscriptions: Hashable, Codable, RawRepresentable {
                case appStoreReviewScreenshot
                case availableInAllTerritories
                case familySharable
                case group
                case groupLevel
                case introductoryOffers
                case name
                case offerCodes
                case pricePoints
                case prices
                case productId
                case promotedPurchase
                case promotionalOffers
                case reviewNote
                case state
                case subscriptionLocalizations
                case subscriptionPeriod
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .appStoreReviewScreenshot: return "appStoreReviewScreenshot"
                    case .availableInAllTerritories: return "availableInAllTerritories"
                    case .familySharable: return "familySharable"
                    case .group: return "group"
                    case .groupLevel: return "groupLevel"
                    case .introductoryOffers: return "introductoryOffers"
                    case .name: return "name"
                    case .offerCodes: return "offerCodes"
                    case .pricePoints: return "pricePoints"
                    case .prices: return "prices"
                    case .productId: return "productId"
                    case .promotedPurchase: return "promotedPurchase"
                    case .promotionalOffers: return "promotionalOffers"
                    case .reviewNote: return "reviewNote"
                    case .state: return "state"
                    case .subscriptionLocalizations: return "subscriptionLocalizations"
                    case .subscriptionPeriod: return "subscriptionPeriod"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "appStoreReviewScreenshot": self = .appStoreReviewScreenshot
                    case "availableInAllTerritories": self = .availableInAllTerritories
                    case "familySharable": self = .familySharable
                    case "group": self = .group
                    case "groupLevel": self = .groupLevel
                    case "introductoryOffers": self = .introductoryOffers
                    case "name": self = .name
                    case "offerCodes": self = .offerCodes
                    case "pricePoints": self = .pricePoints
                    case "prices": self = .prices
                    case "productId": self = .productId
                    case "promotedPurchase": self = .promotedPurchase
                    case "promotionalOffers": self = .promotionalOffers
                    case "reviewNote": self = .reviewNote
                    case "state": self = .state
                    case "subscriptionLocalizations": self = .subscriptionLocalizations
                    case "subscriptionPeriod": self = .subscriptionPeriod
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type subscriptionGroupLocalizations
                public static var subscriptionGroupLocalizations: Relation<[SubscriptionGroupLocalizations]?> {
                    .init(key: "fields[subscriptionGroupLocalizations]")
                }

                /// the fields to include for returned resources of type subscriptionGroups
                public static var subscriptionGroups: Relation<[SubscriptionGroups]?> {
                    .init(key: "fields[subscriptionGroups]")
                }

                /// the fields to include for returned resources of type subscriptions
                public static var subscriptions: Relation<[Subscriptions]?> {
                    .init(key: "fields[subscriptions]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public struct Filter: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum SubscriptionsState: Hashable, Codable, RawRepresentable {
                case approved
                case developerActionNeeded
                case developerRemovedFromSale
                case inReview
                case missingMetadata
                case pendingBinaryApproval
                case readyToSubmit
                case rejected
                case removedFromSale
                case waitingForReview
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .approved: return "APPROVED"
                    case .developerActionNeeded: return "DEVELOPER_ACTION_NEEDED"
                    case .developerRemovedFromSale: return "DEVELOPER_REMOVED_FROM_SALE"
                    case .inReview: return "IN_REVIEW"
                    case .missingMetadata: return "MISSING_METADATA"
                    case .pendingBinaryApproval: return "PENDING_BINARY_APPROVAL"
                    case .readyToSubmit: return "READY_TO_SUBMIT"
                    case .rejected: return "REJECTED"
                    case .removedFromSale: return "REMOVED_FROM_SALE"
                    case .waitingForReview: return "WAITING_FOR_REVIEW"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "APPROVED": self = .approved
                    case "DEVELOPER_ACTION_NEEDED": self = .developerActionNeeded
                    case "DEVELOPER_REMOVED_FROM_SALE": self = .developerRemovedFromSale
                    case "IN_REVIEW": self = .inReview
                    case "MISSING_METADATA": self = .missingMetadata
                    case "PENDING_BINARY_APPROVAL": self = .pendingBinaryApproval
                    case "READY_TO_SUBMIT": self = .readyToSubmit
                    case "REJECTED": self = .rejected
                    case "REMOVED_FROM_SALE": self = .removedFromSale
                    case "WAITING_FOR_REVIEW": self = .waitingForReview
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// filter by attribute 'referenceName'
                public static var referenceName: Relation<[String]?> {
                    .init(key: "filter[referenceName]")
                }

                /// filter by attribute 'subscriptions.state'
                public static var subscriptionsState: Relation<[SubscriptionsState]?> {
                    .init(key: "filter[subscriptions.state]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case subscriptionGroupLocalizations
            case subscriptions
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .subscriptionGroupLocalizations: return "subscriptionGroupLocalizations"
                case .subscriptions: return "subscriptions"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "subscriptionGroupLocalizations": self = .subscriptionGroupLocalizations
                case "subscriptions": self = .subscriptions
                default: self = .unknown(rawValue)
                }
            }
        }

        public struct Limit: Hashable {
            public subscript () -> Int? {
                get { self[Relation<Int?>(key: "limit")] }
                set { self[Relation<Int?>(key: "limit")] = newValue }
            }

            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public struct Relation<T>: Hashable {
                /// maximum number of related subscriptionGroupLocalizations returned (when they are included)
                public static var subscriptionGroupLocalizations: Relation<Int?> {
                    .init(key: "limit[subscriptionGroupLocalizations]")
                }

                /// maximum number of related subscriptions returned (when they are included)
                public static var subscriptions: Relation<Int?> {
                    .init(key: "limit[subscriptions]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Sort: Hashable, Codable, RawRepresentable {
            case referenceName
            case referenceNameDesc
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .referenceName: return "referenceName"
                case .referenceNameDesc: return "-referenceName"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "referenceName": self = .referenceName
                case "-referenceName": self = .referenceNameDesc
                default: self = .unknown(rawValue)
                }
            }
        }
    }
}

// swiftlint:enable all
