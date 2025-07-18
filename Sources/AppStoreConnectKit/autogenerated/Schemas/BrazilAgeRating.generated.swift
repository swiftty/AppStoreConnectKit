// autogenerated

// swiftlint:disable all
import Foundation

public struct BrazilAgeRating: Hashable, Codable, RawRepresentable, CustomStringConvertible, Sendable {
    public static var eighteen: Self {
        .init(rawValue: "EIGHTEEN")
    }

    public static var fourteen: Self {
        .init(rawValue: "FOURTEEN")
    }

    public static var l: Self {
        .init(rawValue: "L")
    }

    public static var sixteen: Self {
        .init(rawValue: "SIXTEEN")
    }

    public static var ten: Self {
        .init(rawValue: "TEN")
    }

    public static var twelve: Self {
        .init(rawValue: "TWELVE")
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
