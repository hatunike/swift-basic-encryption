import PackageDescription

let package = Package(
	dependencies: [
        .Package(url: "https://github.com/kirsteins/BigInteger.git",
                 majorVersion: 1),
    ]
	
)