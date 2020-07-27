// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "DemoXcoed",
    products: [
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit", from: "5.0.0"),
        .package(url: "https://github.com/biobeats/swiftui-navigation-stack.git", .branch("master")),
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper", .revision("a593b4d647a970b3d184d046f8f52b945083ccf9")),
        .package(path: "Modules/LocalPackage"),
        .package(path: "Modules/LocalPackage2"),
    ],
    targets: [
        .target(
            name: "DemoXcoed",
            dependencies: [
                "LocalPackage",
                "LocalPackage2",
                "NavigationStack",
                "ObjectMapper",
                "SnapKit",
                "Yams",
            ]
        ),
    ]
)
