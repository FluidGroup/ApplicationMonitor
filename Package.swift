// swift-tools-version:5.5
import PackageDescription

let package = Package(
  name: "ApplicationMonitor",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "ApplicationMonitor", targets: ["ApplicationMonitor"]),
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "ApplicationMonitor",
      exclude: ["Info.plist"]
    ),
  ]
)
