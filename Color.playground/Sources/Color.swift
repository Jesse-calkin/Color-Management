import UIKit

public class Color: UIColor, StringLiteralConvertible {

     required public init(stringLiteral value: StringLiteralType) {
        var red: CGFloat = 0.0, green: CGFloat = 0.0, blue: CGFloat = 0.0, alpha: CGFloat = 0.0

        UIColor(hex: value).getRed(&red, green: &green, blue: &blue, alpha: &alpha)

        super.init(red: red, green: green, blue: blue, alpha: 1.0)
    }

    required public init(extendedGraphemeClusterLiteral value: String) {
        var red: CGFloat = 0.0, green: CGFloat = 0.0, blue: CGFloat = 0.0, alpha: CGFloat = 0.0

        UIColor(hex: value).getRed(&red, green: &green, blue: &blue, alpha: &alpha)

        super.init(red: red, green: green, blue: blue, alpha: 1.0)
    }

    required public init(unicodeScalarLiteral value: String) {
        var red: CGFloat = 0.0, green: CGFloat = 0.0, blue: CGFloat = 0.0, alpha: CGFloat = 0.0

        UIColor(hex: value).getRed(&red, green: &green, blue: &blue, alpha: &alpha)

        super.init(red: red, green: green, blue: blue, alpha: 1.0)
    }

    public init(hex: String) {
        var red: CGFloat = 0.0, green: CGFloat = 0.0, blue: CGFloat = 0.0, alpha: CGFloat = 0.0

        UIColor(hex: hex).getRed(&red, green: &green, blue: &blue, alpha: &alpha)

        super.init(red: red, green: green, blue: blue, alpha: 1.0)
    }

    required public init(colorLiteralRed red: Float, green: Float, blue: Float, alpha: Float) {

        super.init(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(alpha))
    }

    required public init?(coder aDecoder: NSCoder) {

        super.init(coder: aDecoder)
    }
}