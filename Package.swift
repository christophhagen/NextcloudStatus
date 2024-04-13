// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "NextcloudStatus",
    platforms: [.macOS(.v12), .iOS(.v15), .watchOS(.v8)],
    products: [
        .library(
            name: "NextcloudStatus",
            targets: ["NextcloudStatus"]),
    ],
    dependencies: [
        .package(url: "https://github.com/christophhagen/BinaryCodable", from: "2.0.0"),
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "NextcloudStatus"),
        .testTarget(
            name: "NextcloudStatusTests",
            dependencies: ["NextcloudStatus", "BinaryCodable"]),
    ]
)
