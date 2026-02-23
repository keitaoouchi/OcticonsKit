import UIKit
import CoreText

/// A Octicons extension to UIFont.
public extension UIFont {

    /// Get a UIFont object of Octicons.
    ///
    /// - parameter size: The preferred font size.
    /// - returns: A UIFont object of Octicons.
    public static func octicon(of size: CGFloat) -> UIFont {
        let name = "octicons"
        if UIFont.fontNames(forFamilyName: name).isEmpty {
            FontLoader.load(name)
        }

        return UIFont(name: name, size: size) ?? UIFont.systemFont(ofSize: size)
    }
}

/// A Octicons extension to String.
public extension String {

    /// Get a Octicons icon string with the given icon name.
    ///
    /// - parameter name: The preferred icon name.
    /// - returns: A string that will appear as icon with Octicons.
    public static func octicon(with name: Octicons) -> String {
        return String(name.rawValue.prefix(1))
    }

}

/// A Octicons extension to UIImage.
public extension UIImage {

    /// Get a Octicons image with the given icon name, text color, size and an optional background color.
    ///
    /// - parameter name: The preferred icon name.
    /// - parameter textColor: The text color.
    /// - parameter size: The image size.
    /// - parameter backgroundColor: The background color (optional).
    /// - returns: A string that will appear as icon with Octicons
    public static func octicon(with name: Octicons,
                               textColor: UIColor,
                               size: CGSize,
                               backgroundColor: UIColor = .clear) -> UIImage {

        let paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .center
        let fontSize = min(size.width, size.height)

        let attributedString = NSAttributedString(
            string: String.octicon(with: name),
            attributes: [
                .font: UIFont.octicon(of: fontSize),
                .foregroundColor: textColor,
                .backgroundColor: backgroundColor,
                .paragraphStyle: paragraph
            ]
        )

        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        attributedString.draw(in:
            CGRect(
                x: 0,
                y: (size.height - fontSize) / 2,
                width: size.width,
                height: fontSize
            )
        )
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image ?? UIImage()
    }

}

private class FontLoader {
    static func load(_ name: String) {
        let bundle = Bundle(for: FontLoader.self)

        guard let fontURL = bundle.url(forResource: name, withExtension: "ttf") ??
                            bundle.url(forResource: name, withExtension: "ttf", subdirectory: "OcticonsKit.bundle") else {
            print("OcticonsKit: Failed to locate font '\(name).ttf' in bundle.")
            return
        }

        guard let data = try? Data(contentsOf: fontURL),
              let provider = CGDataProvider(data: data as CFData),
              let font = CGFont(provider) else {
            print("OcticonsKit: Failed to create font from data.")
            return
        }

        var error: Unmanaged<CFError>?
        if !CTFontManagerRegisterGraphicsFont(font, &error) {
            let errorDescription: CFString = CFErrorCopyDescription(error!.takeUnretainedValue())
            let nsError = error!.takeUnretainedValue() as Error
            print("OcticonsKit: Failed to register font: \(errorDescription). Error: \(nsError)")
        }
    }
}
