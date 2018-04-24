// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "test",
    products: [
        .library(name: "App", targets: ["App"]),
        .executable(name: "Run", targets: ["Run"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", majorVersion: 2, minor: 3),
        .package(url: "https://github.com/vapor/fluent-provider.git", .majorVersion: 1, minor: 3),
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


