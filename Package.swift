// swift-tools-version:5.9
@preconcurrency import PackageDescription
#if TUIST
@preconcurrency import ProjectDescription
@preconcurrency import ProjectDescriptionHelpers

let packageSetting = PackageSettings(
    baseSettings: .settings(
        configurations: [
            .debug(name: .dev),
            .debug(name: .stage),
            .release(name: .prod)
        ]
    )
)
#endif

let package = Package(
    name: "Package",
    dependencies: [
            .package(url: "https://github.com/Moya/Moya.git", from: "15.0.0")
        ]
)
