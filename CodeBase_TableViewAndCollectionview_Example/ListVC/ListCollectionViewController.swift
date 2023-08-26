//
//  ListCollectionViewController.swift
//  CodeBase_TableViewAndCollectionview_Example
//
//  Created by 염성필 on 2023/08/25.
//

import UIKit
import SnapKit

class ListCollectionViewController: UIViewController {
    
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(collectionView)
        
        collectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        setup()
        configure()
    }
    
    func setup() {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(ListCollectionViewCell.self, forCellWithReuseIdentifier: String(describing: ListCollectionViewCell.self))
    }
    
    func configure() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let spacing: CGFloat = 10
        let width = UIScreen.main.bounds.width - (spacing * 4)
        layout.itemSize = CGSize(width: width / 3, height: width / 3)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        collectionView.collectionViewLayout = layout
    }

}

extension ListCollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: ListCollectionViewCell.self), for: indexPath) as! ListCollectionViewCell
        return cell
    }
    
}
