# TopOn - iOS Debugger UI SDK

The TopOn Debugger UI SDK for iOS, distributed via Swift Package Manager. Provides in-app diagnostics and ad network verification.

## Requirements

- iOS 12.0+
- Xcode 15.0+
- TopOn iOS Core SDK (`TPNiOS`) 6.5.60+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/topon-packages/TPNDebugUISDK_SPM
   ```
3. Select **Exact Version** and enter the target version (e.g. `x.x.x`).
4. Add the `TPNDebugUISDK` product to your app target.
5. In your target's **Build Settings**, add `-ObjC` to **Other Linker Flags**.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/topon-packages/TPNDebugUISDK_SPM.git",
        exact: "x.x.x"
    )
]
```

## Included dependencies

- [`TPNiOS`](https://github.com/topon-packages/TPNiOS_SPM) (>= 6.5.60)

## More information

- [TopOn iOS Integration Guide](https://docs.toponad.com)
