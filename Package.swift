// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "DemoXcoed",
    products: [
    ],
    dependencies: [
        .package(url: "https://github.com/jpsim/Yams.git", from: "2.0.0"),
        .package(url: "https://github.com/SnapKit/SnapKit", from: "5.0.0"),
    ],
    targets: [
        .target(
            name: "DemoXcoed",
            dependencies: [
                "Yams",
                "SnapKit",
            ]
        ),
    ]
)
