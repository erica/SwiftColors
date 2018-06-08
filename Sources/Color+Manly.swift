#if os(OSX)
    import Cocoa
#else
    import UIKit
#endif

/// Mens colors provide a restricted set of name categories
/// Magenta and Cyan are renamed to more common names
/// and a secondary color walk fills in other colors
public let mensColorNames: [String: Color] = [
    // Primary color walk
    "Red": .red,
    "Orange": .orange,
    "Yellow": .yellow,
    "Green": .green,
    "Blue": .blue,
    "Purple": .purple,
    "Blue-Green": .cyan,
    "Red-Purple": .magenta,
    
    // Secondary "missing" colors
    "Green-Blue":  Color(red: 0.0, green: 0.5, blue: 0.5,  alpha: 1.0),
    "Dark Purple": Color(red: 0.5, green: 0.0, blue: 0.5,  alpha: 1.0),
    "Khaki":       Color(red: 0.0, green: 0.5, blue: 0.5,  alpha: 1.0),
    "Pink":        Color(red: 1.0, green: 0.0, blue: 0.75, alpha: 1.0),
    
    // Brown
    "Brown": .brown,
    
    // Monochrome
    "Black": .black,
    "Gray": .gray,
    "Dark Gray": .darkGray,
]
public extension Color {
    var closestMensColorName: String {
        return closestName(in: mensColorNames)
    }
}
