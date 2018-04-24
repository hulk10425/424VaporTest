// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "test",
    products: [
        .library(name: "App", targets: ["App"]),
        .executable(name: "Run", targets: ["Run"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git"),
        .package(url: "https://github.com/vapor/fluent-provider.git"),
        ],
    targets: [
        .target(
            name: "App",
            dependencies: ["Vapor", "FluentProvider"],
            exclude: [
                "Config",
                "Public",
                "Resources",
                ]
        ),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App", "Testing"])
    ]
)


