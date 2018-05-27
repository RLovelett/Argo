// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
  name: "Argo",
  products: [
    .library(name: "Argo", targets: ["Argo"]),
  ],
  dependencies: [
    .package(url: "https://github.com/thoughtbot/Runes.git", from: "4.0.0"),
    .package(url: "https://github.com/thoughtbot/Curry.git", from: "4.0.0"),
  ],
  targets: [
    .target(
      name: "Argo",
      dependencies: [
        "Runes",
      ]
    ),
    .testTarget(
      name: "ArgoTests",
      dependencies: [
        "Argo",
        "Curry",
      ]
    ),
  ],
  swiftLanguageVersions: [3, 4]
)
