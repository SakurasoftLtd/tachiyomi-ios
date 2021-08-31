//
// Created by Jacob King on 28/08/2021.
//

import Foundation
import UIKit

enum NavigableTab: Int, CaseIterable {
    case library
    case updates
    case history
    case browse
    case more

    func tabAfter() -> NavigableTab? {
        return NavigableTab(rawValue: rawValue + 1)
    }

    func tabBefore() -> NavigableTab? {
        return NavigableTab(rawValue: rawValue - 1)
    }

    func createViewController() -> UIViewController {
        switch self {
        case .library:
            let vc = UIViewController()
            let tabItem = UITabBarItem(title: "tab_library".localizedValue, image: UIImage(named: "ic_library"), tag: rawValue)
            vc.tabBarItem = tabItem
            vc.view.backgroundColor = .red
            return vc
        case .updates:
            let vc = UIViewController()
            let tabItem = UITabBarItem(title: "tab_updates".localizedValue, image: UIImage(named: "ic_updates"), tag: rawValue)
            vc.tabBarItem = tabItem
            vc.view.backgroundColor = .blue
            return vc
        case .history:
            let vc = UIViewController()
            let tabItem = UITabBarItem(title: "tab_history".localizedValue, image: UIImage(named: "ic_history"), tag: rawValue)
            vc.tabBarItem = tabItem
            vc.view.backgroundColor = .green
            return vc
        case .browse:
            let vc = UIViewController()
            let tabItem = UITabBarItem(title: "tab_browse".localizedValue, image: UIImage(named: "ic_browse"), tag: rawValue)
            vc.tabBarItem = tabItem
            vc.view.backgroundColor = .yellow
            return vc
        case .more:
            let vc = UIViewController()
            let tabItem = UITabBarItem(title: "tab_more".localizedValue, image: UIImage(named: "ic_more"), tag: rawValue)
            vc.tabBarItem = tabItem
            vc.view.backgroundColor = .purple
            return vc
        }
    }
}