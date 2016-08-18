import Foundation

#if os(OSX)
    import Cocoa
#else
    import UIKit
#endif

// ---------------------------------------------------
//  Distance
// ---------------------------------------------------

extension Color {
    
    /// Returns the vector distance between two colors
    public func distance(from another: Color) -> CGFloat {
        let dR = r - another.r
        let dG = g - another.g
        let dB = b - another.b
        // The sqrt is probably not needed here
        return sqrt(dR * dR + dG * dG + dB * dB)
    }
    
    /// Returns the hsb distance between two colors
    public func hsbDistance(from another: Color) -> CGFloat {
        let dH = hue - another.hue
        let dS = saturation - another.saturation
        let dB = brightness - another.brightness
        // The sqrt is probably not needed here
        return sqrt(dH * dH + dS * dS + dB * dB)
    }
    
    public func toXYZ() -> (x: CGFloat, y: CGFloat, z: CGFloat) {
        func baseConvert(_ value: CGFloat) -> CGFloat {
            return 100.0 * ((value > 0.04045) ?
                pow((value + 0.055) / 1.055, 2.4) : value / 12.92)
        }
        let (rr, gg, bb) = (baseConvert(r), baseConvert(g), baseConvert(b))
        //Observer. = 2°, Illuminant = D65
        let xx = rr * 0.4124 + gg * 0.3576 + bb * 0.1805
        let yy = rr * 0.2126 + gg * 0.7152 + bb * 0.0722
        let zz = rr * 0.0193 + gg * 0.1192 + bb * 0.9505
        return (x: xx, y: yy, z: zz)
    }
    
    public func toLAB() -> (l: CGFloat, a: CGFloat, b: CGFloat) {
        func baseConvert(_ value: CGFloat) -> CGFloat {
            return (value > 0.008856) ?
                pow(value, (1.0 / 3.0)) : (7.787 * value) + (16.0 / 116.0)
        }
        let (x, y, z) = toXYZ()
        let (xx, yy, zz) = (baseConvert(x), baseConvert(y), baseConvert(z))
        let ll = (116.0 * yy) - 16.0
        let aa = 500.0 * (xx - yy)
        let bb = 200.0 * (yy - zz)
        return (l: ll, a: aa, b: bb)
    }
    
    /// Returns the perceptual distance between two colors
    public func perceptualDistance(from another: Color) -> CGFloat {
        let (l1, a1, b1) = self.toLAB()
        let (l2, a2, b2) = another.toLAB()
        let (dl, da, db) = ((l2 - l1), (a2 - a1), (b2 - b1))
        return sqrt(dl * dl + da * da + db * db)
    }
    
    /// Returns a color interpolated between the starting color and the ending color
    /// where a lower percent more heavily favors c1, and a higher percent c2
    public static func interpolate(_ c1: Color, _ c2: Color, by percent: CGFloat = 0.5) -> Color {
        assert(percent >= 0.0 && percent <= 1.0, "Illegal interpolation percentage")
        let diff: CGFloat = 1.0 - percent
        let r = c2.r * percent + c1.r * diff
        let g = c2.g * percent + c1.g * diff
        let b = c2.b * percent + c1.b * diff
        let a = c2.a * percent + c1.a * diff
        return Color(red: r, green: g, blue: b, alpha: a)
    }
}


/// Adds two colors
public func +(lhs: Color, rhs: Color) -> Color {
    let r = Color.unitclamp(lhs.r + rhs.r)
    let g = Color.unitclamp(lhs.g + rhs.g)
    let b = Color.unitclamp(lhs.b + rhs.b)
    let a = max(lhs.a, rhs.a) // max of the two
    return Color(red: r, green: g, blue: b, alpha: a)
}

/// Add float
public func +(lhs: Color, rhs: CGFloat) -> Color {
    let r = Color.unitclamp(lhs.r + rhs)
    let g = Color.unitclamp(lhs.g + rhs)
    let b = Color.unitclamp(lhs.b + rhs)
    let a = lhs.a // retain lhs
    return Color(red: r, green: g, blue: b, alpha: a)
}

/// Subtracts two colors
public func -(lhs: Color, rhs: Color) -> Color {
    let r = Color.unitclamp(rhs.r - lhs.r)
    let g = Color.unitclamp(rhs.g - lhs.g)
    let b = Color.unitclamp(rhs.b - lhs.b)
    let a = lhs.a // retain lhs
    return Color(red: r, green: g, blue: b, alpha: a)
}

/// Subtract float
public func -(lhs: Color, rhs: CGFloat) -> Color {
    let r = Color.unitclamp(lhs.r - rhs)
    let g = Color.unitclamp(lhs.g - rhs)
    let b = Color.unitclamp(lhs.b - rhs)
    let a = lhs.a // retain lhs
    return Color(red: r, green: g, blue: b, alpha: a)
}

/// Multiplying colors
public func *(lhs: Color, rhs: Color) -> Color {
    let r = Color.unitclamp(lhs.r * rhs.r)
    let g = Color.unitclamp(lhs.g * rhs.g)
    let b = Color.unitclamp(lhs.b * rhs.b)
    let a = max(lhs.a, rhs.a) // max of the two
    return Color(red: r, green: g, blue: b, alpha: a)
}

/// Multiply by float
public func *(lhs: Color, rhs: CGFloat) -> Color {
    let r = Color.unitclamp(lhs.r * rhs)
    let g = Color.unitclamp(lhs.g * rhs)
    let b = Color.unitclamp(lhs.b * rhs)
    let a = lhs.a // retain lhs
    return Color(red: r, green: g, blue: b, alpha: a)
}

extension Color {
    /// Returns color by lightening to max of two colors
    public func lightening(to another: Color) -> Color {
        let r = Swift.max(self.r, another.r)
        let g = Swift.max(self.g, another.g)
        let b = Swift.max(self.b, another.b)
        let a = self.a // retain lhs
        return Color(red: r, green: g, blue: b, alpha: a)
    }

    /// Returns color by darkening to max of two colors
    public func darkening(to another: Color) -> Color {
        let r = Swift.min(self.r, another.r)
        let g = Swift.min(self.g, another.g)
        let b = Swift.min(self.b, another.b)
        let a = self.a // retain lhs
        return Color(red: r, green: g, blue: b, alpha: a)
    }
}
