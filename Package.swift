// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "TPNDebugUISDK",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TPNDebugUISDK",
            targets: ["TPNDebugUISDKTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/topon-packages/TPNiOS_SPM.git", from: "6.5.60")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkDebuggerUISDK",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/SDK_Release/DebuggerUI/iOS/1.1.1/AnyThinkDebuggerUISDK.zip",
            checksum: "0ed05a313ee2b6dd153c431762421995ba5aae9f5f5faf785390ec09ac5081c8"
        ),
        .target(
            name: "TPNDebugUISDKTarget",
            dependencies: [
                "AnyThinkDebuggerUISDK",
                .product(name: "TPNiOS", package: "TPNiOS_SPM")
            ],
            path: "Sources/TPNDebugUISDKTarget"
        )
    ]
)