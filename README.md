# OcticonsKit

[![CI Status](http://img.shields.io/travis/keitaoouchi/OcticonsKit.svg?style=flat)](https://travis-ci.org/keitaoouchi/OcticonsKit)
[![Swift 4.0](https://img.shields.io/badge/Swift-4.0-orange.svg?style=flat)](https://swift.org/)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Version](https://img.shields.io/cocoapods/v/OcticonsKit.svg?style=flat)](http://cocoapods.org/pods/OcticonsKit)
[![License](https://img.shields.io/cocoapods/l/OcticonsKit.svg?style=flat)](http://cocoapods.org/pods/OcticonsKit)
[![Platform](https://img.shields.io/cocoapods/p/OcticonsKit.svg?style=flat)](http://cocoapods.org/pods/OcticonsKit)

<img src="https://raw.githubusercontent.com/keitaoouchi/OcticonsKit/master/Screenshots/sample.png" width="320px" />

> OcticonsKit internally use octicons.ttf v4.3.0

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

### octicons as UILabel

```swift
someLabel.font = UIFont.octicon(of: 18)
someLabel.text = String.octicon(with: .flame)
```

### octicons as UIImage

```swift
someImageView.image = UIImage.octicon(with: .flame, textColor: UIColor.orange, size: CGSize(width: 18, height: 18))
```

For another icons, plaease see the [source](https://github.com/keitaoouchi/OcticonsKit/blob/master/OcticonsKit/Classes/octicons.swift),
or build Example App.



## Requirements

| Target            | Version |
|-------------------|---------|
| iOS               |  => 8.0 |
| Swift             |  => 4.0 |

## Installation

OcticonsKit is available through [CocoaPods](http://cocoapods.org) or [Carthage](https://github.com/Carthage/Carthage).

### CocoaPods

```ruby
pod "OcticonsKit"
```

### Carthage

```
github "keitaoouchi/OcticonsKit"
```

for detail, please follow the [Carthage Instruction](https://github.com/Carthage/Carthage#if-youre-building-for-ios-tvos-or-watchos)

## Author

keita.oouchi, keita.oouchi@gmail.com

## License

[octicons.ttf](https://octicons.github.com/) file is licensed under [MIT license](https://github.com/primer/octicons/blob/master/LICENSE).
When using the GitHub logos, be sure to follow the [GitHub logo guidelines](https://github.com/logos).

OcticonsKit is available under the MIT license. See the LICENSE file for more info.
