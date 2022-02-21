//
// Created by Jacob King on 31/08/2021.
//

import Foundation
import UIKit
import SnapKit

class BrowseViewController: BaseViewController {

    private lazy var segmentedControl: UISegmentedControl = {
        let it = UISegmentedControl(items: ["browse_segment_sources".localizedValue, "browse_segment_extensions".localizedValue])
        it.backgroundColor = .clear
        it.tintColor = .tachiyomiIconInactive
        it.selectedSegmentTintColor = .tachiyomiIconActive
        it.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .normal)
        it.selectedSegmentIndex = 0
        it.translatesAutoresizingMaskIntoConstraints = false
        return it
    }()

    private lazy var tableView: UITableView = {
        let it = UITableView()
        it.translatesAutoresizingMaskIntoConstraints = false
        it.backgroundColor = .clear
        return it
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        configureSubviews()
    }

    private func configureSubviews() {
        [segmentedControl, tableView].forEach(view.addSubview)

        segmentedControl.snp.makeConstraints { (make: ConstraintMaker) in
            make.top.leading.trailing.equalToSuperview().inset(80)
            make.centerX.equalToSuperview()
        }

        tableView.snp.makeConstraints { (make: ConstraintMaker) in
            make.top.equalTo(segmentedControl.snp.bottom).offset(16)
            make.leading.trailing.bottom.equalTo(self.view.safeAreaLayoutGuide)
        }
    }
}
