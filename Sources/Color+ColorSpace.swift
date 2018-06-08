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
        guard let model = self.colorSpaceModel
            else { return "Not a valid color space" }
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
    
    /// Specifies whether a color can vend RGB channels.
    public var canVendRGBChannels: Bool {
        guard let colorSpaceModel = colorSpaceModel
            else { return false }
        return [CGColorSpaceModel.rgb]
            .contains(colorSpaceModel)
    }
    
    /// Specifies whether a color can vend B&W channels.
    public var canVendMonochromeChannels: Bool {
        guard let colorSpaceModel = colorSpaceModel
            else { return false }
        return [CGColorSpaceModel.monochrome]
            .contains(colorSpaceModel)
    }
    
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
}
