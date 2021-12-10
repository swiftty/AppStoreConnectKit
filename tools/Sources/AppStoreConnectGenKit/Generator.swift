import Foundation
import CryptoKit

public struct Generator {
    private let outputDir: URL

    public init(
        outputDir: URL
    ) {
        self.outputDir = outputDir
    }

    public struct GeneratedFile {
        public var path: URL
        public var content: String

        public func write() throws {
            try content.write(to: path, atomically: true, encoding: .utf8)
        }
    }

    @discardableResult
    public func generate(renderers: [Renderer],
                         dryrun: Bool = false) throws -> [GeneratedFile] {
        var generated: [GeneratedFile] = []

        for renderer in renderers {
            guard let content = try renderer.render() else {
                continue
            }
            let path = outputDir.appendingPathComponent(renderer.filePath)
            generated.append(.init(path: path, content: content))
        }

        if !dryrun {
            try? FileManager.default.removeItem(at: outputDir)

            var dirs: Set<URL> = []
            for file in generated {
                if case let dir = file.path.deletingLastPathComponent(), !dirs.contains(dir) {
                    dirs.insert(dir)
                    try? FileManager.default.createDirectory(at: dir,
                                                             withIntermediateDirectories: true,
                                                             attributes: nil)
                }
                try file.write()
            }
        }
        return generated
    }
}
