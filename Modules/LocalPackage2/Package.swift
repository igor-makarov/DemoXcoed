// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LocalPackage2",
    products: [
        .library(name: "LocalPackage2", targets: ["LocalPackage2"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(name: "LocalPackage2", dependencies: []),
    ]
)
