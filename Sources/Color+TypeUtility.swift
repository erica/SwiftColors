#if os(OSX)
    import Cocoa
    public typealias Color = NSColor
#else
    import UIKit
    public typealias Color = UIColor
#endif

extension Double {
    /// Returns CGFloat representation
    internal var cgfloat: CGFloat { return CGFloat(self) }
}

extension CGFloat {
    /// Returns Double representation
    internal var double: Double { return Double(self) }
}

extension String {
    /// Converts string to hex value. This supports 0x, 0X prefix if present
    internal var hexValue: Int {
        let string = self.hasPrefix("0x") ? String(characters.dropFirst(2)) : self
        return Int(string, radix: 16) ?? 0
    }

    /// Left pads string to at least `minWidth` characters wide
    internal func leftPad(_ character: Character, toWidth minWidth: Int) -> String {
        guard minWidth > characters.count else { return self }
        return String(repeating: String(character), count: minWidth - characters.count) + self
    }
}

extension Int {
    /// Returns Int's representation as hex string using 0-padding
    /// to represent the smallest standard memory footprint that can
    /// store the value.
    internal var hexString : String {
        let unpaddedHex = String(self, radix:16, uppercase: true)
        let stringCharCount = unpaddedHex.characters.count
        let desiredPadding = 1 << Swift.max(fls(Int32(stringCharCount - 1)), 1) // Thanks, Greg Titus
        return unpaddedHex.leftPad("0", toWidth: Int(desiredPadding))
    }
}

