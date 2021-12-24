// autogenerated

// swiftlint:disable all
import Foundation

extension V1.Devices.ById {
    public struct GET: Endpoint {
        public typealias Response = DeviceResponse

        public var path: String {
            "/v1/devices/\(id)"
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
                URLQueryItem(name: "fields[devices]",
                             value: parameters.fields[.devices]?.map { "\($0)" }.joined(separator: ","))
            ].filter { $0.value != nil }
            if components?.queryItems?.isEmpty ?? false {
                components?.queryItems = nil
            }

            var urlRequest = components?.url.map { URLRequest(url: $0) }
            urlRequest?.httpMethod = "GET"
            return urlRequest
        }

        /// - Returns: **200**, Single Device as `DeviceResponse`
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
                return try jsonDecoder.decode(DeviceResponse.self, from: data)

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

extension V1.Devices.ById.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        public struct Fields: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum Devices: Hashable, Codable, RawRepresentable {
                case addedDate
                case deviceClass
                case model
                case name
                case platform
                case status
                case udid
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .addedDate: return "addedDate"
                    case .deviceClass: return "deviceClass"
                    case .model: return "model"
                    case .name: return "name"
                    case .platform: return "platform"
                    case .status: return "status"
                    case .udid: return "udid"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "addedDate": self = .addedDate
                    case "deviceClass": self = .deviceClass
                    case "model": self = .model
                    case "name": self = .name
                    case "platform": self = .platform
                    case "status": self = .status
                    case "udid": self = .udid
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// the fields to include for returned resources of type devices
                public static var devices: Relation<[Devices]?> {
                    .init(key: "fields[devices]")
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
