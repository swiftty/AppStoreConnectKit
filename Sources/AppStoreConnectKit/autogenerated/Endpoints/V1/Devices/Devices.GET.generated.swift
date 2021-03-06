// autogenerated

// swiftlint:disable all
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension V1.Devices {
    public struct GET: Endpoint {
        public typealias Response = DevicesResponse

        public var path: String {
            "/v1/devices"
        }

        public var parameters: Parameters = Parameters()

        public init() {

        }

        public func request(with baseURL: URL) throws -> URLRequest? {
            var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
            components?.path = path

            components?.queryItems = [
                URLQueryItem(name: "fields[devices]",
                             value: parameters.fields[.devices]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[id]",
                             value: parameters.filter[.id]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[name]",
                             value: parameters.filter[.name]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[platform]",
                             value: parameters.filter[.platform]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[status]",
                             value: parameters.filter[.status]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "filter[udid]",
                             value: parameters.filter[.udid]?.map { "\($0)" }.joined(separator: ",")),
                URLQueryItem(name: "limit",
                             value: parameters.limit.map { "\($0)" }),
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

        /// - Returns: **200**, List of Devices as `DevicesResponse`
        /// - Throws: **400**, Parameter error(s) as `ErrorResponse`
        /// - Throws: **403**, Forbidden error as `ErrorResponse`
        public static func response(from data: Data, urlResponse: HTTPURLResponse) throws -> Response {
            var jsonDecoder: JSONDecoder {
                let decoder = JSONDecoder()
                return decoder
            }

            switch urlResponse.statusCode {
            case 200:
                return try jsonDecoder.decode(DevicesResponse.self, from: data)

            case 400:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            case 403:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)

            default:
                throw try jsonDecoder.decode(ErrorResponse.self, from: data)
            }
        }
    }
}

extension V1.Devices.GET {
    public struct Parameters: Hashable {
        public var fields: Fields = Fields()

        public var filter: Filter = Filter()

        /// maximum resources per page
        public var limit: Int?

        /// comma-separated list of sort expressions; resources will be sorted as specified
        public var sort: [Sort]?

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

        public struct Filter: Hashable {
            public subscript <T: Hashable>(_ relation: Relation<T>) -> T {
                get { values[relation]?.base as! T }
                set { values[relation] = AnyHashable(newValue) }
            }

            private var values: [AnyHashable: AnyHashable] = [:]

            public enum Platform: Hashable, Codable, RawRepresentable {
                case iOS
                case macOS
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .iOS: return "IOS"
                    case .macOS: return "MAC_OS"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "IOS": self = .iOS
                    case "MAC_OS": self = .macOS
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public enum Status: Hashable, Codable, RawRepresentable {
                case disabled
                case enabled
                case unknown(String)

                public var rawValue: String {
                    switch self {
                    case .disabled: return "DISABLED"
                    case .enabled: return "ENABLED"
                    case .unknown(let rawValue): return rawValue
                    }
                }

                public init(rawValue: String) {
                    switch rawValue {
                    case "DISABLED": self = .disabled
                    case "ENABLED": self = .enabled
                    default: self = .unknown(rawValue)
                    }
                }
            }

            public struct Relation<T>: Hashable {
                /// filter by id(s)
                public static var id: Relation<[String]?> {
                    .init(key: "filter[id]")
                }

                /// filter by attribute 'name'
                public static var name: Relation<[String]?> {
                    .init(key: "filter[name]")
                }

                /// filter by attribute 'platform'
                public static var platform: Relation<[Platform]?> {
                    .init(key: "filter[platform]")
                }

                /// filter by attribute 'status'
                public static var status: Relation<[Status]?> {
                    .init(key: "filter[status]")
                }

                /// filter by attribute 'udid'
                public static var udid: Relation<[String]?> {
                    .init(key: "filter[udid]")
                }

                internal let key: String

                public func hash(into hasher: inout Hasher) {
                    hasher.combine(key)
                }
            }
        }

        public enum Sort: Hashable, Codable, RawRepresentable {
            case id
            case idDesc
            case name
            case nameDesc
            case platform
            case platformDesc
            case status
            case statusDesc
            case udid
            case udidDesc
            case unknown(String)

            public var rawValue: String {
                switch self {
                case .id: return "id"
                case .idDesc: return "-id"
                case .name: return "name"
                case .nameDesc: return "-name"
                case .platform: return "platform"
                case .platformDesc: return "-platform"
                case .status: return "status"
                case .statusDesc: return "-status"
                case .udid: return "udid"
                case .udidDesc: return "-udid"
                case .unknown(let rawValue): return rawValue
                }
            }

            public init(rawValue: String) {
                switch rawValue {
                case "id": self = .id
                case "-id": self = .idDesc
                case "name": self = .name
                case "-name": self = .nameDesc
                case "platform": self = .platform
                case "-platform": self = .platformDesc
                case "status": self = .status
                case "-status": self = .statusDesc
                case "udid": self = .udid
                case "-udid": self = .udidDesc
                default: self = .unknown(rawValue)
                }
            }
        }
    }
}

// swiftlint:enable all
