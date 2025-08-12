// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let version = "0.41.15"
let checksum = "2ab97c2358849389de86d2e92b2d75663ecc41b4c31e6c1833c573fe2700f399"

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
