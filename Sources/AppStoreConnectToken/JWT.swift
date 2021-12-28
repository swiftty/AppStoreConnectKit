import Foundation
#if canImport(CryptoKit)
import CryptoKit
#elseif canImport(Crypto)
import Crypto
#endif

/// Overview
/// JSON Web Token (JWT) is an open standard (RFC 7519) that defines a way to securely transmit information.
/// The App Store Connect API requires JWTs to authorize each API request.
/// You create the token, signing it with the private key you downloaded from App Store Connect.
///
/// To generate a signed JWT:
///
/// 1. Create the JWT header.
/// 2. Create the JWT payload.
/// 3. Sign the JWT.
///
/// Include the signed JWT in the authorization header of each App Store Connect API request.
public struct JWT {
    public enum Error: Swift.Error {
        case signingError(Swift.Error)
        case unknownError(Swift.Error)
    }
    public struct Header: Codable {
        /// All JWTs for App Store Connect API must be signed with ES256 encryption
        public let alg = "ES256"
        /// Your private key ID from App Store Connect; for example 2X9R4HXF34.
        public var kid: String
        /// JWT
        public let typ = "JWT"

        private enum CodingKeys: String, CodingKey {
            case alg, kid, typ
        }

        public init(kid: String) {
            self.kid = kid
        }
    }
    public struct Payload: Codable {
        /// Your issuer ID from the API Keys page in App Store Connect; for example, 57246542-96fe-1a63-e053-0824d011072a.
        public var iss: String
        /// The token’s creation time, in UNIX epoch time; for example, 1528407600.
        public var iat: Int
        /// The token’s expiration time in Unix epoch time.
        /// Tokens that expire more than 20 minutes into the future are not valid except for resources listed in Determine the Appropriate Token Lifetime.
        /// https://developer.apple.com/documentation/appstoreconnectapi/generating_tokens_for_api_requests#3878467
        public var exp: Int
        /// appstoreconnect-v1
        public let aud = "appstoreconnect-v1"
        /// A list of operations you want App Store Connect to allow for this token; for example, GET /v1/apps/123. (Optional)
        public var scope: [String]?

        private enum CodingKeys: String, CodingKey {
            case iss, iat, exp, aud, scope
        }

        public init(
            iss: String,
            iat: Int,
            exp: Int,
            scope: [String]? = nil
        ) {
            self.iss = iss
            self.iat = iat
            self.exp = exp
            self.scope = scope
        }
    }

    /// To create a JWT to communicate with the App Store Connect API, use the following fields and values in the header:
    public var header: Header
    /// The JWT payload contains information specific to the App Store Connect APIs, such as issuer ID and expiration time.
    /// Use the following fields and values in the JWT payload:
    public var payload: Payload

    public init(
        keyIdentifier: String,
        issuerIdentifier: String,
        scope: [String]? = nil,
        expiration: TimeInterval,
        from creation: Date = Date()
    ) {
        header = Header(kid: keyIdentifier)
        payload = Payload(
            iss: issuerIdentifier,
            iat: Int(creation.timeIntervalSince1970),
            exp: Int(creation.addingTimeInterval(expiration).timeIntervalSince1970),
            scope: scope
        )
    }

    private func makeDigest() throws -> String {
        let header = try JSONEncoder().encode(header).base64URLEncodedString()
        let payload = try JSONEncoder().encode(payload).base64URLEncodedString()
        return "\(header).\(payload)"
    }

    public func sign(using p8: P8) throws -> String {
        let digest: String
        do {
            digest = try makeDigest()
        } catch {
            throw JWT.Error.unknownError(error)
        }

        do {
            let privateKey = try P256.Signing.PrivateKey(pemRepresentation: p8.content)
            let signature = try privateKey.signature(for: digest.data(using: .utf8)!)
            return "\(digest).\(signature.rawRepresentation.base64URLEncodedString())"
        } catch {
            throw JWT.Error.signingError(error)
        }
    }
}

private extension Data {
    func base64URLEncodedString() -> String {
        let base64 = base64EncodedString()
        return base64
            .replacingOccurrences(of: "=", with: "")
            .replacingOccurrences(of: "+", with: "-")
            .replacingOccurrences(of: "/", with: "_")
    }
}
