//
// Created by Jacob King on 31/08/2021.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.tachiyomiBackground
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
}