// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SwinjectUI",
    products: [
        .library(
            name: "SwinjectUI",
            targets: ["SwinjectUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Swinject/Swinject.git", from: "2.7.0"),
    ],
    targets: [
        .target(
            name: "SwinjectUI",
            dependencies: ["Swinject"]),
        .testTarget(
            name: "SwinjectUITests",
            dependencies: ["SwinjectUI"]),
    ]
)
