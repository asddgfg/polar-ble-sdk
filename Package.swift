// swift-tools-version:5.3.2
import PackageDescription

let package = Package(
    name: "PolarBleSdk",
    platforms: [
        .iOS(.v13), .watchOS(.v5)
    ],
    
    products: [
        .library( name: "PolarBleSdk", targets: ["PolarBleSdk"]),
    ],
    dependencies: [
        .package(name: "RxSwift", url: "https://github.com/ReactiveX/RxSwift.git", .exact("6.5.0")),
        .package(name: "SwiftProtobuf", url: "https://github.com/apple/swift-protobuf.git", from: "1.6.0"),
    ],
    targets: [
        .target(
            name: "PolarBleSdk",
            dependencies: ["SwiftProtobuf", "RxSwift"],
            path: "sources/iOS/ios-communications/Sources"
        ),
    ]
)
