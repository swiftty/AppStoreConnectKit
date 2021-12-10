import Foundation

public protocol Renderer {

    var filePath: String { get }

    func render() throws -> String?
}
