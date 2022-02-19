//
// Created by Jacob King on 01/09/2021.
//

import Foundation
import UIKit
import RxSwift
import RxDataSources
import RxRelay

class BrowseSourcesViewModel: BrowseViewModel {

    private let dataRelay = BehaviorRelay(value: [Source]())

    weak var tableView: UITableView?

    required init(tableView: UITableView) {
        self.tableView = tableView
//        dataRelay.bind(to: tableView.rx.items(cellIdentifier: <#T##String##Swift.String#>, cellType: <#T##Cell.Type##Cell.Type#>))
    }

    func reloadDataset() {

    }
}
