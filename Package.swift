// swift-tools-version:5.4
import PackageDescription

let package = Package(
	name: "tca-swiftui-navigation",
	platforms: [
		.iOS(.v14),
	],
	products: [
		.library(
			name: "ComposableNavigation",
			targets: [
				"ComposableNavigation",
			]
		),
	],
	dependencies: [
		.package(
			url: "https://github.com/pointfreeco/swift-composable-architecture.git",
			from: "0.18.0"
		),
	],
	targets: [
		.target(
			name: "ComposableNavigation",
			dependencies: [
				.product(
					name: "ComposableArchitecture",
					package: "swift-composable-architecture"
				),
			]
		),
		.testTarget(
			name: "ComposableNavigationTests",
			dependencies: [
				"ComposableNavigation",
			]
		),
	]
)
