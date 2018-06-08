// ---------------------------------------------------
//  Type Utilities
// ---------------------------------------------------

import Foundation

#if canImport(QuartzCore)
    import QuartzCore
#else
    // Will error in 4.2
    // #error("Required module (QuartzCore) not available.")
#endif


// ---------------------------------------------------
//  Courtesy conversions between CGFloat and Double
// ---------------------------------------------------

extension Double {
    /// Returns CGFloat representation
    internal var cgfloat: CGFloat { return CGFloat(self) }
}

extension CGFloat {
    /// Returns Double representation
    internal var double: Double { return Double(self) }
}

// ---------------------------------------------------
//  Hex conversion
// ---------------------------------------------------

extension String {
    /// Treats string as hex source for integer value.
    ///
    /// A hex representation uses 8-bit values for
    /// each color value. It does not represent wide
    /// color values, which use 16-bit values per
    /// channel.
    ///
    /// - Note: supports 0x, 0X prefixes when present
    internal var hexValue: Int {
        let string = self.hasPrefix("0x")
            ? self.dropFirst(2)
            : self[...]
        return Int(string, radix: 16) ?? 0
    }
}

extension String {
    /// Left pads string to at least `minWidth` characters wide.
    ///
    /// - Parameter character: padding character
    /// - Parameter minWidth: the requested minimum character width
    /// - Returns: The source string, which is left-padded using the
    ///   padding character to the minimum requested width or the
    ///   original string if it exceeds that width.
    fileprivate func leftPad(
        _ character: Character,
        toWidth minWidth: Int
        ) -> String {
        guard minWidth > count
            else { return self }
        return String(repeating: String(character),
                      count: minWidth - count) + self
    }
}

extension Int {
    /// Returns an integer's hex string 0-padded representation.
    ///
    /// The representation uses the smallest standard memory footprint
    /// that can store the value.
    internal var hexString : String {
        let unpaddedHex = String(self, radix:16, uppercase: true)
        let stringCharCount = unpaddedHex.count
        let desiredPadding = 1 << Swift.max(fls(Int32(
            stringCharCount - 1)), 1) // Thanks, Greg Titus
        return unpaddedHex.leftPad("0", toWidth: Int(desiredPadding))
    }
}

// ---------------------------------------------------
//  Clamping and Type Conversion
// ---------------------------------------------------

internal enum MathUtility {
    /// Returns the value clamped to 0.0 ... 1.0
    internal static func unitclamp(_ value: CGFloat) -> CGFloat {
        return Swift.max(0.0, Swift.min(1.0, value))
    }

    /// Returns an 8 bit unsigned representation of a value between 0.0 and 1.0
    internal static func byte(from value: CGFloat) -> UInt8 {
        return UInt8(floor(unitclamp(value) * 255.0))
    }
}

// ---------------------------------------------------
//  Hue normalization
// ---------------------------------------------------

extension Color {
    /// Returns a normalized hue, which wraps around the
    /// color wheel both in positive and negative directions.
    internal static func normalize(hue: CGFloat) -> CGFloat {
        // The first fmod may return a negative value, so
        // adding 1.0 and re-applying fmod ensures the final
        // value falls between 0.0 and 1.0.
        return fmod(fmod(hue, 1.0) + 1.0, 1.0)
    }
}

// ---------------------------------------------------
//  Initialization
// ---------------------------------------------------

extension Color {
    /// Permits unnamed RGBA initialization. As a rule, prefer using
    /// named initializers to this.
    ///
    /// - Warning: Does not support wide color
    public convenience init(_ r: CGFloat, _ g: CGFloat,
                            _ b: CGFloat, _ a: CGFloat) {
        let r = MathUtility.unitclamp(r)
        let g = MathUtility.unitclamp(g)
        let b = MathUtility.unitclamp(b)
        let a = MathUtility.unitclamp(a)
        self.init(red: r, green: g, blue: b, alpha: a)
    }

    /// Initialize from a well formed hex string. A malformed string
    /// returns black `(r: 0, g: 0, b: 0, a: 1)`.
    ///
    /// - Warning: Does not support wide color
   public convenience init(hexString: String) {
        let subString = hexString.hasPrefix("0x") || hexString.hasPrefix("0X")
            ? hexString.dropFirst(2)
            : hexString[...]
        let hexString = String(subString)
        let value = hexString.hexValue
        let (r, g, b) = (value >> 16, (value >> 8) % 256, value % 256)
        self.init(red: CGFloat(r) / 256.0,
                  green: CGFloat(g) / 256.0,
                  blue: CGFloat(b) / 256.0,
                  alpha: 1.0)
    }
    
    /// Initialize color with 4 RGBA CGFloat values between 0 and 1.
    ///
    /// - Warning: Does not support wide color
    public convenience init(rgbaValues channels: [CGFloat]) {
        assert(channels.count == 4, "Expected RGBA channel array")
        self.init(red: channels[0],
                  green: channels[1],
                  blue: channels[2],
                  alpha: channels[3])
    }
    
    /// Initialize color with RGBA hex value.
    ///
    /// - Warning: Does not support wide color
    public convenience init(rgbaValue hex: UInt32) {
        var copy = hex.bigEndian
        let channels = withUnsafeBytes(of: &copy) { hex in
            hex.map({ CGFloat($0) / 255.0 })
        }
        self.init(rgbaValues: channels)
    }
}



