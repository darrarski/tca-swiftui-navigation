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
	targets: [
		.target(
			name: "ComposableNavigation"
		),
		.testTarget(
			name: "ComposableNavigationTests",
			dependencies: [
				"ComposableNavigation",
			]
		),
	]
)
