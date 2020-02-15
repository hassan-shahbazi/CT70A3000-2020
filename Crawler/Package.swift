// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Crawler",
    products: [
        .executable(name: "Crawler", targets: ["Crawler"]),
        .library(name: "CrawlerLibrary", targets: ["CrawlerLibrary"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Crawler",
            dependencies: ["CrawlerLibrary"]),
        .target(
            name: "CrawlerLibrary",
            dependencies: []),
        .testTarget(
            name: "CrawlerTests",
            dependencies: ["Crawler"]),
    ]
)
