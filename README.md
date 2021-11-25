# Appwrite Swift SDK

![Swift Package Manager](https://img.shields.io/github/v/release/appwrite/sdk-for-swift.svg?color=green&style=flat-square)
![License](https://img.shields.io/github/license/appwrite/sdk-for-swift.svg?style=flat-square)
![Version](https://img.shields.io/badge/api%20version-0.12.0-blue.svg?style=flat-square)
[![Build Status](https://img.shields.io/travis/com/appwrite/sdk-generator?style=flat-square)](https://travis-ci.com/appwrite/sdk-generator)
[![Twitter Account](https://img.shields.io/twitter/follow/appwrite_io?color=00acee&label=twitter&style=flat-square)](https://twitter.com/appwrite_io)
[![Discord](https://img.shields.io/discord/564160730845151244?label=discord&style=flat-square)](https://appwrite.io/discord)

**This SDK is compatible with Appwrite server version 0.12.x. For older versions, please check [previous releases](https://github.com/appwrite/sdk-for-swift/releases).**

 > This is the Swift SDK for integrating with Appwrite from your Swift server-side code. If you're looking for the Apple SDK you should check [appwrite/sdk-for-apple](https://github.com/appwrite/sdk-for-apple)

Appwrite is an open-source backend as a service server that abstract and simplify complex and repetitive development tasks behind a very simple to use REST API. Appwrite aims to help you develop your apps faster and in a more secure way. Use the Swift SDK to integrate your app with the Appwrite server to easily start interacting with all of Appwrite backend APIs and tools. For full API documentation and tutorials go to [https://appwrite.io/docs](https://appwrite.io/docs)

![Appwrite](https://appwrite.io/images/github.png)

## Installation

### Xcode with Swift Package Manager

The Appwrite Swift SDK is available via multiple package managers, including Swift Package Manager. In order to use the Appwrite Swift SDK from Xcode, select File > Swift Packages > **Add Package Dependency**

In the dialog that appears, enter the Appwrite Swift SDK [package URL](git@github.com:appwrite/sdk-for-swift.git) and click **Next**.

Once the repository information is loaded, add your version rules and click **Next** again.

On the final screen, make sure you see `Appwrite` as a product selected for your target:

### Swift Package Manager

Add the package to your `Package.swift` dependencies:

```swift
    dependencies: [
        .package(url: "git@github.com:appwrite/sdk-for-swift.git", from: "0.2.0"),
    ],
```

Then add it to your target:

```swift
    targets: [
        .target(
            name: "YourAppTarget",
            dependencies: [
                .product(name: "", package: "sdk-for-swift")
            ]
        ),
```


## Contribution

This library is auto-generated by Appwrite custom [SDK Generator](https://github.com/appwrite/sdk-generator). To learn more about how you can help us improve this SDK, please check the [contribution guide](https://github.com/appwrite/sdk-generator/blob/master/CONTRIBUTING.md) before sending a pull-request.

## License

Please see the [BSD-3-Clause license](https://raw.githubusercontent.com/appwrite/appwrite/master/LICENSE) file for more information.