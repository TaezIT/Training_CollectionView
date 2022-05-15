//
//  EventsCollectionViewCell.swift
//  Training_CollectionView
//
//  Created by Phạm Tuấn Anh on 09/05/2022.
//

import UIKit

class EventsCollectionViewCell: UICollectionViewCell {
    @IBOutlet var imageBackground: UIImageView!
    @IBOutlet var viewImageSymbolic: UIView!
    @IBOutlet var imageSymbolic: UIImageView!
    @IBOutlet var labelCalendar: UILabel!
    @IBOutlet var labelNotification: UILabel!
    @IBOutlet var imagePerson1: UIImageView!
    @IBOutlet var imagePerson2: UIImageView!
    @IBOutlet var imagePerson3: UIImageView!
    @IBOutlet var labelNumberPerson: UILabel!
    @IBOutlet var imageLocaton: UIImageView!
    @IBOutlet var labelLocation: UILabel!
    @IBOutlet var viewBackground : UIView!
    @IBOutlet weak var ss: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    public func configure(with modelEvent: ModelEvent ){
        self.imageBackground.image = UIImage(named: modelEvent.imageBackground)
        self.imageBackground.layer.cornerRadius = 15
        self.imagePerson1.image = UIImage(named: modelEvent.imagePerson1)
        self.imagePerson1.layer.cornerRadius = 12
        self.imagePerson2.image = UIImage(named: modelEvent.imagePerson2)
        self.imagePerson2.layer.cornerRadius = 12
        self.imagePerson3.image = UIImage(named: modelEvent.imagePerson3)
        self.imagePerson3.layer.cornerRadius = 12
        self.imageSymbolic.image = UIImage(named: modelEvent.imageSymbolic)
        self.viewImageSymbolic.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.7)
        self.viewImageSymbolic.layer.cornerRadius = 7
        self.labelCalendar.text = modelEvent.labelCalendar
        self.labelCalendar.font = UIFont(name: "Abel-Regular", size: 14)
        self.labelCalendar.textColor =  UIColor(red: 0.941, green: 0.39, blue: 0.354, alpha: 1)
        self.labelCalendar.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.7)
        self.labelCalendar.layer.cornerRadius = 10
        self.labelCalendar.layer.masksToBounds = true
        self.labelNotification.text = modelEvent.labelNotification
        self.labelNotification.font = UIFont(name: "NotoSans-Medium", size: 18)
        self.labelNumberPerson.text = modelEvent.labelNumberPerson
        self.labelNumberPerson.textColor = UIColor(red: 0.247, green: 0.22, blue: 0.867, alpha: 1)
        self.labelNumberPerson.font = UIFont(name: "NotoSans-Medium", size: 12)
        self.imageLocaton.image = UIImage(named: modelEvent.imageLocation)
        self.labelLocation.text = modelEvent.labelLocation
        self.labelLocation.textColor = UIColor(red: 0.167, green: 0.157, blue: 0.287, alpha: 1)
        self.labelLocation.font = UIFont(name: "Abel-Regular", size: 13)
        self.viewBackground.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        self.viewBackground.layer.cornerRadius = 18
        self.viewBackground.layer.shadowColor = UIColor(red: 0.312, green: 0.334, blue: 0.534, alpha: 0.06).cgColor
        self.viewBackground.layer.shadowOpacity = 2
        self.viewBackground.layer.shadowRadius = 30

    }
    
}
