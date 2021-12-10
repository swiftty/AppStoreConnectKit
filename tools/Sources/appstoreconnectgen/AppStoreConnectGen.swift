import Foundation
import ArgumentParser
import AppStoreConnectGenKit
import AppStoreConnectGenForSwift

@main
struct AppStoreConnectGen: ParsableCommand {
    @Option(help: "path to open api file (json)",
            completion: .file(extensions: ["json"]))
    var openAPIPath: String

    @Option(name: .shortAndLong,
            help: "path to output dir",
            completion: .directory)
    var output: String

    func run() throws {
        let inputData = try Data(contentsOf: URL(fileURLWithPath: openAPIPath))
        let input = try JSONDecoder().decode(OpenAPIRoot.self, from: inputData)

        var builder = SwiftCodeBuilder()

        builder.add(schemas: input.components.schemas)
        builder.add(endpoints: input.paths)
        builder.nest("ErrorSourceParameter", in: "ErrorResponse")
        builder.nest("ErrorSourcePointer", in: "ErrorResponse")
        builder.inherit("Error", to: "ErrorResponse")

        let generator = Generator(outputDir: URL(fileURLWithPath: output))
        try generator.generate(renderers: builder.build())
    }
}

struct OpenAPIRoot: Decodable {
    struct Components: Decodable {
        var schemas: OpenAPISchemas
    }

    var components: Components
    var paths: OpenAPIEndpoints
}
