// ---------------------------------------------------
//  Channel Access
// ---------------------------------------------------

extension Color {
    /// The channels available for an RGBA color.
    public enum RGBAChannel: Int { case red, green, blue, alpha }
    /// The channels available for an HSBA color.
    public enum HSBAChannel: Int { case hue, saturation, brightness, alpha }
    /// The channels available for an WA (White-Alpha) monochrome color.
    public enum WAChannel: Int { case white, alpha }
    
    fileprivate struct Complaints {
        fileprivate static let nonRGBColor = "Not an RGB color."
        fileprivate static let nonMonochromeColor = "Not a monochrome color."
        fileprivate static let unsupportedColorModel = "Unsupported color model."
    }
    
    /// Presents the color as an RGBA instance even if the underlying
    /// color model is monochrome.
    public var rgbaView: Color {
        if canVendRGBChannels { return self }
        var (w, a): (CGFloat, CGFloat) = (0, 0)
        self.getWhite(&w, alpha: &a)
        return Color(red: w, green: w, blue: w, alpha: a)
    }
    
    /// Luminance weights, following SMPTE C - CCIR Rec 709
    ///
    /// - Reference: [Luma](http://en.wikipedia.org/wiki/Luma_(video))
    public enum RGBChannelWeights_709: CGFloat {
        case r = 0.2126
        case g = 0.7152
        case b = 0.0722
    }

    /// Luminance weights following CCIR Rec 601
    ///
    /// - Reference: [Luma](http://en.wikipedia.org/wiki/Luma_(video))
    public enum RGBChannelWeights_601: CGFloat {
        case r = 0.2989
        case g = 0.5870
        case b = 0.1140
    }
    
    /// Coefficients used to calculate relative luminance
    /// using coefficients based on the CIE Color Matching
    /// Functions and standard RGB chromaticities with
    /// respect to monitors. Modern HDTV systems use 709
    /// coefficients.
    public typealias RGBChannelWeights = RGBChannelWeights_709
    
    /// Presents the color as an WA monochrome instance even if the
    /// underlying color model is RGBA.
    ///
    /// - Reference: [Luma](http://en.wikipedia.org/wiki/Luma_(video))
    public var waView: Color {
        if canVendMonochromeChannels { return self }
        var (r, g, b, a): (CGFloat, CGFloat, CGFloat, CGFloat) = (0, 0, 0, 0)
        self.getRed(&r, green: &g, blue: &b, alpha: &a)
        /// Uses CCIR Rect 709 coefficients
        let w = zip([RGBChannelWeights_709.r, .g, .b], [r, g, b])
            .map({ $0.rawValue * $1 })
            .reduce(0.0 as CGFloat, +)
        return Color(white: w, alpha: a)
    }
    
    /// A color's luminance
    public var luminance: CGFloat {
        return self.waView.white
    }
    
    /// Returns the value stored in a given channel.
    public subscript(channel: RGBAChannel) -> CGFloat {
        guard self.canVendRGBChannels
            else { fatalError(Complaints.nonRGBColor) }
        var (r, g, b, a): (CGFloat, CGFloat, CGFloat, CGFloat) = (0, 0, 0, 0)
        self.getRed(&r, green: &g, blue: &b, alpha: &a)
        return [r, g, b, a][channel.rawValue]
    }
    
    /// Return the value stored in a given channel.
    public subscript(channel: HSBAChannel) -> CGFloat {
        guard self.canVendRGBChannels
            else { fatalError(Complaints.nonRGBColor) }
        var (h, s, b, a): (CGFloat, CGFloat, CGFloat, CGFloat) = (0, 0, 0, 0)
        self.getHue(&h, saturation: &s, brightness: &b, alpha: &a)
        return [h, s, b, a][channel.rawValue]
    }
    
    /// Return the value stored in a given channel.
    public subscript(channel: WAChannel) -> CGFloat {
        guard self.canVendMonochromeChannels
            else { fatalError(Complaints.nonMonochromeColor) }
        var (w, a): (CGFloat, CGFloat) = (0, 0)
        self.getWhite(&w, alpha: &a)
        return [w, a][channel.rawValue]
    }
}

extension Color {
    /// The red component value of the color.
    ///
    /// Access this property only for colors in the calibratedRGB
    /// or deviceRGB color spaces. RGB values are converted to HSB
    /// values as needed. Accessing it for other color types raises
    /// an exception.
    @objc(ES_red)
    public var red: CGFloat {
        return self.rgbaView[RGBAChannel.red]
    }
    
    /// The green component value of the color.
    ///
    /// Access this property only for colors in the calibratedRGB
    /// or deviceRGB color spaces. RGB values are converted to HSB
    /// values as needed. Accessing it for other color types raises
    /// an exception.
    @objc(ES_green)
    public var green: CGFloat {
        return self.rgbaView[RGBAChannel.green]
    }
    
    /// The blue component value of the color.
    ///
    /// Access this property only for colors in the calibratedRGB
    /// or deviceRGB color spaces. RGB values are converted to HSB
    /// values as needed. Accessing it for other color types raises
    /// an exception.
    @objc(ES_blue)
    public var blue: CGFloat {
        return self.rgbaView[RGBAChannel.blue]
    }
    
    /// The alpha component value of the color.
    @objc(ES_alpha)
    public var alpha: CGFloat {
        if canVendMonochromeChannels {
            return self[WAChannel.alpha ]
        }
        return self[RGBAChannel.alpha]
    }
    
    /// The hue component value of the color.
    ///
    /// Access this property only for colors in the calibratedRGB
    /// or deviceRGB color spaces. RGB values are converted to HSB
    /// values as needed. Accessing it for other color types raises
    /// an exception.
    @objc(ES_hue)
    public var hue: CGFloat {
        return self.rgbaView[HSBAChannel.hue]
    }
    
    /// The saturation component value of the color.
    ///
    /// Access this property only for colors in the calibratedRGB
    /// or deviceRGB color spaces. RGB values are converted to HSB
    /// values as needed. Accessing it for other color types raises
    /// an exception.
    @objc(ES_saturation)
    public var saturation: CGFloat {
        return self.rgbaView[HSBAChannel.saturation]
    }
    
    /// The brightness component value of the color.
    ///
    /// Access this property only for colors in the calibratedRGB
    /// or deviceRGB color spaces. RGB values are converted to HSB
    /// values as needed. Accessing it for other color types raises
    /// an exception.
    @objc(ES_brightness)
    public var brightness: CGFloat {
        return self.rgbaView[HSBAChannel.brightness]
    }
    
    /// The white component value of the color.
    ///
    /// Access this property only for colors in the calibratedWhite,
    /// NSCalibratedBlackColorSpace, NSDeviceBlackColorSpace, or
    /// deviceWhite color spaces. Accessing it for other color types raises
    /// an exception.
    @objc(ES_white)
    public var white: CGFloat {
        return self.waView[WAChannel.white]
    }
}

#if canImport(UIKit)
/*
 if you want to publicly extend obj-c classes you need to prefix it
 `@objc(ES_redComponent) var redComponent: CGFloat` works -- Kevin B
 */


// These components exist in Cocoa but not Cocoa Touch
// These behave just like the ones in Cocoa, including
// the likelihood that you'll raise an exception when
// used for colors that are not in NSCalibratedRGBColorSpace
// or NSDeviceRGBColorSpace. On the whole, these custom
// implementations are more resiliant than Cocoa because
// I allow you to, for example, pull red components from
// B&W colors by treating all channels as equal contributions.
extension UIColor {
    /// The red component value of the color.
    ///
    /// Access this property only for colors in the calibratedRGB
    /// or deviceRGB color spaces. RGB values are converted to HSB
    /// values as needed. Accessing it for other color types raises
    /// an exception.
    @objc(ES_redComponent)
    public var redComponent: CGFloat { return red }
    /// The green component value of the color.
    ///
    /// Access this property only for colors in the calibratedRGB
    /// or deviceRGB color spaces. RGB values are converted to HSB
    /// values as needed. Accessing it for other color types raises
    /// an exception.
    @objc(ES_greenComponent)
    public var greenComponent: CGFloat { return green }
    /// The blue component value of the color.
    ///
    /// Access this property only for colors in the calibratedRGB
    /// or deviceRGB color spaces. RGB values are converted to HSB
    /// values as needed. Accessing it for other color types raises
    /// an exception.
    @objc(ES_blueComponent)
    public var blueComponent: CGFloat { return blue }
    /// The alpha component value of the color.
    @objc(ES_alphaComponent)
    public var alphaComponent: CGFloat { return alpha }
    /// The hue component value of the color.
    ///
    /// Access this property only for colors in the calibratedRGB
    /// or deviceRGB color spaces. RGB values are converted to HSB
    /// values as needed. Accessing it for other color types raises
    /// an exception.
    @objc(ES_hueComponent)
    public var hueComponent: CGFloat { return hue }
    /// The saturation component value of the color.
    ///
    /// Access this property only for colors in the calibratedRGB
    /// or deviceRGB color spaces. RGB values are converted to HSB
    /// values as needed. Accessing it for other color types raises
    /// an exception.
    @objc(ES_saturationComponent)
    public var saturationComponent: CGFloat { return saturation }
    /// The brightness component value of the color.
    ///
    /// Access this property only for colors in the calibratedRGB
    /// or deviceRGB color spaces. RGB values are converted to HSB
    /// values as needed. Accessing it for other color types raises
    /// an exception.
    @objc(ES_brightnessComponent)
    public var brightnessComponent: CGFloat { return brightness }
    
    /// This property works only with objects representing colors in the
    /// NSCalibratedWhiteColorSpace, NSCalibratedBlackColorSpace,
    /// NSDeviceBlackColorSpace, or NSDeviceWhiteColorSpace color space.
    /// Sending it to other objects raises an exception.
    @objc(ES_whiteComponent)
    public var whiteComponent: CGFloat { return white }
}
#endif

// ---------------------------------------------------
//  Premultiplied Colors
// ---------------------------------------------------

extension Color {
    /// Returns red, premultiplied by alpha
    public var premultipliedRed: CGFloat { return red * alpha }
    /// Returns green, premultiplied by alpha
    public var premultipliedGreen: CGFloat { return green * alpha }
    /// Returns blue, premultiplied by alpha
    public var premultipliedBlue: CGFloat { return blue * alpha }
}



