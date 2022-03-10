// autogenerated

// swiftlint:disable all
import Foundation

public struct AppStoreVersionExperimentResponse: Hashable, Codable {
    public var data: AppStoreVersionExperiment

    public var included: [Included]?

    public var links: DocumentLinks

    public init(
        data: AppStoreVersionExperiment,
        included: [Included]? = nil,
        links: DocumentLinks
    ) {
        self.data = data
        self.included = included
        self.links = links
    }

    private enum CodingKeys: String, CodingKey {
        case data
        case included
        case links
    }

    public enum Included: Hashable, Codable {
        case appStoreVersion(AppStoreVersion)
        case appStoreVersionExperimentTreatment(AppStoreVersionExperimentTreatment)

        public init(from decoder: Decoder) throws {
            self = try {
                var lastError: Error!
                do {
                    return .appStoreVersion(try AppStoreVersion(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .appStoreVersionExperimentTreatment(try AppStoreVersionExperimentTreatment(from: decoder))
                } catch {
                    lastError = error
                }
                throw lastError
            }()
        }

        public func encode(to encoder: Encoder) throws {
            switch self {
            case .appStoreVersion(let value):
                try value.encode(to: encoder)

            case .appStoreVersionExperimentTreatment(let value):
                try value.encode(to: encoder)
            }
        }
    }
}

// swiftlint:enable all