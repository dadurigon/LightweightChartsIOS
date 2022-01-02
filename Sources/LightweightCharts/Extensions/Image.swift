#if os(OSX)
    import AppKit
    public typealias AppImage = NSImage
#elseif os(iOS) || os(tvOS)
    import UIKit
    public typealias AppImage = UIImage
#endif
