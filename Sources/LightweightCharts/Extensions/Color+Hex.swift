#if os(OSX)
    import AppKit
    public typealias AppColor = NSColor
#elseif os(iOS) || os(tvOS)
    import UIKit
    public typealias AppColor = UIColor
#endif


public extension AppColor {
    
    /// Initializes a `NSColor` or `UIColor` object from a (hexadecimal) `UInt32` value.
    ///
    /// - parameter hex: The (hexadecimal) value with 8 bits per color channel.
    ///                  `0xRRGGBB` e.g. `0xff0000` for red.
    /// - parameter alpha: The desired value of the alpha channel of the color to create.
    ///                    Default is 1.0
    ///                    Should be in the range of 0.0...1.0
    ///
    convenience init(hex: UInt32, alpha a: CGFloat = 1.0) {
        let r = CGFloat((hex >> 16) & 0xFF) / 255.0
        let g = CGFloat((hex >> 8)  & 0xFF) / 255.0
        let b = CGFloat((hex)       & 0xFF) / 255.0
        
        self.init(red: r, green: g , blue: b , alpha: a)
    }
}
