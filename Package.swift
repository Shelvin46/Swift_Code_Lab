// swift-tools-version: 5.8

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "swift_learn",
    platforms: [
        .iOS("16.0")
    ],
    products: [
        .iOSApplication(
            name: "swift_learn",
            targets: ["AppModule"],
            bundleIdentifier: "swift-learn.swift-learn",
            teamIdentifier: "5D3KW2433S",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .rocket),
            accentColor: .presetColor(.yellow),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)
