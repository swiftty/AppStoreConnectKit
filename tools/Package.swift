// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "tools",
    platforms: [.macOS(.v11)],
    products: [
        .executable(
            name: "appstoreconnectgen",
            targets: ["appstoreconnectgen"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-argument-parser.git",
            from: "1.5.1")
    ],
    targets: [
        .executableTarget(
            name: "appstoreconnectgen",
            dependencies: [
                "AppStoreConnectGenKit",
                "AppStoreConnectGenForSwift",
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]),

        .target(
            name: "AppStoreConnectGenForSwift",
            dependencies: [
                "AppStoreConnectGenKit"
            ]),

        .testTarget(
            name: "AppStoreConnectGenForSwiftTests",
            dependencies: [
                "AppStoreConnectGenForSwift"
            ]),

        .target(name: "AppStoreConnectGenKit")
    ]
)
