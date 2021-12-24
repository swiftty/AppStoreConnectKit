// autogenerated

// swiftlint:disable all
import Foundation

public enum AppClipAction: Hashable, Codable, RawRepresentable {
    case open
    case play
    case view
    case unknown(String)

    public var rawValue: String {
        switch self {
        case .open: return "OPEN"
        case .play: return "PLAY"
        case .view: return "VIEW"
        case .unknown(let rawValue): return rawValue
        }
    }

    public init(rawValue: String) {
        switch rawValue {
        case "OPEN": self = .open
        case "PLAY": self = .play
        case "VIEW": self = .view
        default: self = .unknown(rawValue)
        }
    }
}

// swiftlint:enable all
