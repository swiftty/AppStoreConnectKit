import Foundation
import AppStoreConnectGenKit

public struct SwiftCodeBuilder {
    var schemas: OpenAPISchemas = [:]
    var endpoints: OpenAPIEndpoints = [:]
    var context = Context()

    public init() {}

    public mutating func add(schemas newSchemas: OpenAPISchemas) {
        schemas = newSchemas

        context.resolver = { ref in
            newSchemas[ref.key]
        }
    }

    public mutating func add(endpoints newEndpoints: OpenAPIEndpoints) {
        endpoints = newEndpoints
    }

    public mutating func nest(_ key: String, in target: String) {
        context.nestings[key] = target
    }

    public mutating func inherit(_ key: String, to target: String) {
        context.inherits[target, default: []].append(key)
    }

    public func build() -> [Renderer] {
        func schemaRenderers() -> [Renderer] {
            schemas.map {
                var path = "Schemas"
                if $0.key.hasSuffix("Request") {
                    path += "/Requests"
                } else if $0.key.hasSuffix("Response") {
                    path += "/Responses"
                }
                path += "/\($0.key).generated.swift"
                return SchemaRenderer(schema: $0.value, scope: $0.key, context: context, filePath: path)
            }
        }
        func endpointRenderers() -> [Renderer] {
            endpoints.flatMap {
                EndpointRenderer.generates(path: $0.key, endpoint: $0.value, context: context)
            }
        }

        return schemaRenderers()
            + endpointRenderers()
            + [EndpointNamespaceRenderer(endpoints: endpoints)]
    }
}

extension SwiftCodeBuilder {
    struct Context {
        var resolver: (OpenAPISchema.Ref) -> OpenAPISchema? = { _ in nil }
        var nestings: [String: String] = [:]
        var inherits: [String: [String]] = [:]
    }
}

func makePathComponents(from path: String) -> [String] {
    func transformBraces(_ value: String) -> String {
        guard value.hasPrefix("{"), value.hasSuffix("}") else { return value }
        return "by" + String(value.dropFirst().dropLast()).upperInitialLetter()
    }

    return path
        .split(separator: "/", omittingEmptySubsequences: true)
        .map(String.init)
        .map(transformBraces)
        .map { $0.upperInitialLetter() }
}
