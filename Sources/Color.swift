import Foundation

// Establish primary `Color` typealias for each platform.
//
// * SKColor is automatically assigned by platform.
// * CIColor is not covered under this general declaration

#if canImport(UIKit)

    @_exported import UIKit
    public typealias Color = UIColor

    // iOS, tvOS, watchOS:
    // `typealias SKColor = UIColor`

#elseif canImport(Cocoa)

    @_exported import Cocoa
    public typealias Color = NSColor

    // macOS:
    // `typealias SKColor = NSColor`

#else

    // Error is not yet live. Waiting on Swift 4.2
    // #error("Unsupported Color Utility platform")

#endif

