#if os(macOS)
    import Cocoa
    public typealias Color = NSColor
#else
    import UIKit
    public typealias Color = UIColor
#endif

extension Color {
    /// Initialize color with 4 RGBA CGFloat values between 0 and 1
    /// - warning: Does not support wide color
    public convenience init(rgbaValues channels: [CGFloat]) {
        assert(channels.count == 4, "Expected RGBA channel array")
        self.init(red: channels[0],
                  green: channels[1],
                  blue: channels[2],
                  alpha: channels[3])
    }
    
    /// Initialize color with RGBA hex value
    /// - warning: Does not support wide color
    public convenience init(rgbaValue hex: UInt32) {
        var copy = hex.bigEndian
        let channels = withUnsafeBytes(of: &copy) { hex in
                hex.map({ CGFloat($0) / 255.0 })
        }
        self.init(rgbaValues: channels)
    }
}

let rgba = Color(rgbaValue: 0xF2E4C6aa)



