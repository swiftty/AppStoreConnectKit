// autogenerated

// swiftlint:disable all
import Foundation

public struct BetaAppReviewDetailUpdateRequest: Hashable, Codable {
    public var data: Data

    public init(data: Data) {
        self.data = data
    }

    private enum CodingKeys: String, CodingKey {
        case data
    }

    public struct Data: Hashable, Codable {
        public var id: String

        public var type: `Type`

        public var attributes: Attributes?

        public init(
            id: String,
            type: `Type`,
            attributes: Attributes? = nil
        ) {
            self.id = id
            self.type = type
            self.attributes = attributes
        }

        private enum CodingKeys: String, CodingKey {
            case id
            case type
            case attributes
        }

        public enum `Type`: String, Hashable, Codable {
            case betaAppReviewDetails
        }

        public struct Attributes: Hashable, Codable {
            public var contactEmail: String?

            public var contactFirstName: String?

            public var contactLastName: String?

            public var contactPhone: String?

            public var demoAccountName: String?

            public var demoAccountPassword: String?

            public var demoAccountRequired: Bool?

            public var notes: String?

            public init(
                contactEmail: String? = nil,
                contactFirstName: String? = nil,
                contactLastName: String? = nil,
                contactPhone: String? = nil,
                demoAccountName: String? = nil,
                demoAccountPassword: String? = nil,
                demoAccountRequired: Bool? = nil,
                notes: String? = nil
            ) {
                self.contactEmail = contactEmail
                self.contactFirstName = contactFirstName
                self.contactLastName = contactLastName
                self.contactPhone = contactPhone
                self.demoAccountName = demoAccountName
                self.demoAccountPassword = demoAccountPassword
                self.demoAccountRequired = demoAccountRequired
                self.notes = notes
            }

            private enum CodingKeys: String, CodingKey {
                case contactEmail
                case contactFirstName
                case contactLastName
                case contactPhone
                case demoAccountName
                case demoAccountPassword
                case demoAccountRequired
                case notes
            }
        }
    }
}

// swiftlint:enable all
