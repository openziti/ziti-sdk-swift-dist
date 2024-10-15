// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let version = "0.40.1"
let checksum = "94a9da1f5f820c3a3965640a9e32c8673995d584287326910a5037b133da9d46"

let package = Package(
    name: "CZiti",
    platforms: [ .macOS(.v10_14), .iOS(.v13) ],
    products: [ .library( name: "CZiti", targets: ["CZiti"]) ],
    targets: [
        .binaryTarget(
            name: "CZiti",
            url: "https://github.com/openziti/ziti-sdk-swift/releases/download/\(version)/CZiti.xcframework.zip",
            checksum: checksum)
    ]
)
