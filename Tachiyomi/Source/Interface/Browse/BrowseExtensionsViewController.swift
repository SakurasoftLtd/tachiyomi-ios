//
// Created by Jacob King on 01/09/2021.
//

import SnapKit
import UIKit

class BrowseExtensionsViewController: BaseViewController {
    
    private lazy var tableView: UITableView = {
        let it = UITableView()
        it.translatesAutoresizingMaskIntoConstraints = false
        it.backgroundColor = .clear
        return it
    }()
    
    private lazy var noResultsView: NoResultsView = {
        let it = NoResultsView(text: "You don't have any extension repositories configured.", cta: "Add one?")
        it.translatesAutoresizingMaskIntoConstraints = false
//        it.isHidden = true
        return it
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureSubviews()
    }

    private func configureSubviews() {
        [tableView, noResultsView].forEach(view.addSubview)

        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        noResultsView.snp.makeConstraints { make in
            make.center.equalTo(tableView)
            make.width.equalTo(tableView).dividedBy(2)
        }
    }
}
