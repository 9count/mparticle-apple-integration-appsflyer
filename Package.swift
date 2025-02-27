// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "mParticle-AppsFlyer",
    platforms: [ .iOS(.v9) ],
    products: [
        .library(
            name: "mParticle-AppsFlyer",
            targets: ["mParticle-AppsFlyer"]),
    ],
    dependencies: [
      .package(name: "mParticle-Apple-SDK",
               url: "https://github.com/mParticle/mparticle-apple-sdk",
               .upToNextMajor(from: "8.0.0")),
      .package(name: "AppsFlyerLib",
               url: "https://github.com/AppsFlyerSDK/AppsFlyerFramework",
               .upToNextMajor(from: "6.4.1")),
    ],
    targets: [
        .target(
            name: "mParticle-AppsFlyer",
            dependencies: [
              .byName(name: "mParticle-Apple-SDK"),
              .product(name: "AppsFlyerLib", package: "AppsFlyerLib"),
            ]
        )
    ]
)
