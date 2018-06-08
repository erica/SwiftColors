// ---------------------------------------------------
//  YUV
// ---------------------------------------------------

extension Color {
    /// Returns yuv 3-tuple.
    public func yuv() -> (y: CGFloat, u: CGFloat, v: CGFloat) {
        let clamp = MathUtility.unitclamp
        let y = 0.299 * r + 0.587 * g + 0.114 * b
        let u = 0.5 + (b - y) * 0.565
        let v = 0.5 + (r - y) * 0.713
        return (y: clamp(y), u: clamp(u), v: clamp(v))
    }
    
    /// Constructs new color instance from yuv 3-tuple.
    convenience init(y: CGFloat, u: CGFloat, v: CGFloat) {
        let (u, v) = (u - 0.5, v - 0.5)
        let r = y + 1.403 * v
        let g = y - 0.344 * u - 0.714 * v
        let b = y + 1.770 * u
        self.init(red: r, green: g, blue: b, alpha: 1.0)
    }
}


