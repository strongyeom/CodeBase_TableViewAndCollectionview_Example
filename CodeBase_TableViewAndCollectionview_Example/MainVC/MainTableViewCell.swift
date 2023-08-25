//
//  MainTableViewCell.swift
//  CodeBase_TableViewAndCollectionview_Example
//
//  Created by 염성필 on 2023/08/25.
//

import UIKit
import SnapKit

class MainTableViewCell: UITableViewCell {
    
    let titlelabel = UILabel()
    let descriptionLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func configure() {
        contentView.addSubview(titlelabel)
        contentView.addSubview(descriptionLabel)
        
        titlelabel.backgroundColor = .yellow
        titlelabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().inset(10)
            make.width.equalTo(100).priority(999)
        }
        descriptionLabel.backgroundColor = .red
        descriptionLabel.numberOfLines = 0
        descriptionLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalTo(titlelabel.snp.trailing).offset(20)
             make.trailing.lessThanOrEqualTo(-10)
        }
    }
    
    
    
    
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
