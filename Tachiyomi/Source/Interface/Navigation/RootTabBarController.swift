//
// Created by Jacob King on 28/08/2021.
//

import Foundation
import UIKit

class RootTabBarController: BaseTabBarController {

    init() {
        super.init(nibName: nil, bundle: nil)
        setViewControllers(NavigableTab.allCases.map { $0.createViewController() } , animated: false)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}