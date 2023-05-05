// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "Metric",
	platforms: [
		.iOS(.v16)
	],
    products: [
        .library(
            name: "Metric",
            targets: ["Metric"]
		)
    ],
	dependencies: [
		.package(url: "https://github.com/yannickl/DynamicColor", from: "5.0.1")
	],
    targets: [
        .target(
            name: "Metric",
            dependencies: ["DynamicColor"]
		),
        .testTarget(
            name: "MetricTests",
            dependencies: ["Metric"]
		)
    ]
)
