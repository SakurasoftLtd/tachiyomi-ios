//
// Created by Jacob King on 28/08/2021.
//

import Foundation
import UIKit

enum NavigableTab: Int, CaseIterable {
    case one
    case two
    case three
    case four
    case five

    func tabAfter() -> NavigableTab? {
        return NavigableTab(rawValue: rawValue + 1)
    }

    func tabBefore() -> NavigableTab? {
        return NavigableTab(rawValue: rawValue - 1)
    }

    func createViewController() -> UIViewController {
        switch self {
        case .one:
            let vc = UIViewController()
            let tabItem = UITabBarItem(title: "One", image: nil, tag: rawValue)
            vc.tabBarItem = tabItem
            vc.view.backgroundColor = .red
            return vc
        case .two:
            let vc = UIViewController()
            let tabItem = UITabBarItem(title: "Two", image: nil, tag: rawValue)
            vc.tabBarItem = tabItem
            vc.view.backgroundColor = .blue
            return vc
        case .three:
            let vc = UIViewController()
            let tabItem = UITabBarItem(title: "Three", image: nil, tag: rawValue)
            vc.tabBarItem = tabItem
            vc.view.backgroundColor = .green
            return vc
        case .four:
            let vc = UIViewController()
            let tabItem = UITabBarItem(title: "Four", image: nil, tag: rawValue)
            vc.tabBarItem = tabItem
            vc.view.backgroundColor = .yellow
            return vc
        case .five:
            let vc = UIViewController()
            let tabItem = UITabBarItem(title: "Five", image: nil, tag: rawValue)
            vc.tabBarItem = tabItem
            vc.view.backgroundColor = .purple
            return vc
        }
    }
}