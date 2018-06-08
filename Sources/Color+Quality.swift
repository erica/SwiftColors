/*
 9/2/16 Note: Added delta guards so minimal offsets will not affect color integrity delta adjustments I've set these arbitrarily to 0.001 for additive deltas, 0.000001 for multiplicative deltas). Thanks Curt Rothert for the tip. See also: https://developer.apple.com/videos/play/wwdc2016/712/
 */

extension Color {
    /// The degree to which a color is non-monochromatic.
    ///
    /// - Returns: a value indicating a degree of colorfulness
    ///   that indicates how far away a color is from grayscale tones.
    public var colorfulness: CGFloat {
        let (d1, d2, d3) =
            (abs(red - green), abs(green - blue), abs(blue - red))
        return (d1 + d2 + d3) / 2.0
    }
    
    /// Expresses the warmth of a color.
    ///
    /// The warmth of a color ranges from 0..1, cold (BLUE) to hot (YELLOW)
    /// Obviously, this isn't a standard "heat" map. I picked blue as my
    /// coldest color and adjusted the warmth value around that. Yellow is
    /// 180 degrees off from blue. If you want red as hot, use a zero offset
    /// but "cold" goes to aqua.
    ///
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
 }


