import Foundation

#if os(OSX)
    import Cocoa
#else
    import UIKit
#endif

// ---------------------------------------------------
//  Initialization
// ---------------------------------------------------

extension Color {
    
    /// Permits unnamed RGBA initialization. As a rule, prefer using
    /// named initializers to this. Uncomment for use.
//    convenience init(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) {
//        let r = Color.unitclamp(r)
//        let g = Color.unitclamp(g)
//        let b = Color.unitclamp(b)
//        let a = Color.unitclamp(a)
//        self.init(red: r, green: g, blue: b, alpha: a)
//    }
    
    /// Permits initialization from a well formed hex string
    public convenience init(hexString: String) {
        let value = hexString.hexValue
        let (r, g, b) = (value >> 16, (value >> 8) % 256, value % 256)
        self.init(red: CGFloat(r) / 256.0, green: CGFloat(g) / 256.0, blue: CGFloat(b) / 256.0, alpha: 1.0)
    }
    
}


