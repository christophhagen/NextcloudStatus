// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "NextcloudStatus",
    platforms: [.macOS(.v10_13), .iOS(.v12), .watchOS(.v4)],
    products: [
        .library(
            name: "NextcloudStatus",
            targets: ["NextcloudStatus"]),
    ],
    targets: [
        .target(
            name: "NextcloudStatus"),
        .testTarget(
            name: "NextcloudStatusTests",
            dependencies: ["NextcloudStatus"]),
    ]
)
