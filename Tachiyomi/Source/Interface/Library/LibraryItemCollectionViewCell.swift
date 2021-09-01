//
// Created by Jacob King on 31/08/2021.
//

import Foundation
import UIKit
import SnapKit
import CoreData

class LibraryItemCollectionViewCell: UICollectionViewCell, Identified {

    private(set) static var identifier = "LibraryItemCollectionViewCell"

    private lazy var itemCoverImageView: UIImageView = {
        let it = UIImageView()
        it.translatesAutoresizingMaskIntoConstraints = false
        it.backgroundColor = .darkGray
        return it
    }()

    private lazy var itemTitleLabel: UILabel = {
        let it = UILabel()
        it.setContentHuggingPriority(.required, for: .vertical)
        it.numberOfLines = 0
        it.font = UIFont.tachiyomiLibraryItemTitle
        it.textColor = .white
        it.translatesAutoresizingMaskIntoConstraints = false
        return it
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureSubviews()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureSubviews()
    }

    func configureSubviews() {
        backgroundColor = .white
        layer.cornerRadius = 10
        clipsToBounds = true

        [itemCoverImageView, itemTitleLabel].forEach(contentView.addSubview)

        itemCoverImageView.snp.makeConstraints { (make: ConstraintMaker) in
            make.edges.equalToSuperview()
        }

        itemTitleLabel.snp.makeConstraints { (make: ConstraintMaker) in
            make.bottom.leading.trailing.equalToSuperview().inset(16)
        }
    }

    func bind(to model: LibraryItem) {
        itemTitleLabel.text = model.title
        itemCoverImageView.image = nil
    }
}