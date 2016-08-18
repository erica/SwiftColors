/*
 if you want to publicly extend obj-c classes you need to prefix it
 `@objc(ES_redComponent) var redComponent: CGFloat` works -- Kevin B
 */

#if os(OSX)
    import Cocoa
#else
    import UIKit
#endif

#if !os(OSX)
    
    // These components exist in Cocoa but not Cocoa Touch
    // These behave just like the ones in Cocoa, including
    // the likelihood that you'll raise an exception when 
    // used for colors that are not in NSCalibratedRGBColorSpace
    // or NSDeviceRGBColorSpace
    extension UIColor {
        public var redComponent: CGFloat {
            var value: CGFloat = 0.0
            self.getRed(&value, green: nil, blue: nil, alpha: nil)
            return value
        }
        
        public var greenComponent: CGFloat {
            var value: CGFloat = 0.0
            self.getRed(nil, green: &value, blue: nil, alpha: nil)
            return value
        }
        
        public var blueComponent: CGFloat {
            var value: CGFloat = 0.0
            self.getRed(nil, green: nil, blue: &value, alpha: nil)
            return value
        }
        
        public var alphaComponent: CGFloat {
            var value: CGFloat = 0.0
            self.getRed(nil, green: nil, blue: nil, alpha: &value)
            return value
        }
        
        public var hueComponent: CGFloat {
            var value: CGFloat = 0.0
            self.getHue(&value, saturation: nil, brightness: nil, alpha: nil)
            return value
        }
        
        public var saturationComponent: CGFloat {
            var value: CGFloat = 0.0
            self.getHue(nil, saturation: &value, brightness: nil, alpha: nil)
            return value
        }
        
        public var brightnessComponent: CGFloat {
            var value: CGFloat = 0.0
            self.getHue(nil, saturation: nil, brightness: &value, alpha: nil)
            return value
        }
    }
    
    // This method works only with objects representing colors in the
    // NSCalibratedWhiteColorSpace, NSCalibratedBlackColorSpace,
    // NSDeviceBlackColorSpace, or NSDeviceWhiteColorSpace color space.
    // Sending it to other objects raises an exception.
    extension Color {
        public var whiteComponent: CGFloat {
            var value: CGFloat = 0.0
            self.getWhite(&value, alpha: nil)
            return value
        }
    }
#endif
