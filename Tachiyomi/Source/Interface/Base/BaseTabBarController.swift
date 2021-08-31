//
// Created by Jacob King on 28/08/2021.
//

import Foundation
import UIKit

class BaseTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.isTranslucent = true
        tabBar.backgroundImage = UIImage()
        tabBar.shadowImage = UIImage()
        tabBar.tintColor = UIColor.tachiyomiIconActive
        tabBar.unselectedItemTintColor = UIColor.tachiyomiIconInactive
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
}