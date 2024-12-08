// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AnalyticsKit",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(
            name: "AnalyticsKit",
            targets: ["AnalyticsKit"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/PostHog/posthog-ios.git", from: "3.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AnalyticsKit",
            dependencies: [
                .product(name: "PostHog", package: "posthog-ios") // Reference the external dependency correctly
            ]
        ),
        .testTarget(
            name: "AnalyticsKitTests",
            dependencies: ["AnalyticsKit"]
        ),
    ]
)
