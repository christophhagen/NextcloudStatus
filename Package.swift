// swift-tools-version: 5.9

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
        .package(url: "https://github.com/christophhagen/BinaryCodable", from: .init(2, 0, 0))
    ],
    targets: [
        .target(
            name: "NextcloudStatus"),
        .testTarget(
            name: "NextcloudStatusTests",
            dependencies: ["NextcloudStatus", "BinaryCodable"]),
    ]
)
