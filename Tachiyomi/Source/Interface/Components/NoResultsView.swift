//
//  NoResultsView.swift
//  Tachiyomi
//
//  Created by Jacob King on 21/02/2022.
//

import SnapKit
import UIKit

class NoResultsView: UIStackView {
    
    private lazy var textLabel: UILabel = {
        let it = UILabel()
        it.translatesAutoresizingMaskIntoConstraints = false
        it.numberOfLines = 0
        it.font = .tachiyomiStandardText
        it.textColor = .tachiyomiStandardText
        it.textAlignment = .center
        return it
    }()
    
    private lazy var ctaButton: UIButton = {
        let it = UIButton()
        it.translatesAutoresizingMaskIntoConstraints = false
        it.titleLabel?.font = .tachiyomiCtaText
        it.backgroundColor = .tachiyomiPrimaryCtaBackground
        it.titleLabel?.textColor = .tachiyomiStandardText
        it.layer.masksToBounds = true
        it.contentEdgeInsets = UIEdgeInsets(top: 8, left: 20, bottom: 8, right: 20)
        return it
    }()
    
    
    init(text: String, cta: String? = nil) {
        super.init(frame: .zero)
        
        setContentHuggingPriority(.required, for: .vertical)
        textLabel.text = text
        ctaButton.setTitle(cta, for: .normal)
        
        axis = .vertical
        spacing = 16
        distribution = .equalCentering
        alignment = .center
        
        addArrangedSubview(textLabel)
        if cta != nil {
            addArrangedSubview(ctaButton)
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        ctaButton.layer.cornerRadius = ctaButton.bounds.height / 2
    }
    
    @available(*, unavailable)
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
