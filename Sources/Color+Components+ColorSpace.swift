import Foundation

#if os(OSX)
    import Cocoa
#else
    import UIKit
#endif

// ---------------------------------------------------
//  Color Space
// ---------------------------------------------------

extension Color {
    /// Returns color space model
    public var colorSpaceModel: CGColorSpaceModel? {
        return cgColor.colorSpace?.model
    }
    
    /// Returns name for color space
    public var colorSpaceString: String {
        guard let model = self.colorSpaceModel else { return "Not a valid color space" }
        switch model {
        case .unknown: return "Unknown"
        case .monochrome: return "Monochrome"
        case .rgb: return "RGB"
        case .cmyk: return "CMYK"
        case .lab: return "Lab"
        case .deviceN: return "DeviceN"
        case .indexed: return "Indexed"
        case .pattern: return "Pattern"
        }
    }
}
