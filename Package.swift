// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "hello",
    products: [
        .library(name: "App", targets: ["App"]),
        .executable(name: "Run", targets: ["Run"])
    ],
    dependencies: [
        .Package(url: "https://github.com/vapor/vapor.git",  majorVersion: 2, minor: 1),
        .Package(url: "https://github.com/vapor/fluent-provider.git",  majorVersion: 1, minor: 2),
    ],
    targets: [
        .target(
            name: "App",
            dependencies: ["Vapor", "FluentProvider"],
            exclude: ["Config", "Public", "Resources"]
        ),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App", "Testing"])
    ]
)

