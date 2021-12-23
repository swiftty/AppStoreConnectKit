// autogenerated

// swiftlint:disable all
import Foundation

public struct CertificateCreateRequest: Hashable, Codable {
    public var data: Data

    public init(data: Data) {
        self.data = data
    }

    private enum CodingKeys: String, CodingKey {
        case data
    }

    public struct Data: Hashable, Codable {
        public var type: `Type`

        public var attributes: Attributes

        public init(
            type: `Type`,
            attributes: Attributes
        ) {
            self.type = type
            self.attributes = attributes
        }

        private enum CodingKeys: String, CodingKey {
            case type
            case attributes
        }

        public enum `Type`: String, Hashable, Codable {
            case certificates
        }

        public struct Attributes: Hashable, Codable {
            public var certificateType: CertificateType

            public var csrContent: String

            public init(
                certificateType: CertificateType,
                csrContent: String
            ) {
                self.certificateType = certificateType
                self.csrContent = csrContent
            }

            private enum CodingKeys: String, CodingKey {
                case certificateType
                case csrContent
            }
        }
    }
}

// swiftlint:enable all