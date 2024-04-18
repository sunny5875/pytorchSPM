// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "LibTorchLiteNightly",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "LibTorchLiteNightly",
            targets: ["LibTorchLiteNightly"]),
    ],
    targets: [
        .target(
            name: "LibTorchLiteNightly",
            dependencies: ["Torch"],
            path: "Sources/LibTorchLiteNightly",
            cxxSettings: [
                .headerSearchPath("/LibTorch-Lite-Nightly/install/include/")
            ],
            linkerSettings: [
                .linkedLibrary("c++"),
                .linkedLibrary("stdc++"),
                .linkedFramework("Accelerate"),
                .linkedFramework("MetalPerformanceShaders"),
                .linkedFramework("CoreML")
            ]
        ),
        .target(
            name: "Torch",
            dependencies: [],
            path: "Sources/Torch",
            publicHeadersPath: "include",
            cxxSettings: [
                .headerSearchPath("LibTorch-Lite-Nightly/install/include/")
            ],
            linkerSettings: [
                .linkedLibrary("c++"),
                .linkedLibrary("stdc++")
            ]
        )
    ]
)
