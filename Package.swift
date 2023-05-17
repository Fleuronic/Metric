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
	dependencies: [],
    targets: [
        .target(
            name: "Metric",
            dependencies: []
		),
        .testTarget(
            name: "MetricTests",
            dependencies: ["Metric"]
		)
    ]
)
