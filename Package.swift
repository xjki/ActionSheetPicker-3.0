// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CoreActionSheetPicker",
    products: [
        .library(
            name: "CoreActionSheetPicker",
            targets: ["CoreActionSheetPicker"]),
    ],
    targets: [
        .target(
            name: "CoreActionSheetPicker",
            path: "Pickers/",
            cSettings: [
                .headerSearchPath("CoreActionSheetPicker/CoreActionSheetPicker.h"),
                .headerSearchPath("Pickers/"),
                ])
        ],
    swiftLanguageVersions: [.v5]
)
