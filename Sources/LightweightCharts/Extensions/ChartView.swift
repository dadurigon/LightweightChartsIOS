#if os(OSX)
    import AppKit
    public typealias ChartView = NSView
#elseif os(iOS) || os(tvOS)
    import UIKit
    public typealias ChartView = UIView
#endif
