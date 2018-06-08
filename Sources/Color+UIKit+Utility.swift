#if !os(OSX)
// #if canImport(UIKit)
    import UIKit
    
    extension UIColor {
        func swatch(width: CGFloat = 1, height: CGFloat = 1) -> UIImage {
            let size = CGSize(width: width, height: height)
            let renderer = UIGraphicsImageRenderer(size: size)
            return renderer.image { context in
                self.set(); UIRectFill(context.format.bounds)
            }
        }
        
        func swatch(extent: CGFloat = 1) -> UIImage {
            return swatch(width: extent, height: extent)
        }
    }
#endif
