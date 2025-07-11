// autogenerated

// swiftlint:disable all
import Foundation

public struct CiExecutionProgress: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
    public static var complete: Self {
        .init(rawValue: "COMPLETE")
    }

    public static var pending: Self {
        .init(rawValue: "PENDING")
    }

    public static var running: Self {
        .init(rawValue: "RUNNING")
    }

    public var description: String {
        rawValue
    }

    public var rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }
}

// swiftlint:enable all
