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

        let viewController: UIViewController
        let tabItem: UITabBarItem

        switch self {
        case .library:
            viewController = LibraryRootViewController()
            viewController.navigationItem.title = "tab_library".localizedValue
            tabItem = UITabBarItem(title: "tab_library".localizedValue, image: UIImage(named: "ic_library"), tag: rawValue)
        case .updates:
            viewController = UpdatesViewController()
            viewController.navigationItem.title = "tab_updates".localizedValue
            tabItem = UITabBarItem(title: "tab_updates".localizedValue, image: UIImage(named: "ic_updates"), tag: rawValue)
        case .history:
            viewController = HistoryViewController()
            viewController.navigationItem.title = "tab_history".localizedValue
            tabItem = UITabBarItem(title: "tab_history".localizedValue, image: UIImage(named: "ic_history"), tag: rawValue)
        case .browse:
            viewController = BrowseViewController()
            viewController.navigationItem.title = "tab_browse".localizedValue
            tabItem = UITabBarItem(title: "tab_browse".localizedValue, image: UIImage(named: "ic_browse"), tag: rawValue)
        case .more:
            viewController = MoreViewController()
            viewController.navigationItem.title = "tab_more".localizedValue
            tabItem = UITabBarItem(title: "tab_more".localizedValue, image: UIImage(named: "ic_more"), tag: rawValue)
        }

        let navigationController = BaseNavigationController(rootViewController: viewController)
        navigationController.tabBarItem = tabItem

        return navigationController
    }
}