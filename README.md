# OcticonsKit

[![CI Status](http://img.shields.io/travis/keitaoouchi/OcticonsKit.svg?style=flat)](https://travis-ci.org/keita.oouchi/OcticonsKit)
[![Swift 3.0](https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat)](https://swift.org/)
[![Version](https://img.shields.io/cocoapods/v/OcticonsKit.svg?style=flat)](http://cocoapods.org/pods/OcticonsKit)
[![License](https://img.shields.io/cocoapods/l/OcticonsKit.svg?style=flat)](http://cocoapods.org/pods/OcticonsKit)
[![Platform](https://img.shields.io/cocoapods/p/OcticonsKit.svg?style=flat)](http://cocoapods.org/pods/OcticonsKit)

<img src="https://raw.githubusercontent.com/keitaoouchi/OcticonsKit/master/Screenshots/sample.png" width="320px" />

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

iOS 8 or later.
Swift3.0 or later.

## Installation

OcticonsKit is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "OcticonsKit"
```

## Author

keita.oouchi, keita.oouchi@gmail.com

## License

[octicons.ttf](https://octicons.github.com/) file is licensed under [MIT license](https://github.com/primer/octicons/blob/master/LICENSE).

OcticonsKit is available under the MIT license. See the LICENSE file for more info.
