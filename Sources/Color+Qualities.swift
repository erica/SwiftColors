import Foundation

#if os(OSX)
    import Cocoa
#else
    import UIKit
#endif

/*
 9/2/16 Note: Added delta guards so minimal offsets will not affect color integrity delta adjustments I've set these arbitrarily to 0.001 for additive deltas, 0.000001 for multiplicative deltas). Thanks Curt Rothert for the tip. See also: https://developer.apple.com/videos/play/wwdc2016/712/
 */

extension Color {
    /// The degree to which a color is non-monochromatic
    public var colorfulness: CGFloat {
        let (d1, d2, d3) = (abs(r - g), abs(g - b), abs(b - r))
        return (d1 + d2 + d3) / 2.0
    }
    
    /// The warmth of a color, ranging from 0..1, cold (BLUE) to hot (YELLOW)
    /// Obviously, this isn't a standard "heat" map. I picked blue as my coldest
    /// color and adjusted the warmth value around that. Yellow is 180 degrees off
    /// from blue. If you want red as hot, use a zero offset but "cold" goes to aqua.
    /// You can do a lot more math (exercise left for reader) and squeeze
    /// blue to red and expand orange to whatever that blue color is between
    /// aqua and blue.
    public var warmth: CGFloat {
        let adjustment: CGFloat = 2.0 / 12.0
        // recenter to -0.2 to 0.8
        var theHue = hue - adjustment
        // recenter to symmetric -0.5 to 0.5
        if theHue > 0.5 { theHue -= 1.0 }
        return (0.5 - abs(theHue)) * 2.0
    }
    
    /// Returns color with additive hue adjustment
    public func adjustingHue(by delta: CGFloat) -> Color {
        guard abs(delta) > 0.001 else { return self }
        let value = min(1.0, max(0.0, hue + delta))
        return Color(hue: value, saturation: saturation, brightness: brightness, alpha: alphaComponent)
    }
    
    /// Returns color with additive saturation adjustment
    public func adjustingSaturation(by delta: CGFloat) -> Color {
        guard abs(delta) > 0.001 else { return self }
        let value = min(1.0, max(0.0, saturation + delta))
        return Color(hue: hue, saturation: value, brightness: brightness, alpha: alphaComponent)
    }
    
    /// Returns color with additive brightness adjustment
    public func adjustingBrightness(by delta: CGFloat) -> Color {
        guard abs(delta) > 0.001 else { return self }
        let value = min(1.0, max(0.0, brightness + delta))
        return Color(hue: hue, saturation: saturation, brightness: value, alpha: alphaComponent)
    }
    
    /// Returns color with multiplicative hue adjustment
    public func scalingHue(by delta: CGFloat) -> Color {
        guard abs(delta - 1.0) > 0.00001 else { return self }
        let value = min(1.0, max(0.0, hue * delta))
        return Color(hue: value, saturation: saturation, brightness: brightness, alpha: alphaComponent)
    }
    
    /// Returns color with multiplicative saturation adjustment
    public func scalingSaturation(by delta: CGFloat) -> Color {
        guard abs(delta - 1.0) > 0.00001 else { return self }
        let value = min(1.0, max(0.0, saturation * delta))
        return Color(hue: hue, saturation: value, brightness: brightness, alpha: alphaComponent)
    }
    
    /// Returns color with multiplicative brightness adjustment
    public func scalingBrightness(by delta: CGFloat) -> Color {
        guard abs(delta - 1.0) > 0.00001 else { return self }
        let value = min(1.0, max(0.0, brightness * delta))
        return Color(hue: hue, saturation: saturation, brightness: value, alpha: alphaComponent)
    }

    
    /// Returns color with hue replacement
    public func withHue(_ value: CGFloat) -> Color {
        return Color(hue: value, saturation: saturation, brightness: brightness, alpha: alphaComponent)
    }
    
    /// Returns color with saturation replacement
    public func withSaturation(_ value: CGFloat) -> Color {
        return Color(hue: hue, saturation: value, brightness: brightness, alpha: alphaComponent)
    }
    
    /// Returns color with brightness replacement
    public func withBrightness(_ value: CGFloat) -> Color {
        return Color(hue: hue, saturation: saturation, brightness: value, alpha: alphaComponent)
    }
    
    /// Picks a color that is likely to contrast well with this color
    public var contrasting: Color {
        return luminance > 0.5 ? Color.black : Color.white
    }
    
    /// Picks the color that is 180 degrees away in hue
    public var complement: Color {
        let theHue = fmod(hue + 0.5, 1.0)
        return Color(hue: theHue, saturation: saturation, brightness: brightness, alpha: alphaComponent)
    }
    
    /// Takes 2 colors and returns a third complimentary one
    public static func kevinColor(c1: Color, c2: Color) -> Color {
        // Desired hue is halfway between the longer arc
        let hueDistance = abs(c2.hue - c1.hue)
        var destHue = (c1.hue + c2.hue) / 2.0
        if hueDistance < 0.5 { destHue += 0.5 }
        destHue = fmod(destHue, 1.0)
        let sat = (c1.sat + c2.sat) / 2.0
        let bri = (c1.bri + c2.bri) / 2.0
        let alpha = (c1.a + c2.a) / 2.0 // average alpha rather than retain lhs
        return Color(hue: destHue, saturation: sat, brightness: bri, alpha: alpha)
    }
    
    /// Picks two more colors such that all three are equidistant
    /// on the color wheel, specifically 120 and 240 degrees off
    public var triadics: (Color, Color) {
        let hue1 = fmod(hue + 0.33333333, 1.0)
        let hue2 = fmod(hue + 0.66666666, 1.0)
        return (Color(hue: hue1, saturation: saturation, brightness: brightness, alpha: alphaComponent),
                Color(hue: hue2, saturation: saturation, brightness: brightness, alpha: alphaComponent))
    }
    
    /// Returns a sequence by stepping through hues by the step angle, either positive or negative
    public func step(by stepAngle: CGFloat) -> UnfoldSequence<Color, CGFloat>{
        return sequence(state: hue, next: {
            (state : inout CGFloat) -> Color? in
            defer { state = state + stepAngle }
            /// limits the degree to which the end color can be equal
            let epsilon: CGFloat  = 1.0 / 32.0
            let tolerance = 1.0 - epsilon
            guard state < self.hue + tolerance, state > self.hue - tolerance else { return nil }
            return Color(hue: fmod(state, 1.0),
                         saturation: self.saturation,
                         brightness: self.brightness,
                         alpha: self.alphaComponent)
        })
    }
}

