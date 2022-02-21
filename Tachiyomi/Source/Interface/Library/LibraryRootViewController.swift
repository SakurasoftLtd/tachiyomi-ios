//
// Created by Jacob King on 31/08/2021.
//

import Foundation
import UIKit
import SnapKit

class LibraryRootViewController: BaseViewController {

    private lazy var collectionView: UICollectionView =  {
        let layoutItemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.2), heightDimension: .fractionalWidth(0.27))
        let layoutItem = NSCollectionLayoutItem(layoutSize: layoutItemSize)
        layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)
        let layoutGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(0.27))
        let layoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: layoutGroupSize, subitems: [layoutItem])
        let layoutSection = NSCollectionLayoutSection(group: layoutGroup)
        let layout = UICollectionViewCompositionalLayout(section: layoutSection)

        let it = UICollectionView(frame: .zero, collectionViewLayout: layout)
        it.backgroundColor = .clear
        it.translatesAutoresizingMaskIntoConstraints = false
        return it
    }()

    var viewModel: LibraryRootViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()

        configureSubviews()
        viewModel = LibraryRootViewModel(collectionView: collectionView)
    }

    private func configureSubviews() {

        view.addSubview(collectionView)

        collectionView.snp.makeConstraints { (make: ConstraintMaker) in
            make.edges.equalTo(self.view.safeAreaLayoutGuide)
        }
    }

}
