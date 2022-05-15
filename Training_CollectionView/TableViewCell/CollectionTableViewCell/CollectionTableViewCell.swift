//
//  CollectionTableViewCell.swift
//  Training_CollectionView
//
//  Created by Phạm Tuấn Anh on 10/05/2022.
//

import UIKit

class CollectionTableViewCell: UITableViewCell {
    @IBOutlet var titleCollectionViewCell: UILabel!
    @IBOutlet var buttonSeeAll: UIButton!
    @IBOutlet var imageArrowShape: UIImageView!
    @IBOutlet var collectionViewEvent: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionViewEvent.register(UINib(nibName: "EventsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "EventsCollectionViewCell")
        collectionViewEvent.delegate = self
        collectionViewEvent.dataSource = self
        //collectionViewEvent.allowsSelection = true
        collectionViewEvent.contentInset = UIEdgeInsets(top: 0, left: 24, bottom: 0, right: 0);
    }
   // var models = [ModelEvent]()
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        

    }
    public func configure(with modelHeaing: ModelHeading){
        self.titleCollectionViewCell.text = modelHeaing.labelTitle
        self.titleCollectionViewCell.font = UIFont(name: "NotoSans-Medium", size: 18)
        self.buttonSeeAll.titleLabel?.text = modelHeaing.buttonSeeAll
        self.buttonSeeAll.titleLabel?.font = UIFont(name: "Abel-Regular", size: 14)
        self.buttonSeeAll.titleLabel?.textColor = UIColor(red: 0.456, green: 0.464, blue: 0.534, alpha: 1)
        self.imageArrowShape.image = UIImage(named: modelHeaing.imageArrowShape)
    }
   
}

extension CollectionTableViewCell: UICollectionViewDelegate {
    
}

extension CollectionTableViewCell: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return modelEvent.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EventsCollectionViewCell", for: indexPath) as! EventsCollectionViewCell
        cell.configure(with: modelEvent[indexPath.row])
        return cell
    }
    
}
extension CollectionTableViewCell: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 235, height: 255)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 15
    }
}
