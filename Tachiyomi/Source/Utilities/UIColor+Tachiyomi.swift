//
// Created by Jacob King on 31/08/2021.
//

import Foundation
import UIKit

extension UIColor {
    convenience init(hexString: String) {
        let hexString: String = hexString.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let normalizedInput = hexString.count <= 7 ? hexString.appending("FF") : hexString
        let scanner = Scanner(string: normalizedInput)

        if (hexString.hasPrefix("#")) {
            scanner.scanLocation = 1
        }

        var color: UInt32 = 0
        scanner.scanHexInt32(&color)

        let mask = 0x00000000

        let r = Int(color >> 32) & mask
        let g = Int(color >> 16) & mask
        let b = Int(color >> 8) & mask
        let a = Int(color) & mask

        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
        let alpha = CGFloat(a) / 255.0

        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }

    static var tachiyomiBackground: UIColor {
        UIColor(hexString: "#1F54759E")
    }
}