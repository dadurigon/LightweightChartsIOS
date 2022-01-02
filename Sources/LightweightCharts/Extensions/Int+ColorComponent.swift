import Foundation
import CoreGraphics

extension Int {
    
    init(colorComponent: CGFloat) {
        self = Int(round(colorComponent * 255))
    }
    
}
