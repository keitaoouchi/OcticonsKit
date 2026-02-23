import SwiftUI
import UIKit

@available(iOS 13.0, *)
public struct Octicon: View {
    private let name: Octicons
    private let size: CGFloat
    private let color: Color

    /// Initialize an Octicon view.
    /// - Parameters:
    ///   - name: The Octicon to display.
    ///   - size: The size of the icon (default: 16).
    ///   - color: The color of the icon (default: .primary).
    public init(_ name: Octicons, size: CGFloat = 16, color: Color = .primary) {
        self.name = name
        self.size = size
        self.color = color

        // Ensure the font is registered with the system
        _ = UIFont.octicon(of: size)
    }

    public var body: some View {
        Text(String.octicon(with: name))
            .font(.custom("octicons", size: size))
            .foregroundColor(color)
    }
}

@available(iOS 13.0, *)
struct Octicon_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20) {
            Octicon(.markGithub, size: 48, color: .black)
            Octicon(.gitBranch, size: 24, color: .green)
            Octicon(.alert, size: 32, color: .red)
        }
    }
}
