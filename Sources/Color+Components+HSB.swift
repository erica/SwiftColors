import Foundation

#if os(OSX)
    import Cocoa
#else
    import UIKit
#endif

// ---------------------------------------------------
//  HSB
// ---------------------------------------------------

extension Color {
    
    /// Returns hue
    public var hue: CGFloat {
        assert(self.canProvideRGBComponents, componentComplaint)
        guard let model = self.colorSpaceModel else { fatalError(componentComplaint) }
        switch model {
        case .rgb:
            var value: CGFloat = 0.0
            self.getHue(&value, saturation: nil, brightness: nil, alpha: nil)
            return value
        case .monochrome: return 0.0
        default: fatalError(componentComplaint)
        }
    }
    
    /// Returns saturation
    public var saturation: CGFloat {
        assert(self.canProvideRGBComponents, componentComplaint)
        guard let model = self.colorSpaceModel else { fatalError(componentComplaint) }
        switch model {
        case .rgb:
            var value: CGFloat = 0.0
            self.getHue(nil, saturation: &value, brightness: nil, alpha: nil)
            return value
        case .monochrome: return 0.0
        default: fatalError(componentComplaint)
        }
    }
    
    /// Returns brightness
    public var brightness: CGFloat {
        assert(self.canProvideRGBComponents, componentComplaint)
        guard let model = self.colorSpaceModel else { fatalError(componentComplaint) }
        switch model {
        case .rgb:
            var value: CGFloat = 0.0
            self.getHue(nil, saturation: nil, brightness: &value, alpha: nil)
            return value
        case .monochrome: return whiteComponent
        default: fatalError(componentComplaint)
        }
    }
    
    // Synonyms
    /// Returns saturation
    public var sat: CGFloat { return saturation }
    /// Returns brightness
    public var bri: CGFloat { return brightness }
}

