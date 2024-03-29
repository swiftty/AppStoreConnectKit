// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.Subscriptions.ById.OfferCodes {
    public struct GET: Endpoint {
        public typealias Response = SubscriptionOfferCodesResponse

        public var path: String {
            "/v1/subscriptions/\(id)/offerCodes"
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
                URLQueryItem(name: "fields[subscriptionOfferCodeCustomCodes]",
                             value: parameters.fields[.subscriptionOfferCodeCustomCodes]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[subscriptionOfferCodeOneTimeUseCodes]",
                             value: parameters.fields[.subscriptionOfferCodeOneTimeUseCodes]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[subscriptionOfferCodePrices]",
                             value: parameters.fields[.subscriptionOfferCodePrices]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[subscriptionOfferCodes]",
                             value: parameters.fields[.subscriptionOfferCodes]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[subscriptions]",
                             value: parameters.fields[.subscriptions]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[territory]",
                             value: parameters.filter[.territory]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit[customCodes]",
                             value: parameters.limit[.customCodes].map { "\($0)" }),
                URLQueryItem(name: "limit[oneTimeUseCodes]",
                             value: parameters.limit[.oneTimeUseCodes].map { "\($0)" }),
                URLQueryItem(name: "limit[prices]",
                             value: parameters.limit[.prices].map { "\($0)" }),
                URLQueryItem(name: "limit",
                             value: parameters.limit[].map { "\($0)" })
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, List of SubscriptionOfferCodes as `SubscriptionOfferCodesResponse`
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
                return try jsonDecoder.decode(SubscriptionOfferCodesResponse.self, from: data)

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

extension V1.Subscriptions.ById.OfferCodes.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        public var filter: Filter = Filter()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        /// maximum resources per page
        public var limit: Limit = Limit()

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum SubscriptionOfferCodeCustomCodes: Hashable, Codable, RawRepresentable {
                case active
                case createdDate
                case customCode
                case expirationDate
                case numberOfCodes
                case offerCode
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .active: return "active"
                    case .createdDate: return "createdDate"
                    case .customCode: return "customCode"
                    case .expirationDate: return "expirationDate"
                    case .numberOfCodes: return "numberOfCodes"
                    case .offerCode: return "offerCode"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "active": self = .active
                    case "createdDate": self = .createdDate
                    case "customCode": self = .customCode
                    case "expirationDate": self = .expirationDate
                    case "numberOfCodes": self = .numberOfCodes
                    case "offerCode": self = .offerCode
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum SubscriptionOfferCodeOneTimeUseCodes: Hashable, Codable, RawRepresentable {
                case active
                case createdDate
                case expirationDate
                case numberOfCodes
                case offerCode
                case values
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .active: return "active"
                    case .createdDate: return "createdDate"
                    case .expirationDate: return "expirationDate"
                    case .numberOfCodes: return "numberOfCodes"
                    case .offerCode: return "offerCode"
                    case .values: return "values"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "active": self = .active
                    case "createdDate": self = .createdDate
                    case "expirationDate": self = .expirationDate
                    case "numberOfCodes": self = .numberOfCodes
                    case "offerCode": self = .offerCode
                    case "values": self = .values
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum SubscriptionOfferCodePrices: Hashable, Codable, RawRepresentable {
                case subscriptionPricePoint
                case territory
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .subscriptionPricePoint: return "subscriptionPricePoint"
                    case .territory: return "territory"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "subscriptionPricePoint": self = .subscriptionPricePoint
                    case "territory": self = .territory
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum SubscriptionOfferCodes: Hashable, Codable, RawRepresentable {
                case active
                case customCodes
                case customerEligibilities
                case duration
                case name
                case numberOfPeriods
                case offerEligibility
                case offerMode
                case oneTimeUseCodes
                case prices
                case subscription
                case totalNumberOfCodes
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .active: return "active"
                    case .customCodes: return "customCodes"
                    case .customerEligibilities: return "customerEligibilities"
                    case .duration: return "duration"
                    case .name: return "name"
                    case .numberOfPeriods: return "numberOfPeriods"
                    case .offerEligibility: return "offerEligibility"
                    case .offerMode: return "offerMode"
                    case .oneTimeUseCodes: return "oneTimeUseCodes"
                    case .prices: return "prices"
                    case .subscription: return "subscription"
                    case .totalNumberOfCodes: return "totalNumberOfCodes"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "active": self = .active
                    case "customCodes": self = .customCodes
                    case "customerEligibilities": self = .customerEligibilities
                    case "duration": self = .duration
                    case "name": self = .name
                    case "numberOfPeriods": self = .numberOfPeriods
                    case "offerEligibility": self = .offerEligibility
                    case "offerMode": self = .offerMode
                    case "oneTimeUseCodes": self = .oneTimeUseCodes
                    case "prices": self = .prices
                    case "subscription": self = .subscription
                    case "totalNumberOfCodes": self = .totalNumberOfCodes
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
                case subscriptionAvailability
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
                    case .subscriptionAvailability: return "subscriptionAvailability"
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
                    case "subscriptionAvailability": self = .subscriptionAvailability
                    case "subscriptionLocalizations": self = .subscriptionLocalizations
                    case "subscriptionPeriod": self = .subscriptionPeriod
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type subscriptionOfferCodeCustomCodes
                public static var subscriptionOfferCodeCustomCodes: Relation<[SubscriptionOfferCodeCustomCodes]?> {
                    .init(key: "fields[subscriptionOfferCodeCustomCodes]")
                }

                /// the fields to include for returned resources of type subscriptionOfferCodeOneTimeUseCodes
                public static var subscriptionOfferCodeOneTimeUseCodes: Relation<[SubscriptionOfferCodeOneTimeUseCodes]?> {
                    .init(key: "fields[subscriptionOfferCodeOneTimeUseCodes]")
                }

                /// the fields to include for returned resources of type subscriptionOfferCodePrices
                public static var subscriptionOfferCodePrices: Relation<[SubscriptionOfferCodePrices]?> {
                    .init(key: "fields[subscriptionOfferCodePrices]")
                }

                /// the fields to include for returned resources of type subscriptionOfferCodes
                public static var subscriptionOfferCodes: Relation<[SubscriptionOfferCodes]?> {
                    .init(key: "fields[subscriptionOfferCodes]")
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

            public struct Relation<T>: Hashable {
                /// filter by territory
                public static var territory: Relation<[String]?> {
                    .init(key: "filter[territory]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Include: Hashable, Codable, RawRepresentable {
            case customCodes
            case oneTimeUseCodes
            case prices
            case subscription
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .customCodes: return "customCodes"
                case .oneTimeUseCodes: return "oneTimeUseCodes"
                case .prices: return "prices"
                case .subscription: return "subscription"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "customCodes": self = .customCodes
                case "oneTimeUseCodes": self = .oneTimeUseCodes
                case "prices": self = .prices
                case "subscription": self = .subscription
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
                /// maximum number of related customCodes returned (when they are included)
                public static var customCodes: Relation<Int?> {
                    .init(key: "limit[customCodes]")
                }

                /// maximum number of related oneTimeUseCodes returned (when they are included)
                public static var oneTimeUseCodes: Relation<Int?> {
                    .init(key: "limit[oneTimeUseCodes]")
                }

                /// maximum number of related prices returned (when they are included)
                public static var prices: Relation<Int?> {
                    .init(key: "limit[prices]")
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
