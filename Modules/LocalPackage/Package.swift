// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LocalPackage",
    products: [
        .library(name: "LocalPackage", targets: ["LocalPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jpsim/Yams.git", from: "2.0.0"),
    ],
    targets: [
        .target(name: "LocalPackage", dependencies: ["Yams"]),
    ]
)
