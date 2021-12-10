import Foundation
import AppStoreConnectGenKit

extension EndpointRenderer {
    func declForDELETE(_ endpoint: OpenAPIEndpoint) -> Decl? {
        guard let delete = endpoint.delete else { return nil }

        var methodDecl = declForMethod(delete, name: "DELETE", parameters: endpoint.parameters ?? [])
        methodDecl.inheritances.append("Endpoint")
        methodDecl.typealiases = [
            TypealiasDecl(access: .public, name: "Parameters", value: "Never")
        ] + methodDecl.typealiases

        methodDecl.functions = [
            FunctionDecl(
                access: .public,
                name: "request",
                arguments: [
                    ArgumentDecl(
                        name: "baseURL",
                        alt: "with",
                        type: "URL"
                    )
                ],
                parameterModifiers: [.throws],
                returnType: "URLRequest?",
                body: """
                var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
                components?.path = path

                var urlRequest = components?.url.map { URLRequest(url: $0) }
                urlRequest?.httpMethod = "DELETE"
                return urlRequest
                """
            )
        ] + methodDecl.functions
        return methodDecl
    }
}
