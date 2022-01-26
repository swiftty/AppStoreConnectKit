// autogenerated

// swiftlint:disable all
import Foundation

public struct AppPreviewSetResponse: Hashable, Codable {
    public var data: AppPreviewSet

    public var included: [Included]?

    public var links: DocumentLinks

    public init(
        data: AppPreviewSet,
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
        case appStoreVersionLocalization(AppStoreVersionLocalization)
        case appCustomProductPageLocalization(AppCustomProductPageLocalization)
        case appStoreVersionExperimentTreatmentLocalization(AppStoreVersionExperimentTreatmentLocalization)
        case appPreview(AppPreview)

        public init(from decoder: Decoder) throws {
            self = try {
                var lastError: Error!
                do {
                    return .appStoreVersionLocalization(try AppStoreVersionLocalization(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .appCustomProductPageLocalization(try AppCustomProductPageLocalization(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .appStoreVersionExperimentTreatmentLocalization(try AppStoreVersionExperimentTreatmentLocalization(from: decoder))
                } catch {
                    lastError = error
                }
                do {
                    return .appPreview(try AppPreview(from: decoder))
                } catch {
                    lastError = error
                }
                throw lastError
            }()
        }

        public func encode(to encoder: Encoder) throws {
            switch self {
            case .appStoreVersionLocalization(let value):
                try value.encode(to: encoder)

            case .appCustomProductPageLocalization(let value):
                try value.encode(to: encoder)

            case .appStoreVersionExperimentTreatmentLocalization(let value):
                try value.encode(to: encoder)

            case .appPreview(let value):
                try value.encode(to: encoder)
            }
        }
    }
}

// swiftlint:enable all
