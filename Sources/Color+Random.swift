// Random Colors
// ---------------------------------------------------
//  Random Colors
// ---------------------------------------------------

extension Color {
    /// Returns a random value in 0.0 ... 1.0
    fileprivate static func randomValue() -> CGFloat {
        // TODO: Update to SE-0206 in Swift 4.2
        return CGFloat(arc4random_uniform(256)) / 255.0
    }
    
    /// Returns a random color
    ///
    /// - Parameter range: The highest level a channel may hold, must be
    ///   greater than zero and less than or equal to one.
    /// - Parameter offset: The lowest level a channel may hold, must be
    ///   greater than or equal to zero and less than one.
    /// - Parameter randomizeAlpha: Set to `true` to randomize
    ///   color transparency.
    public static func randomColor(
        range: CGFloat = 1.0,
        offset: CGFloat = 0.0,
        randomizeAlpha: Bool = false
        ) -> Color {
        precondition(range > 0.0 && range <= 1.0,
                     "Invalid random color range")
        precondition(offset >= 0.0 && offset < 1.0,
                     "Invalid random color offset")
       return Color(
            red:   offset + range * randomValue(),
            green: offset + range * randomValue(),
            blue:  offset + range * randomValue(),
            alpha: randomizeAlpha ? randomValue() : 1.0)
    }
    
    /// Returns a random bright color
    public static func randomBrightColor() -> Color {
        return randomColor(range: 0.5, offset: 0.5)
    }
    
    /// Returns a random dim color
    public static func randomDimColor() -> Color {
        return randomColor(range: 0.5, offset: 0.0)
    }
}
