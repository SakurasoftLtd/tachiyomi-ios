//
// Created by Jacob King on 31/08/2021.
//

import Foundation
import UIKit

extension UIFont {
    static var tachiyomiLibraryItemTitle: UIFont {
        UIFont(name: "PTSans-NarrowBold", size: 22) ?? UIFont.systemFont(ofSize: systemFontSize)
    }
    
    static var tachiyomiStandardText: UIFont {
        .systemFont(ofSize: 18)
    }
    
    static var tachiyomiCtaText: UIFont {
        .systemFont(ofSize: 22)
    }
}
