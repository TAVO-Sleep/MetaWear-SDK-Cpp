// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "MetaWearCpp",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(name: "MetaWearCpp", targets: ["MetaWearCpp"])
    ],
    targets: [
        .target(
            name: "MetaWearCpp",
            path: ".",
            // src/metawear/generator holds host-side binding emitters, not library code.
            sources: [
                "src/metawear/core",
                "src/metawear/dfu",
                "src/metawear/impl",
                "src/metawear/peripheral",
                "src/metawear/platform",
                "src/metawear/processor",
                "src/metawear/sensor",
            ],
            publicHeadersPath: "src",
            cxxSettings: [
                .headerSearchPath("src")
            ]
        )
    ]
)