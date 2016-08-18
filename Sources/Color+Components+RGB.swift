import Foundation

#if os(OSX)
    import Cocoa
#else
    import UIKit
#endif

// ---------------------------------------------------
//  RGB
// ---------------------------------------------------

// Components: Follows the NSColor model in that it will fatally error
// when a request is made from a non-compliant color model
let componentComplaint = "Cannot extract components from non-RGB color"

extension Color {
    /// Returns true if color uses monochrome color space
    public var isMonochrome: Bool {
        guard let model = colorSpaceModel else { return false }
        return model == .monochrome
    }
    
    /// Returns true if color uses RGB color space
    public var isRGB: Bool {
        guard let model = colorSpaceModel else { return false }
        return model == .rgb
    }

    /// Returns true if the color can provide RGB components
    public var canProvideRGBComponents: Bool {
        guard let model = colorSpaceModel else { return false }
        return [CGColorSpaceModel.rgb, .monochrome].contains(model)
    }
    
    // These properties appears to confuse current Swift. The component
    // instance properties overlap the names of the imported class
    // constructors https://bugs.swift.org/browse/SR-2374
    
    // Since UIColor does not provide component members and NSColor does
    // these provide checked common access points for cross-platform use
    
    /// Returns red component
    public var redChannel: CGFloat {
        assert(self.canProvideRGBComponents, componentComplaint)
        guard let model = self.colorSpaceModel else { fatalError(componentComplaint) }
        switch model {
        case .rgb: return redComponent
        case .monochrome: return whiteComponent
        default: fatalError(componentComplaint)
        }
    }
    
    /// Returns green component
    public var greenChannel: CGFloat {
        assert(self.canProvideRGBComponents, componentComplaint)
        guard let model = self.colorSpaceModel else { fatalError(componentComplaint) }
        switch model {
        case .rgb: return greenComponent
        case .monochrome: return whiteComponent
        default: fatalError(componentComplaint)
        }
    }
    
    /// Returns blue component
    public var blueChannel: CGFloat {
        assert(self.canProvideRGBComponents, componentComplaint)
        guard let model = self.colorSpaceModel else { fatalError(componentComplaint) }
        switch model {
        case .rgb: return blueComponent
        case .monochrome: return whiteComponent
        default: fatalError(componentComplaint)
        }
    }
    
    /// Returns alpha component
    public var alphaChannel: CGFloat {
        assert(self.canProvideRGBComponents, componentComplaint)
        guard let model = self.colorSpaceModel else { fatalError(componentComplaint) }
        switch model {
        case .rgb, .monochrome: return alphaComponent
        default: fatalError(componentComplaint)
        }
    }
    
    /// Returns color luminance
    /// - reference: [Luma](http://en.wikipedia.org/wiki/Luma_(video))
    public var luminance: CGFloat {
        assert(self.canProvideRGBComponents, componentComplaint)
        guard let model = self.colorSpaceModel else { fatalError(componentComplaint) }
        switch model {
        case .rgb: return redChannel * 0.2126 + greenChannel * 0.7152 + blueChannel * 0.0722
        case .monochrome: return whiteComponent
        default: fatalError(componentComplaint)
        }
    }
    
    /// Converts color to a grayscale representation
    public var toGrayscale: Color {
        return Color(white: luminance, alpha: alphaChannel)
    }
    
    /// Returns white component as a synonym for luminance
    public var whiteChannel: CGFloat { return luminance }
    
    // Convenience synonyms
    
    /// Returns Red component
    public var r: CGFloat { return redChannel }
    /// Returns Green component
    public var g: CGFloat { return greenChannel }
    /// Returns Blue component
    public var b: CGFloat { return blueChannel }
    /// Returns Alpha component
    public var a: CGFloat { return alphaChannel }
}

// ---------------------------------------------------
//  Premultiplied
// ---------------------------------------------------
extension Color {
    /// Returns red, premultiplied by alpha
    public var premultipliedRed: CGFloat { return redChannel * alphaChannel }
    /// Returns green, premultiplied by alpha
    public var premultipliedGreen: CGFloat { return greenChannel * alphaChannel }
    /// Returns blue, premultiplied by alpha
    public var premultipliedBlue: CGFloat { return blueChannel * alphaChannel }
}

