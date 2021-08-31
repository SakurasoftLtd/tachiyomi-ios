//
// Created by Jacob King on 28/08/2021.
//

import Foundation
import UIKit

class BaseNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationBar.isTranslucent = true
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.tachiyomiNavigationTitle]
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
}