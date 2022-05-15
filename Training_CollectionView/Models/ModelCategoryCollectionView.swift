//
//  ModelCategoryCollectionView.swift
//  Training_CollectionView
//
//  Created by Phạm Tuấn Anh on 07/05/2022.
//

import Foundation
import UIKit
struct ModelCategory {
    let imageSymbolic : String
    let nameCategory : String
    let colorBackground : UIColor
    init (imageSymbolic : String,nameCategory : String, colorBackground : UIColor ){
        self.imageSymbolic = imageSymbolic
        self.nameCategory = nameCategory
        self.colorBackground  = colorBackground
    }
}
var modelCategory =
[ModelCategory(imageSymbolic: "Image1", nameCategory: "Sport", colorBackground: UIColor(red: 0.941, green: 0.39, blue: 0.354, alpha: 1)),
 ModelCategory(imageSymbolic: "Image2", nameCategory: "Music", colorBackground: UIColor(red: 0.962, green: 0.593, blue: 0.386, alpha: 1)),
 ModelCategory(imageSymbolic: "Image3", nameCategory: "Food", colorBackground: UIColor(red: 0.161, green: 0.839, blue: 0.592, alpha: 1)),
 ModelCategory(imageSymbolic: "Image1", nameCategory: "Sport", colorBackground: UIColor(red: 0.275, green: 0.803, blue: 0.983, alpha: 1)),
 ModelCategory(imageSymbolic: "Image2", nameCategory: "Music", colorBackground: UIColor(red: 0.941, green: 0.39, blue: 0.354, alpha: 1)),
    ]

