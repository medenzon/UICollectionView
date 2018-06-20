//
//  Cell.swift
//  UICollectionView
//
//  Created by Michael Edenzon on 6/20/18.
//  Copyright © 2018 Michael Edenzon. All rights reserved.
//

import UIKit

class Cell: UICollectionViewCell {
    
    weak var textLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    func configure() {
        self.layer.cornerRadius = frame.width / 8
        self.contentView.backgroundColor = .lightGray
        configureTextLabel()
    }
    
    func configureTextLabel() {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(label)
        NSLayoutConstraint.activate([label.topAnchor.constraint(equalTo: self.contentView.topAnchor),
                                     label.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
                                     label.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
                                     label.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),])
        self.textLabel = label
        self.textLabel.textAlignment = .center
    }
    
    func activateConstraints() {
        NSLayoutConstraint.activate([
            textLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            textLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            textLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            textLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
        ])
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.textLabel.text = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        fatalError("Interface Builder is not supported!")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        fatalError("Interface Builder is not supported!")
    }
}
