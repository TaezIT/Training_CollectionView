//
//  CategoriesCollectionViewCell.swift
//  Training_CollectionView
//
//  Created by Phạm Tuấn Anh on 07/05/2022.
//

import UIKit

class CategoriesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var imageCategory: UIImageView!
    @IBOutlet var labelCategory: UILabel!
    @IBOutlet var viewCategory: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    public func configure (modelCategory : ModelCategory){
        self.imageCategory.image = UIImage(named: modelCategory.imageSymbolic)
        self.labelCategory.text = modelCategory.nameCategory
        self.labelCategory.font = UIFont(name: "Abel-Regular", size: 15)
        self.viewCategory.backgroundColor = modelCategory.colorBackground
        self.viewCategory.layer.cornerRadius = 20
        self.labelCategory.backgroundColor = modelCategory.colorBackground
    }
}

