//
//  ViewController.swift
//  UICollectionView
//
//  Created by Michael Edenzon on 6/20/18.
//  Copyright © 2018 Michael Edenzon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    weak var collectionView: UICollectionView!
    
    var cellSize: CGSize {
        get {
            return CGSize(width: 120, height: 120)
        }
    }
    
    var outerMargin: CGFloat {
        get {
            return 16
        }
    }
    
    var innerMargin: CGFloat {
        get {
            return 8
        }
    }
    
    override func loadView() {
        
        super.loadView()
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: self.view.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            ])
        
        self.collectionView = collectionView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.backgroundColor = .white
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
        self.collectionView.register(Cell.self, forCellWithReuseIdentifier: "Cell")
    }
}
