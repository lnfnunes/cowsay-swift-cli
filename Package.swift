// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "cowsay",
  products: [
    .executable(name: "cowsay", targets: ["cowsay"])
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-argument-parser", from: "0.4.3")
  ],
  targets: [
    .target(name: "cowsay", dependencies: ["ArgumentParser"]),
    .testTarget(name: "cowsayTests", dependencies: ["cowsay"], path: "Tests"),
  ]
)
