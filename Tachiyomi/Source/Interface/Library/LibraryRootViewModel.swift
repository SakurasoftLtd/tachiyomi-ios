//
// Created by Jacob King on 31/08/2021.
//

import Foundation
import UIKit
import RxSwift
import RxDataSources

class LibraryRootViewModel {

    weak var collectionView: UICollectionView?
    let disposeBag = DisposeBag()

    // TEMP Source
    let itemSource = Observable.just([
        LibraryItem(title: "Himegoto", imageUrl: nil),
        LibraryItem(title: "Bokutachi wa benkyou ga dekinai", imageUrl: nil),
        LibraryItem(title: "Futaribeya", imageUrl: nil),
        LibraryItem(title: "Yagate kimi ni naru", imageUrl: nil),
        LibraryItem(title: "Attack on Titan", imageUrl: nil),
        LibraryItem(title: "One Piece", imageUrl: nil)
    ])

    init(collectionView: UICollectionView) {
        self.collectionView = collectionView

        collectionView.register(LibraryItemCollectionViewCell.self, forCellWithReuseIdentifier: LibraryItemCollectionViewCell.identifier)
        itemSource.bind(to: collectionView.rx.items(cellIdentifier: LibraryItemCollectionViewCell.identifier, cellType: LibraryItemCollectionViewCell.self)) { index, model, cell in
            cell.bind(to: model)
        }
        .disposed(by: disposeBag)
    }
}