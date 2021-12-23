import Foundation
import AppStoreConnectGenKit

extension EndpointRenderer {
    func declForPOST(_ endpoint: OpenAPIEndpoint) -> Decl? {
        guard let post = endpoint.post else { return nil }
        return baseDecl(method: post, httpMethod: "POST",
                        requestBody: post.content.requestBody,
                        parameters: endpoint.parameters ?? [])
    }

    func declForPATCH(_ endpoint: OpenAPIEndpoint) -> Decl? {
        guard let patch = endpoint.patch else { return nil }
        return baseDecl(method: patch, httpMethod: "PATCH",
                        requestBody: patch.content.requestBody,
                        parameters: endpoint.parameters ?? [])
    }

    private func baseDecl<T>(
        method: OpenAPIEndpoint.RequestMethod<T>,
        httpMethod: String,
        requestBody: OpenAPIEndpoint.RequestBody,
        parameters: [OpenAPIEndpoint.Parameter]
    ) -> Decl? {
        let (contentType, content) = requestBody.content.first!
        let repr = findRepr(for: content.schema, with: "parameters")
        let required = requestBody.required ?? false

        let paramType = TypeName(rawValue: "Parameters")

        var methodDecl = declForMethod(
            method, name: httpMethod,
            parameters: endpoint.parameters ?? [],
            extraArguments: [
                (repr: repr,
                 name: "parameters",
                 type: paramType,
                 required: required,
                 doc: nil)
            ])
        methodDecl.inheritances.append("Endpoint")

        if let decl = repr.buildDecl(context: context) {
            methodDecl.extensions.append(decl)
        } else {
            methodDecl.typealiases = [TypealiasDecl(
                access: .public,
                name: "Parameters",
                value: "\(repr.renderType(context: context).withRequired(required))"
            )] + methodDecl.typealiases
        }
        methodDecl.members.append(MemberDecl(
            access: .public,
            keyword: .var,
            name: "parameters",
            type: "\(paramType.withRequired(required))",
            doc: requestBody.description
        ))
        methodDecl.functions = [
            requestFunctionDecl(httpMethod: httpMethod, contentType: contentType)
        ] + methodDecl.functions
        return methodDecl
    }
}

private func requestFunctionDecl(httpMethod: String, contentType: String) -> FunctionDecl {
    var body = """
    var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
    components?.path = path

    var urlRequest = components?.url.map { URLRequest(url: $0) }
    urlRequest?.httpMethod = "\(httpMethod)"


    """

    switch contentType {
    case "application/json":
        body += """
        var jsonEncoder: JSONEncoder {
            let encoder = JSONEncoder()
            return encoder
        }

        urlRequest?.httpBody = try jsonEncoder.encode(parameters)
        urlRequest?.setValue("\(contentType)", forHTTPHeaderField: "Content-Type")

        """

    default:
        fatalError("unsupported content type \(contentType)")
    }

    body += """
    return urlRequest
    """

    return FunctionDecl(
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
        body: body
    )
}
