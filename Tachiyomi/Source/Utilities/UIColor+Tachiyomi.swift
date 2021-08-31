//
// Created by Jacob King on 31/08/2021.
//

import Foundation
import UIKit

extension UIColor {
    convenience init(hexString: String, alpha: CGFloat = 1.0) {
        let hexString: String = hexString.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let scanner = Scanner(string: hexString)
        if (hexString.hasPrefix("#")) {
            scanner.scanLocation = 1
        }
        var color: UInt32 = 0
        scanner.scanHexInt32(&color)
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }

    static var tachiyomiBackground: UIColor {
        UIColor(hexString: "#202125")
    }

    static var tachiyomiIconInactive: UIColor {
        UIColor(hexString: "FFFFFF", alpha: 0x80 / 255)
    }

    static var tachiyomiIconActive: UIColor {
        UIColor(hexString: "#3598FE")
    }

    static var tachiyomiNavigationTitle: UIColor {
        UIColor(hexString: "FFFFFF", alpha: 0x80 / 255)
    }
}