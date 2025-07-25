// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.Subscriptions.ById.PromotedPurchase {
    public struct GET: Endpoint {
        public typealias Response = PromotedPurchaseResponse

        public var path: String {
            "/v1/subscriptions/\(id)/promotedPurchase"
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
                URLQueryItem(name: "fields[inAppPurchases]",
                             value: parameters.fields[.inAppPurchases]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[promotedPurchases]",
                             value: parameters.fields[.promotedPurchases]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "fields[subscriptions]",
                             value: parameters.fields[.subscriptions]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "include",
                             value: parameters.include?.map { "\($0)" }.joined(separator: ","))
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Single PromotedPurchase as `PromotedPurchaseResponse`
        /// - Throws: **400**, Parameter error(s) as `ErrorResponse`
        /// - Throws: **401**, Unauthorized error(s) as `ErrorResponse`
        /// - Throws: **403**, Forbidden error as `ErrorResponse`
        /// - Throws: **404**, Not found error as `ErrorResponse`
        /// - Throws: **429**, Rate limit exceeded error as `ErrorResponse`
        public static func response(from data: Data, urlResponse: HTTPURLResponse) throws -> Response {
            var jsonDecoder: JSONDecoder {
                let decoder = JSONDecoder()
                return decoder
            }

            switch urlResponse.statusCode {
            case 200:
                return try jsonDecoder.decode(PromotedPurchaseResponse.self, from: data)

            case 400:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            case 401:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            case 403:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            case 404:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            case 429:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            default:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)
            }
        }
    }
}

extension V1.Subscriptions.ById.PromotedPurchase.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        /// comma-separated list of relationships to include
        public var include: [Include]?

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public struct InAppPurchases: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var appStoreReviewScreenshot: Self {
                    .init(rawValue: "appStoreReviewScreenshot")
                }

                public static var content: Self {
                    .init(rawValue: "content")
                }

                public static var contentHosting: Self {
                    .init(rawValue: "contentHosting")
                }

                public static var familySharable: Self {
                    .init(rawValue: "familySharable")
                }

                public static var iapPriceSchedule: Self {
                    .init(rawValue: "iapPriceSchedule")
                }

                public static var images: Self {
                    .init(rawValue: "images")
                }

                public static var inAppPurchaseAvailability: Self {
                    .init(rawValue: "inAppPurchaseAvailability")
                }

                public static var inAppPurchaseLocalizations: Self {
                    .init(rawValue: "inAppPurchaseLocalizations")
                }

                public static var inAppPurchaseType: Self {
                    .init(rawValue: "inAppPurchaseType")
                }

                public static var name: Self {
                    .init(rawValue: "name")
                }

                public static var pricePoints: Self {
                    .init(rawValue: "pricePoints")
                }

                public static var productId: Self {
                    .init(rawValue: "productId")
                }

                public static var promotedPurchase: Self {
                    .init(rawValue: "promotedPurchase")
                }

                public static var reviewNote: Self {
                    .init(rawValue: "reviewNote")
                }

                public static var state: Self {
                    .init(rawValue: "state")
                }

                public var description: String {
                    rawValue
                }

                public var rawValue: String

                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
            }

            public struct PromotedPurchases: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var enabled: Self {
                    .init(rawValue: "enabled")
                }

                public static var inAppPurchaseV2: Self {
                    .init(rawValue: "inAppPurchaseV2")
                }

                public static var state: Self {
                    .init(rawValue: "state")
                }

                public static var subscription: Self {
                    .init(rawValue: "subscription")
                }

                public static var visibleForAllUsers: Self {
                    .init(rawValue: "visibleForAllUsers")
                }

                public var description: String {
                    rawValue
                }

                public var rawValue: String

                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
            }

            public struct Subscriptions: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var appStoreReviewScreenshot: Self {
                    .init(rawValue: "appStoreReviewScreenshot")
                }

                public static var familySharable: Self {
                    .init(rawValue: "familySharable")
                }

                public static var group: Self {
                    .init(rawValue: "group")
                }

                public static var groupLevel: Self {
                    .init(rawValue: "groupLevel")
                }

                public static var images: Self {
                    .init(rawValue: "images")
                }

                public static var introductoryOffers: Self {
                    .init(rawValue: "introductoryOffers")
                }

                public static var name: Self {
                    .init(rawValue: "name")
                }

                public static var offerCodes: Self {
                    .init(rawValue: "offerCodes")
                }

                public static var pricePoints: Self {
                    .init(rawValue: "pricePoints")
                }

                public static var prices: Self {
                    .init(rawValue: "prices")
                }

                public static var productId: Self {
                    .init(rawValue: "productId")
                }

                public static var promotedPurchase: Self {
                    .init(rawValue: "promotedPurchase")
                }

                public static var promotionalOffers: Self {
                    .init(rawValue: "promotionalOffers")
                }

                public static var reviewNote: Self {
                    .init(rawValue: "reviewNote")
                }

                public static var state: Self {
                    .init(rawValue: "state")
                }

                public static var subscriptionAvailability: Self {
                    .init(rawValue: "subscriptionAvailability")
                }

                public static var subscriptionLocalizations: Self {
                    .init(rawValue: "subscriptionLocalizations")
                }

                public static var subscriptionPeriod: Self {
                    .init(rawValue: "subscriptionPeriod")
                }

                public static var winBackOffers: Self {
                    .init(rawValue: "winBackOffers")
                }

                public var description: String {
                    rawValue
                }

                public var rawValue: String

                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type inAppPurchases
                public static var inAppPurchases: Relation<[InAppPurchases]?> {
                    .init(key: "fields[inAppPurchases]")
                }

                /// the fields to include for returned resources of type promotedPurchases
                public static var promotedPurchases: Relation<[PromotedPurchases]?> {
                    .init(key: "fields[promotedPurchases]")
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

        public struct Include: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
            public static var inAppPurchaseV2: Self {
                .init(rawValue: "inAppPurchaseV2")
            }

            public static var subscription: Self {
                .init(rawValue: "subscription")
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
}

// swiftlint:enable all
