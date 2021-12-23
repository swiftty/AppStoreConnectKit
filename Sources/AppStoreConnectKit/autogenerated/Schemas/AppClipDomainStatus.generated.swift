// autogenerated

// swiftlint:disable all
import Foundation

public struct AppClipDomainStatus: Hashable, Codable {
    public var id: String

    public var type: `Type`

    public var attributes: Attributes?

    public var links: ResourceLinks

    public init(
        id: String,
        type: `Type`,
        attributes: Attributes? = nil,
        links: ResourceLinks
    ) {
        self.id = id
        self.type = type
        self.attributes = attributes
        self.links = links
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case attributes
        case links
    }

    public enum `Type`: String, Hashable, Codable {
        case appClipDomainStatuses
    }

    public struct Attributes: Hashable, Codable {
        public var domains: [Domains]?

        public var lastUpdatedDate: String?

        public init(
            domains: [Domains]? = nil,
            lastUpdatedDate: String? = nil
        ) {
            self.domains = domains
            self.lastUpdatedDate = lastUpdatedDate
        }

        private enum CodingKeys: String, CodingKey {
            case domains
            case lastUpdatedDate
        }

        public struct Domains: Hashable, Codable {
            public var domain: String?

            public var errorCode: ErrorCode?

            public var isValid: Bool?

            public var lastUpdatedDate: String?

            public init(
                domain: String? = nil,
                errorCode: ErrorCode? = nil,
                isValid: Bool? = nil,
                lastUpdatedDate: String? = nil
            ) {
                self.domain = domain
                self.errorCode = errorCode
                self.isValid = isValid
                self.lastUpdatedDate = lastUpdatedDate
            }

            private enum CodingKeys: String, CodingKey {
                case domain
                case errorCode
                case isValid
                case lastUpdatedDate
            }

            public enum ErrorCode: String, Hashable, Codable {
                case badHttpResponse = "BAD_HTTP_RESPONSE"
                case badJsonContent = "BAD_JSON_CONTENT"
                case badPkcs7Signature = "BAD_PKCS7_SIGNATURE"
                case cannotReachAasaFile = "CANNOT_REACH_AASA_FILE"
                case dnsError = "DNS_ERROR"
                case insecureRedirectsForbidden = "INSECURE_REDIRECTS_FORBIDDEN"
                case invalidEntitlementMissingSection = "INVALID_ENTITLEMENT_MISSING_SECTION"
                case invalidEntitlementSyntaxError = "INVALID_ENTITLEMENT_SYNTAX_ERROR"
                case invalidEntitlementUnhandledSection = "INVALID_ENTITLEMENT_UNHANDLED_SECTION"
                case invalidEntitlementUnknownId = "INVALID_ENTITLEMENT_UNKNOWN_ID"
                case networkError = "NETWORK_ERROR"
                case networkErrorTemporary = "NETWORK_ERROR_TEMPORARY"
                case otherError = "OTHER_ERROR"
                case timeout = "TIMEOUT"
                case tlsError = "TLS_ERROR"
                case unexpectedError = "UNEXPECTED_ERROR"
            }
        }
    }
}

// swiftlint:enable all