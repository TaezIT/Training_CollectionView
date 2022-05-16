//
//  ModelIviteTableViewCell.swift
//  Training_CollectionView
//
//  Created by Phạm Tuấn Anh on 10/05/2022.
//

import Foundation
struct ModelInvite {
    let labelInvite: String
    let labelPrice: String
    let buttonInvite: String
    let imageRepresentation: String
    init(labelInvite: String,labelPrice: String,buttonInvite: String,imageRepresentation: String )
    {
        self.labelPrice = labelPrice
        self.labelInvite = labelInvite
        self.buttonInvite = buttonInvite
        self.imageRepresentation = imageRepresentation
    }
}
var modelInvite = [ModelInvite(labelInvite: "Invite your friends", labelPrice: "Get $20 for ticket", buttonInvite: "INVITE", imageRepresentation: "Image6"),
                   ModelInvite(labelInvite: "Invite your friends", labelPrice: "Get $20 for ticket", buttonInvite: "INVITE", imageRepresentation: "Image6")]
