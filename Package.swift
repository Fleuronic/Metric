// swift-tools-version:5.10
import PackageDescription

let package = Package(
	name: "Metric",
	platforms: [
		.iOS(.v13)
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
