// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "Metric",
	platforms: [
		.iOS(.v15)
	],
    products: [
        .library(
            name: "Metric",
            targets: [
				"Metric"
			]
		)
    ],
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
