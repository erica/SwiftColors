import Foundation

#if os(OSX)
    import Cocoa
#else
    import UIKit
#endif


// Random Colors
extension Color {
    /// Returns a random value in 0.0 ... 1.0
    static var randomValue: CGFloat {
        return CGFloat(arc4random_uniform(256)) / 255.0
    }
    
    /// Returns a random color
    public static var randomColor: Color {
        return Color(
            red: randomValue,
            green: randomValue,
            blue: randomValue,
            alpha: 1.0)
    }
    
    /// Returns a random bright color
    public static var randomBrightColor: Color {
        return Color(
            red: 0.5 + randomValue / 2.0,
            green: 0.5 + randomValue / 2.0,
            blue: 0.5 + randomValue / 2.0,
            alpha: 1.0)
    }
    
    /// Returns a random dim color
    public static var randomDimColor: Color {
        return Color(
            red: randomValue / 2.0,
            green: randomValue / 2.0,
            blue: randomValue / 2.0,
            alpha: 1.0)
    }
}
