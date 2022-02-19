//
// Created by Jacob King on 01/09/2021.
//

import Foundation
import UIKit

protocol BrowseViewModel {

    var tableView: UITableView? { get set }

    init(tableView: UITableView)

    func reloadDataset()
}