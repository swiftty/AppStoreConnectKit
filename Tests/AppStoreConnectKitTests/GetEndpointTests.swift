import XCTest
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif
import AppStoreConnectKit

private func toURLString<E: Endpoint>(_ e: E) throws -> String? {
    try URLRequest(endpoint: e)?.url?.absoluteString
}

final class GetEndpointTests: XCTestCase {
    func testAppCategories() throws {
        var endpoint = V1.AppCategories.GET()
        XCTAssertEqual(try toURLString(endpoint),
                       "https://api.appstoreconnect.apple.com/v1/appCategories")

        endpoint.parameters.limit[.subcategories] = 10
        XCTAssertEqual(try toURLString(endpoint),
                       "https://api.appstoreconnect.apple.com/v1/appCategories?limit%5Bsubcategories%5D=10")

        endpoint.parameters.fields[.appCategories] = [.subcategories, .parent]
        XCTAssertEqual(try toURLString(endpoint),
                       "https://api.appstoreconnect.apple.com/v1/appCategories?fields%5BappCategories%5D=subcategories,parent&limit%5Bsubcategories%5D=10")

        endpoint.parameters.fields[.appCategories] = []
        XCTAssertEqual(try toURLString(endpoint),
                       "https://api.appstoreconnect.apple.com/v1/appCategories?fields%5BappCategories%5D=&limit%5Bsubcategories%5D=10")

        endpoint.parameters.fields[.appCategories] = nil
        endpoint.parameters.limit[.subcategories] = nil
        XCTAssertEqual(try toURLString(endpoint),
                       "https://api.appstoreconnect.apple.com/v1/appCategories")
    }
}
