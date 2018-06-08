extension Color {
    /// Returns color with additive hue adjustment.
    ///
    /// Hue adjustments are circular, so they roll over at 1.0 and 0.0.
    ///
    /// - Returns: a new color after adjusting a hue.
    /// - Parameter delta: the offset to apply to the hue.
    public func adjustingHue(by delta: CGFloat) -> Color {
        guard abs(delta) > 0.001 else { return self }
        let value = Color.normalize(hue: hue + delta)
        return Color(hue: value,
                     saturation: saturation,
                     brightness: brightness,
                     alpha: alphaComponent)
    }
    
    /// Adjusts saturation with additive component, which may be
    /// negative or positive.
    ///
    /// - Returns: a new color after adjusting saturation.
    /// - Parameter delta: the offset to apply to the saturation.
    public func adjustingSaturation(by delta: CGFloat) -> Color {
        guard abs(delta) > 0.001 else { return self }
        let value = MathUtility.unitclamp(saturation + delta)
        return Color(hue: hue,
                     saturation: value,
                     brightness: brightness,
                     alpha: alphaComponent)
    }
    
    /// Adjusts brightness with additive component, which may be
    /// negative or positive.
    ///
    /// - Returns: a new color after adjusting brightness.
    /// - Parameter delta: the offset to apply to the brightness.
    public func adjustingBrightness(by delta: CGFloat) -> Color {
        guard abs(delta) > 0.001 else { return self }
        let value = MathUtility.unitclamp(brightness + delta)
        return Color(hue: hue,
                     saturation: saturation,
                     brightness: value,
                     alpha: alphaComponent)
    }
    
    /// Returns a new color by replacing the hue in an existing
    /// color.
    ///
    /// parameter value: the new hue.
    public func withHue(_ value: CGFloat) -> Color {
        let value = Color.normalize(hue: value)
        return Color(hue: value,
                     saturation: saturation,
                     brightness: brightness,
                     alpha: alphaComponent)
    }
    
    /// Returns a new color by replacing the saturation in an existing
    /// color.
    ///
    /// parameter value: the new saturation.
    public func withSaturation(_ value: CGFloat) -> Color {
        let value = MathUtility.unitclamp(value)
        return Color(hue: hue,
                     saturation: value,
                     brightness: brightness,
                     alpha: alphaComponent)
    }
    
    /// Returns a new color by replacing the brightness in an existing
    /// color.
    ///
    /// parameter value: the new brightness.
    public func withBrightness(_ value: CGFloat) -> Color {
        let value = MathUtility.unitclamp(value)
        return Color(hue: hue,
                     saturation: saturation,
                     brightness: value,
                     alpha: alphaComponent)
    }
    
    /// Returns a highlight color that is likely to contrast well
    /// with this color based on the color's overall luminance.
    ///
    /// This works best for colors further away from middle gray
    /// (0x777777).
    public func contrasting() -> Color {
        // FIXME: This is farked, see SR-7935
        // return luminance > 0.5 ? .black : .white
        return luminance > 0.5
            ? .black
            : Color(red: 1, green: 1, blue: 1, alpha: 1)
    }

    /// Creates a color that is 180 degrees away in hue
    public var complement: Color {
        let theHue = Color.normalize(hue: hue + 0.5)
        return Color(hue: theHue,
                     saturation: saturation,
                     brightness: brightness,
                     alpha: alphaComponent)
    }
    
    /// Return a complementary color between two source colors
    public static func kevinColor(between c1: Color, and c2: Color) -> Color {
        // Desired hue is halfway between the longer arc
        let hueDistance = abs(c2.hue - c1.hue)
        var destHue = (c1.hue + c2.hue) / 2.0
        if hueDistance < 0.5 { destHue += 0.5 }
        destHue = fmod(destHue, 1.0)
        let sat = (c1.saturation + c2.saturation) / 2.0
        let bri = (c1.brightness + c2.brightness) / 2.0
        // average alpha rather than retain lhs
        let alpha = (c1.alpha + c2.alpha) / 2.0
        return Color(hue: destHue, saturation: sat,
                     brightness: bri, alpha: alpha)
    }
    
    /// Picks two more colors such that all three are equidistant
    /// on the color wheel, specifically 120 and 240 degrees off
    public var triadics: (Color, Color) {
        let hue1 = Color.normalize(hue: hue + 0.3333333)
        let hue2 = Color.normalize(hue: hue + 0.6666666)
        return (Color(hue: hue1, saturation: saturation,
                      brightness: brightness, alpha: alpha),
                Color(hue: hue2, saturation: saturation,
                      brightness: brightness, alpha: alpha))
    }

    /// Creates a hue walk sequence.
    ///
    /// - Parameter stepAngle: the distance (in hue terms) to increase
    ///   or decrease the current hue.
    /// - Returns: a sequence by stepping through hues by the step angle,
    /// either positive or negative.
    public func step(by stepDelta: CGFloat) -> UnfoldSequence<Color, CGFloat>{
        return sequence(state: hue, next: {
            (state : inout CGFloat) -> Color? in
            defer { state = state + stepDelta }
            
            /// limits the degree to which the end color can be equal
            let tolerance: CGFloat = 1.0 - (1.0 / 32.0)
            
            /// Perform endcheck without normalizing hue values
            guard state < self.hue + tolerance,
                state > self.hue - tolerance
                else { return nil }
            
            /// Normalize the hue state and continue
            return Color(hue: Color.normalize(hue: state),
                         saturation: self.saturation,
                         brightness: self.brightness,
                         alpha: self.alpha)
        })
    }
}
