import UIKit

public func * (left: String, right: Int) -> String {
    if right <= 0 {
        return ""
    }

    var result = left
    for _ in 1..<right {
        result += left
    }

    return result
}

public extension NSCharacterSet {
    class func numericCharacterSet() -> NSCharacterSet {
        return NSCharacterSet(charactersInString: "0123456789")
    }
}

public extension String {
    var isNumeric: Bool {
        guard !self.isEmpty else { return false }

        return self.rangeOfCharacterFromSet(NSCharacterSet.numericCharacterSet().invertedSet) == nil
    }

    var length: Int {
        return self.characters.count
    }
}

public extension UIColor {

    public convenience init(hex: String) {
        var hexString = hex.stringByTrimmingCharactersInSet(NSCharacterSet.alphanumericCharacterSet().invertedSet).uppercaseString

        guard hexString.length == 3 || hexString.length == 6 else {
            self.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
            return
        }

        if hexString.length == 3 {
            let r = hexString.substringFromIndex(hexString.startIndex).substringToIndex(hexString.startIndex.advancedBy(1)) * 2
            let g = hexString.substringFromIndex(hexString.startIndex.advancedBy(1)).substringToIndex(hexString.startIndex.advancedBy(1)) * 2
            let b = hexString.substringFromIndex(hexString.startIndex.advancedBy(2)).substringToIndex(hexString.startIndex.advancedBy(1)) * 2

            hexString = r + g + b
        }

        var rgbValue : UInt32 = 0
        NSScanner(string: hexString).scanHexInt(&rgbValue)

        let red = CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8) / 255.0
        let blue = CGFloat(rgbValue & 0xFF) / 255.0

        self.init(red: red, green: green, blue: blue, alpha: 1.0)
    }

    public class func colorWithHex(hex: String) -> UIColor {
        return UIColor(hex: hex)
    }
}