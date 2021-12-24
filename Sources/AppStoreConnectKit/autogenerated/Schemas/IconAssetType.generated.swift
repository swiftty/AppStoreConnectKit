// autogenerated

// swiftlint:disable all
import Foundation

public enum IconAssetType: Hashable, Codable, RawRepresentable {
    case appStore
    case messagesAppStore
    case tvOSHomeScreen
    case tvOSTopShelf
    case watchAppStore
    case unknown(String)

    public var rawValue: String {
        switch self {
        case .appStore: return "APP_STORE"
        case .messagesAppStore: return "MESSAGES_APP_STORE"
        case .tvOSHomeScreen: return "TV_OS_HOME_SCREEN"
        case .tvOSTopShelf: return "TV_OS_TOP_SHELF"
        case .watchAppStore: return "WATCH_APP_STORE"
        case .unknown(let rawValue): return rawValue
        }
    }

    public init(rawValue: String) {
        switch rawValue {
        case "APP_STORE": self = .appStore
        case "MESSAGES_APP_STORE": self = .messagesAppStore
        case "TV_OS_HOME_SCREEN": self = .tvOSHomeScreen
        case "TV_OS_TOP_SHELF": self = .tvOSTopShelf
        case "WATCH_APP_STORE": self = .watchAppStore
        default: self = .unknown(rawValue)
        }
    }
}

// swiftlint:enable all
