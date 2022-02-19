//
// Created by Jacob King on 01/09/2021.
//

import Foundation
import UIKit
import SnapKit

class BrowseTableViewCell: UITableViewCell, Identified {

    private(set) static var identifier = "BrowseTableViewCell"

    private lazy var artworkImageView: UIImageView = {
        let it = UIImageView()
        it.translatesAutoresizingMaskIntoConstraints = false
        return it
    }()

    private lazy var nameLabel: UILabel = {
        let it = UILabel()
        it.translatesAutoresizingMaskIntoConstraints = false
        return it
    }()

    private lazy var latestButton: UIButton = {
        let it = UIButton()
        it.translatesAutoresizingMaskIntoConstraints = false
        return it
    }()

    private lazy var pinButton: UIButton = {
        let it = UIButton()
        it.translatesAutoresizingMaskIntoConstraints = false
        return it
    }()
}