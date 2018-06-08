// ---------------------------------------------------
//  CMYK
// ---------------------------------------------------

extension Color {
    
    /// Creates color with CMYK
    ///
    /// - Warning: Does not support wide color
    public convenience init?(c: CGFloat, m: CGFloat, y: CGFloat, k: CGFloat) {
        let range = CGFloat(0.0) ... CGFloat(1.0)
        guard range.contains(c), range.contains(m), range.contains(y), range.contains(k) else { return nil }
        let r = (1.0 - c) * (1.0 - k)
        let g = (1.0 - m) * (1.0 - k)
        let b = (1.0 - y) * (1.0 - k)
        self.init(red: r, green: g, blue: b, alpha: 1.0)
    }
    
    /// Creates color with CMYK
    ///
    /// - Warning: Does not support wide color
   public convenience init?(cyan: CGFloat, magenta: CGFloat, yellow: CGFloat, black: CGFloat) {
        self.init(c: cyan, m: magenta, y: yellow, k: black)
    }
    
    /// Returns CMYK's black component.
    public var blackChannel: CGFloat {
        return 1.0 - max(redChannel, greenChannel, blueChannel)
    }
    
    /// Returns CMYK's cyan component.
    public var cyanChannel: CGFloat {
        let k = blackChannel
        let dK = 1.0 - k
        return (1.0 - (redChannel + k)) / dK
    }
    
    /// Returns CMYK's magenta component.
    public var magentaChannel: CGFloat {
        let k = blackChannel
        let dK = 1.0 - k
        return (1.0 - (greenChannel + k)) / dK
    }
    
    /// Returns CMYK's yellow component.
    public var yellowChannel: CGFloat {
        let k = blackChannel
        let dK = 1.0 - k
        return (1.0 - (blueChannel + k)) / dK
    }
    
    /// Returns CMYK 4-tuple.
    public func toCMYK() -> (cyan: CGFloat, magenta: CGFloat, yellow: CGFloat, black: CGFloat) {
        let k = blackChannel
        let dK = 1.0 - blackChannel
        let c = (1.0 - (redChannel + k)) / dK
        let m = (1.0 - (greenChannel + k)) / dK
        let y = (1.0 - (blueChannel + k)) / dK
        return (cyan: c, magenta: m, yellow: y, black: k)
    }
    
    /// Returns Cyan component.
    public var cyan: CGFloat { return cyanChannel }
    /// Returns Magenta component.
    public var magenta: CGFloat { return magentaChannel }
    /// Returns Yellow component.
    public var yellow: CGFloat { return yellowChannel }
    /// Returns Black component.
    public var black: CGFloat { return blackChannel }
}

