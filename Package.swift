
// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Copyright (C) 2023 Acoustic, L.P. All rights reserved.
//
// NOTICE: This file contains material that is confidential and proprietary to
// Acoustic, L.P. and/or other developers. No license is granted under any intellectual or
// industrial property rights of Acoustic, L.P. except as may be provided in an agreement with
// Acoustic, L.P. Any unauthorized copying or distribution of content from this file is
// prohibited.

import PackageDescription

print("Using Tealeaf debug version, if you need release version use https://github.com/acoustic-analytics/Tealeaf-SP")
let package = Package(
    name: "Tealeaf",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Tealeaf",
            targets: ["Tealeaf", "EOCore"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        //
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/acoustic-analytics/Tealeaf/releases/download/10.6.269/Tealeaf_XCFramework_Debug.zip",
            checksum: "24924017e3f04a2b2fe7ab22fefd016eb99aefac588ee3e35b3a7179787a9c4a"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/acoustic-analytics/EOCore/releases/download/2.3.264/EOCore_XCFramework_Debug.zip",
            checksum: "2698e697d7240a10f7459f624aaddcf8839093d45d79bfe78431feed1fa42ff1"),
    ]
)
