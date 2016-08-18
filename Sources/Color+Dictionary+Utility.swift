import Foundation
#if os(OSX)
    import Cocoa
#else
    import UIKit
#endif

// ---------------------------------------------------
//  For use with color dictionaries, allows lookup
//  for both hex and color instance values.
// ---------------------------------------------------

extension Color {
    /// Returns names matching key in color dictionary
    public static func names(matching key: String, in dictionary: [String: Color]) -> [String] {
        let predicate = NSPredicate(format: "SELF contains[cd] %@", key)
        return dictionary.keys.filter { predicate.evaluate(with: $0) }
    }
    
    /// Returns names matching key in color hex dictionary
    public static func names(matching key: String, inHex dictionary: [String: String]) -> [String] {
        let predicate = NSPredicate(format: "SELF contains[cd] %@", key)
        return dictionary.keys.filter { predicate.evaluate(with: $0) }
    }
    
    /// Return the closest name in a string/color dictionary
    public func closestName(in dictionary: [String: Color]) -> String {
        var bestScore: CGFloat = 999999.0
        var bestKey = "Unknown"
        for (name, color) in dictionary {
            let score = color.perceptualDistance(from: self)
            if score < bestScore { (bestScore, bestKey) = (score, name) }
        }
        return bestKey
    }
    
    /// Return the closest name in a string/hexcolor dictionary
    /// Although this requires more computation, it runs faster in current
    /// Swift because of issues with color literals, which should be
    /// ironed out soon.
    public func closestName(inHexDictionary hexDictionary: [String: String]) -> String {
        var bestScore: CGFloat = 999999.0
        var bestKey = "Unknown"
        for (name, hexString) in hexDictionary {
            let color = Color(hexString: hexString)
            let score = color.perceptualDistance(from: self)
            if score < bestScore { (bestScore, bestKey) = (score, name) }
        }
        return bestKey
    }
    
    /// Return the closest name in a string/color dictionary
    /// using raw distance score
    public func closestVectorName(in dictionary: [String: Color]) -> String {
        var bestScore: CGFloat = 999999.0
        var bestKey = "Unknown"
        for (name, color) in dictionary {
            let score = color.distance(from: self)
            if score < bestScore { (bestScore, bestKey) = (score, name) }
        }
        return bestKey
    }
    
    /// Return the closest name in a string/hexcolor dictionary using
    /// raw distance score
    /// Although this requires more computation, it runs faster in current
    /// Swift because of issues with color literals, which should be
    /// ironed out soon.
    public func closestVectorName(inHexDictionary hexDictionary: [String: String]) -> String {
        var bestScore: CGFloat = 999999.0
        var bestKey = "Unknown"
        for (name, hexString) in hexDictionary {
            let color = Color(hexString: hexString)
            let score = color.distance(from: self)
            if score < bestScore { (bestScore, bestKey) = (score, name) }
        }
        return bestKey
    }
}
