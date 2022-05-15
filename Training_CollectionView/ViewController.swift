//
//  ViewController.swift
//  Training_CollectionView
//
//  Created by Phạm Tuấn Anh on 03/05/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tabelView: UITableView!
    @IBOutlet weak var collectionViewCategory: UICollectionView!
    @IBOutlet weak var viewHeading: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewHeading.layer.cornerRadius = 40
        collectionViewCategory.delegate = self
        collectionViewCategory.dataSource = self
        layoutcollectionViewCategory()
        collectionViewCategory.contentInset = UIEdgeInsets(top: 0, left: 24, bottom: 0, right: 0);
        collectionViewCategory.register(UINib(nibName: "CategoriesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoriesCollectionViewCell")
        // [self.tableView setBackgroundView:view];
        tabelView.dataSource = self
        tabelView.delegate = self
        //self.tableView.backgroundColor = UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1)
        tabelView.register(UINib(nibName: "InviteTableViewCell", bundle: nil), forCellReuseIdentifier: "InviteTableViewCell")
        tabelView.register(UINib(nibName: "CollectionTableViewCell", bundle: nil), forCellReuseIdentifier: "CollectionTableViewCell")
        
    }
    func layoutcollectionViewCategory() {
        collectionViewCategory.backgroundColor = .none
        let layout = collectionViewCategory.collectionViewLayout as! UICollectionViewFlowLayout
        layout.scrollDirection = .horizontal
    }
    
}
extension ViewController: UICollectionViewDelegate{
    
}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return modelCategory.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoriesCollectionViewCell", for: indexPath) as! CategoriesCollectionViewCell
        cell.configure(modelCategory: modelCategory[indexPath.row])
        return cell
    }
}
extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 105, height: 40)
    }
    func collectionView(_ collectionView: UICollectionView, layout
                        collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 11.0
    }
}


extension ViewController: UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return indexPath.row % 2 == 0 ? 340 : UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 340.0
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CollectionTableViewCell", for: indexPath) as! CollectionTableViewCell
            cell.configure(with: modelHeading[indexPath.row/2])
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "InviteTableViewCell", for: indexPath) as! InviteTableViewCell
            cell.configure(with: modelInvite[(indexPath.row-1)/2])
            return cell
        }
    }
    
}


