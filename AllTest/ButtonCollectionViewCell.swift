//
//  ButtonCollectionViewCell.swift
//  AllTest
//
//  Created by 许振辉 on 2023/3/4.
//

import UIKit

class ButtonCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var lb: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 5
        self.layer.masksToBounds = true
        self.backgroundColor = .gray
    }
    
}
