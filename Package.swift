// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "CompleteDictionary",
    products: [
        .library(
            name: "CompleteDictionary",
            targets: ["CompleteDictionary"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/jeremyabannister/CollectionToolkit",
            from: "0.1.2"
        ),
    ],
    targets: [
        .target(
            name: "CompleteDictionary",
            dependencies: ["CollectionToolkit"]
        ),
        .testTarget(
            name: "CompleteDictionary-tests",
            dependencies: ["CompleteDictionary"]
        ),
    ]
)
