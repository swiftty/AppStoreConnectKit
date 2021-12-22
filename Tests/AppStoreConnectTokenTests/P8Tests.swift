import XCTest
@testable import AppStoreConnectToken

final class P8Tests: XCTestCase {
    func testDecodeP8() throws {
        /// https://developer.apple.com/forums/thread/128616
        let p8 = try P8("""
        -----BEGIN PRIVATE KEY-----
        MIGTAgEAMBMGByqGSM49AgEGCCqGSM49AwEHBHkwdwIBAQQguInKjBKrr3SeyhHU
        2Da4KNGZT42zclJJPYVEAggFZB6gCgYIKoZIzj0DAQehRANCAATNu4bTLE0IEWqk
        0zhOrhvf4+zl1G8DDc85zXk8LuZ0+pNUEPIQQZJ4V32HclXzML70ym/wiVUkuLaE
        iZxKCLUa
        -----END PRIVATE KEY-----
        """)

        let privateKey = try p8.privateKey
        XCTAssertEqual(privateKey, Data([
            0xB8, 0x89, 0xCA, 0x8C, 0x12, 0xAB, 0xAF, 0x74, 0x9E, 0xCA, 0x11, 0xD4, 0xD8, 0x36, 0xB8, 0x28,
            0xD1, 0x99, 0x4F, 0x8D, 0xB3, 0x72, 0x52, 0x49, 0x3D, 0x85, 0x44, 0x02, 0x08, 0x05, 0x64, 0x1E
        ]))
    }
}
