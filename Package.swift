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
            url: "https://github.com/jeremyabannister/ExpressionErgonomics",
            from: "0.1.8"
        ),
        .package(
            url: "https://github.com/jeremyabannister/FoundationToolkit",
            from: "0.1.0"
        ),
    ],
    targets: [
        .target(
            name: "CompleteDictionary",
            dependencies: [
                "FoundationToolkit",
                "ExpressionErgonomics"
            ]
        ),
        .testTarget(
            name: "CompleteDictionary-tests",
            dependencies: [
                "CompleteDictionary",
                .product(name: "FoundationTestToolkit", package: "FoundationToolkit")
            ]
        ),
    ]
)
