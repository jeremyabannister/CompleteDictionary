// swift-tools-version:5.8

///
import PackageDescription

///
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
            "0.3.2" ..< "0.4.0"
        ),
        .package(
            url: "https://github.com/jeremyabannister/FoundationToolkit",
            "0.7.0" ..< "0.8.0"
        ),
    ],
    targets: [
        .target(
            name: "CompleteDictionary",
            dependencies: [
                "FoundationToolkit",
                "ExpressionErgonomics",
            ]
        ),
        .testTarget(
            name: "CompleteDictionary-tests",
            dependencies: [
                
                ///
                "CompleteDictionary",
                
                ///
                .product(
                    name: "FoundationTestToolkit",
                    package: "FoundationToolkit"
                ),
            ]
        ),
    ]
)
