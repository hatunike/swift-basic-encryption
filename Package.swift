import PackageDescription

let package = Package(
	name: "swift-basic-encryption",
	dependencies: [
		.Package(url: "https://github.com/kirsteins/BigInteger.git", majorVersion: 0)
	]
)