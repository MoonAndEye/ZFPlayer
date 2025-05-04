// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "ZFPlayer",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "ZFPlayer",
            targets: ["ZFPlayer"]
        )
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "ZFPlayer",
            dependencies: [],
            path: "Sources/ZFPlayer",
            exclude: [
            ],
            resources: [
                .process("Classes/ControlView/ZFPlayer.bundle")
            ],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("Classes/Core"),
                .headerSearchPath("Classes/AVPlayer"),
                .headerSearchPath("Classes/ControlView"),
                .headerSearchPath("Classes/ijkplayer")
            ]
        )
    ]
)
