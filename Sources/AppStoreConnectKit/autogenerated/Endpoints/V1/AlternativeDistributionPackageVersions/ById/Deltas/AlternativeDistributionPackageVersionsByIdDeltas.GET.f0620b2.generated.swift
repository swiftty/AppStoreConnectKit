// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.AlternativeDistributionPackageVersions.ById.Deltas {
    public struct GET: Endpoint {
        public typealias Response = AlternativeDistributionPackageDeltasResponse

        public var path: String {
            "/v1/alternativeDistributionPackageVersions/\(id)/deltas"
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
                URLQueryItem(name: "fields[alternativeDistributionPackageDeltas]",
                             value: parameters.fields[.alternativeDistributionPackageDeltas]?.map { "\($0)" }.joined(separator: ",")),
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

        /// - Returns: **200**, List of AlternativeDistributionPackageDeltas as `AlternativeDistributionPackageDeltasResponse`
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
                return try jsonDecoder.decode(AlternativeDistributionPackageDeltasResponse.self, from: data)

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

extension V1.AlternativeDistributionPackageVersions.ById.Deltas.GET {
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

            public struct AlternativeDistributionPackageDeltas: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
                public static var alternativeDistributionKeyBlob: Self {
                    .init(rawValue: "alternativeDistributionKeyBlob")
                }

                public static var fileChecksum: Self {
                    .init(rawValue: "fileChecksum")
                }

                public static var url: Self {
                    .init(rawValue: "url")
                }

                public static var urlExpirationDate: Self {
                    .init(rawValue: "urlExpirationDate")
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
                /// the fields to include for returned resources of type alternativeDistributionPackageDeltas
                public static var alternativeDistributionPackageDeltas: Relation<[AlternativeDistributionPackageDeltas]?> {
                    .init(key: "fields[alternativeDistributionPackageDeltas]")
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
