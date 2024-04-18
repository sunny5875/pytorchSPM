// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LibTorch",
    platforms: [
            .iOS(.v12)
        ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "LibTorch",
            targets: ["LibTorch"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
                   name: "LibTorch",
                   url: "https://ossci-ios.s3.amazonaws.com/libtorch_ios_1.13.0.zip",
                   checksum: "<#checksum#>"
               ),
        .testTarget(
            name: "LibTorchTests",
            dependencies: ["LibTorch"])
    ]
)

// swift-tools-version:5.3
//
//import PackageDescription
//
//let package = Package(
//    name: "LibTorchLite",
//    platforms: [
//        .iOS(.v12)
//    ],
//    products: [
//        .library(
//            name: "LibTorchLite",
//            targets: ["LibTorchLite"]
//        )
//    ],
//    dependencies: [],
//    targets: [
//        .target(
//            name: "LibTorchLite",
//            dependencies: ["Torch"],
//            path: "Sources/LibTorchLite",
//            cxxSettings: [
//                .headerSearchPath("$(PROJECT_DIR)/LibTorch-Lite/install/include/")
//            ],
//            linkerSettings: [
//                .linkedLibrary("c++"),
//                .linkedLibrary("stdc++"),
//                .linkedFramework("Accelerate"),
//                .linkedFramework("MetalPerformanceShaders"),
//                .linkedFramework("CoreML")
//            ]
//        ),
//        .target(
//            name: "Torch",
//            dependencies: [],
//            path: "Sources/Torch",
//            publicHeadersPath: "include",
//            cxxSettings: [
//                .headerSearchPath("$(PROJECT_DIR)/LibTorch-Lite/install/include/")
//            ],
//            linkerSettings: [
//                .linkedLibrary("c++"),
//                .linkedLibrary("stdc++")
//            ]
//        )
//    ]
//)
