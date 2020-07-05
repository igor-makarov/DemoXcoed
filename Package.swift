// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "DemoXcoed",
    products: [
    ],
    dependencies: [
        .package(url: "https://github.com/jpsim/Yams.git", from: "2.0.0"),
        .package(url: "https://github.com/SnapKit/SnapKit", from: "5.0.0"),
        .package(path: "Modules/LocalPackage"),
        .package(path: "Modules/LocalPackage2"),
    ],
    targets: [
        .target(
            name: "DemoXcoed",
            dependencies: [
                "LocalPackage",
                "LocalPackage2",
                "SnapKit",
                "Yams",
            ]
        ),
    ]
)
