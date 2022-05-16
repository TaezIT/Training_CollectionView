//
//  InviteTableViewCell.swift
//  Training_CollectionView
//
//  Created by Phạm Tuấn Anh on 09/05/2022.
//

import UIKit

class InviteTableViewCell: UITableViewCell {
    @IBOutlet var viewContent :UIView!
    @IBOutlet var labelInvite: UILabel!
    @IBOutlet var labelPrice: UILabel!
    @IBOutlet var buttonInvite: UIButton!
    @IBOutlet var imageRepresentation: UIImageView!
    @IBOutlet var viewInviteTableViewCell: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        viewInviteTableViewCell.backgroundColor = UIColor(red: 0.2, green: 1, blue: 1, alpha: 0.2)
        viewInviteTableViewCell.layer.cornerRadius = 12
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    public func configure(with model: ModelInvite){
        self.labelPrice.text = model.labelPrice
        self.labelPrice.textColor = UIColor(red: 0.283, green: 0.303, blue: 0.441, alpha: 1)
        self.labelPrice.font = UIFont(name: "Abel-Regular", size: 13)
        self.labelInvite.text = model.labelInvite
        self.labelInvite.textColor = UIColor(red: 0.069, green: 0.05, blue: 0.15, alpha: 1)
        self.buttonInvite.titleLabel?.font = UIFont(name: "NotoSans-Medium", size: 12)
        self.buttonInvite.layer.cornerRadius = 5
        self.buttonInvite.backgroundColor = UIColor(red: 0, green: 0.973, blue: 1, alpha: 1)
        self.imageRepresentation.image = UIImage(named: model.imageRepresentation)
    }
    
}
