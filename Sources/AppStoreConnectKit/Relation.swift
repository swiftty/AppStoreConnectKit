import Foundation

public struct Relation<Owner, Value>: Hashable {
    let key: String

    public func hash(into hasher: inout Hasher) {
        hasher.combine(key)
    }
}

