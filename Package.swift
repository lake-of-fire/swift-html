// swift-tools-version:5.8
import Foundation
import PackageDescription

let package = Package(
  name: "Html",
  platforms: [.iOS(.v15), .macOS(.v12)],
  products: [
    .library(
      name: "Html",
      targets: ["Html"]),
    /*.library(
      name: "HtmlSnapshotTesting",
      targets: ["HtmlSnapshotTesting"]),*/
  ],
  dependencies: [
    //.package(url: "https://github.com/pointfreeco/swift-snapshot-testing.git", from: "1.5.0"),
  ],
  targets: [
    .target(
      name: "Html",
      dependencies: []),
    /*.testTarget(
      name: "HtmlTests",
      dependencies: ["Html"]),
    .target(
      name: "HtmlSnapshotTesting",
      dependencies: ["Html", "SnapshotTesting"]),
    .testTarget(
      name: "HtmlSnapshotTestingTests",
      dependencies: ["HtmlSnapshotTesting"]),*/
    ]
)

if ProcessInfo.processInfo.environment.keys.contains("PF_DEVELOP") {
  package.dependencies.append(
    contentsOf: [
      .package(url: "https://github.com/yonaskolb/XcodeGen.git", from: "2.3.0"),
    ]
  )
}
