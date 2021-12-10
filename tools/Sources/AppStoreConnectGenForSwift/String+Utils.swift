import Foundation

extension String {
    func camelcased() -> String {
        isSnakecase
            ? components(separatedBy: "_")
                .map { $0.lowercased() }
                .map { $0.capitalized }
                .map { reservedNames[$0] ?? $0 }
                .joined(separator: "")
            : self
    }

    func upperInitialLetter() -> String {
        String(self[startIndex]).uppercased() + dropFirst()
    }

    func lowerInitialLetter() -> String {
        String(self[startIndex]).lowercased() + dropFirst()
    }

    private var isSnakecase: Bool {
        contains("_") || allSatisfy {
            $0.isUppercase || $0 == "_"
        }
    }
}

extension String {
    func indent(to spaces: Int) -> String {
        guard spaces > 0 else { return self }
        let space = Array(repeating: " ", count: spaces)
            .joined(separator: "")
        return self
            .components(separatedBy: "\n")
            .map { $0.isEmpty ? "" : "\(space)\($0)" }
            .joined(separator: "\n")
    }
}

extension String {
    func cleaned() -> String {
        self
            .components(separatedBy: "\n")
            .map { $0.allSatisfy(\.isWhitespace) ? "" : $0 }
            .joined(separator: "\n")
    }
}

private let reservedNames: [String: String] = [
    "Os": "OS",
    "Ios": "iOS",
    "Macos": "MacOS",
    "Tvos": "TvOS",
    "Watchos": "WatchOS"
]
