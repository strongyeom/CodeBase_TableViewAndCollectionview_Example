//
//  ListCollectionViewCell.swift
//  CodeBase_TableViewAndCollectionview_Example
//
//  Created by 염성필 on 2023/08/26.
//

import UIKit
import SnapKit

class ListCollectionViewCell: UICollectionViewCell {
    
    let view = {
       let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        contentView.addSubview(view)
        
        view.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
