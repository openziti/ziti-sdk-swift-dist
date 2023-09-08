// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let version = "0.30.16"
let checksum = "ec3e1668c30de0cb8282b9a829d08cd6c6690cfbc5e970b2203f09b3ec3ff500"

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
