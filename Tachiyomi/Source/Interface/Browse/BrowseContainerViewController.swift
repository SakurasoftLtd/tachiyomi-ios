//
// Created by Jacob King on 31/08/2021.
//

import Foundation
import UIKit
import SnapKit
import RxCocoa
import RxSwift

class BrowseViewController: BaseViewController {

    private lazy var disposeBag = DisposeBag()
    
    private lazy var sourcesViewController = BrowseSourcesViewController()
    private lazy var extensionsViewController = BrowseExtensionsViewController()
    private weak var embeddedViewController: BaseViewController?
    
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

    private lazy var containerView: UIView = {
        let it = UIView()
        it.translatesAutoresizingMaskIntoConstraints = false
        return it
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureSubviews()
        configureObservers()
        changeEmbeddedContent(toIndex: 0)
    }

    private func configureSubviews() {
        [segmentedControl, containerView].forEach(view.addSubview)

        segmentedControl.snp.makeConstraints { (make: ConstraintMaker) in
            make.top.leading.trailing.equalToSuperview().inset(80)
            make.centerX.equalToSuperview()
        }

        containerView.snp.makeConstraints { (make: ConstraintMaker) in
            make.top.equalTo(segmentedControl.snp.bottom).offset(16)
            make.leading.trailing.bottom.equalTo(self.view.safeAreaLayoutGuide)
        }
    }
    
    private func configureObservers() {
        segmentedControl.rx.value
            .distinctUntilChanged()
            .observe(on: MainScheduler.instance)
            .subscribe(onNext: changeEmbeddedContent)
            .disposed(by: disposeBag)

    }
    
    private func changeEmbeddedContent(toIndex index: Int) {
        
        embeddedViewController?.view.removeFromSuperview()
        embeddedViewController?.removeFromParent()
        
        switch index {
        case 0:
            embeddedViewController = sourcesViewController
        case 1:
            embeddedViewController = extensionsViewController
        default:
            embeddedViewController = nil
        }
        
        guard let newVC = embeddedViewController else {
            return
        }
        
        addChild(newVC)
        containerView.addSubview(newVC.view)
        newVC.view.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
