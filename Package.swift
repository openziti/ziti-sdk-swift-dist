// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let version = "0.30.25"
let checksum = "4ac737136c9a4708f1014f073dea1889df087fb180e413abc678fed938df7ca6"

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
