// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let version = "0.41.5"
let checksum = "0e38fadc69a1f1eeaaa76cec3e39ff41c76368343eaf654d978a5aeb6dc24d7e"

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
