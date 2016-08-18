import Foundation

#if os(OSX)
    import Cocoa
#else
    import UIKit
#endif

// ---------------------------------------------------
//  Clamping
// ---------------------------------------------------
extension Color {
    /// Returns the value clamped to 0.0 ... 1.0
    public static func unitclamp(_ value: CGFloat) -> CGFloat {
        return Swift.max(0.0, Swift.min(1.0, value))
    }
}

// ---------------------------------------------------
//  Type Conversion
// ---------------------------------------------------

extension Color {
    /// Returns an 8 bit unsigned representation of a value between 0.0 and 1.0
    public static func byte(from value: CGFloat) -> UInt8 {
        return UInt8(floor(unitclamp(value) * 255.0))
    }
}

