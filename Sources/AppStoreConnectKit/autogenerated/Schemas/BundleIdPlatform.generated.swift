// autogenerated

// swiftlint:disable all
import Foundation

public enum BundleIdPlatform: Hashable, Codable, RawRepresentable {
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

// swiftlint:enable all
