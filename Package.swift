// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AliPlayerSDK",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AliPlayerSDK",
            targets: ["alivcffmpeg", "AliyunMediaDownloader", "AliyunPlayer"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        .binaryTarget(
            name: "alivcffmpeg",
            path: "alivcffmpeg.xcframework"
        ),
        .binaryTarget(
            name: "AliyunMediaDownloader",
            path: "AliyunMediaDownloader.xcframework"
        ),
        .binaryTarget(
            name: "AliyunPlayer",
            path: "AliyunPlayer.xcframework"
        )
    ]
)
