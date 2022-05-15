//
//  ModelEventCollectionView.swift
//  Training_CollectionView
//
//  Created by Phạm Tuấn Anh on 09/05/2022.
//

import Foundation
import UIKit
struct ModelEvent {
    let labelCalendar: String
    let imageSymbolic: String
    let imageBackground: String
    let labelNotification: String
    let imagePerson1: String
    let imagePerson2: String
    let imagePerson3: String
    let labelNumberPerson: String
    let imageLocation: String
    let labelLocation: String
    init(labelCalendar: String, imageSymbolic: String, imageBackground: String, labelNotification: String, imagePerson1: String, imagePerson2: String, imagePerson3: String, labelNumberPerson: String, imageLocation: String, labelLocation: String){
        self.labelCalendar = labelCalendar
        self.labelLocation = labelLocation
        self.labelNotification = labelNotification
        self.labelNumberPerson = labelNumberPerson
        self.imageSymbolic = imageSymbolic
        self.imageBackground = imageBackground
        self.imagePerson1 = imagePerson1
        self.imagePerson2 = imagePerson2
        self.imagePerson3 = imagePerson3
        self.imageLocation = imageLocation
    }
}
var modelEvent = [ModelEvent(labelCalendar: "10 JUNE", imageSymbolic: "ImageSymbolic", imageBackground: "Image4", labelNotification: "International Band Mu...", imagePerson1: "ImagePerson1", imagePerson2: "ImagePerson2", imagePerson3: "ImagePerson3", labelNumberPerson: "+20 Going", imageLocation: "ImageLocation", labelLocation: "36 Guild Street London, UK "),
                  ModelEvent(labelCalendar: "10 JUNE", imageSymbolic: "ImageSymbolic", imageBackground: "Image4", labelNotification: "Jo Malone London’s Mo..", imagePerson1: "ImagePerson1", imagePerson2: "ImagePerson2", imagePerson3: "ImagePerson3", labelNumberPerson: "+20 Going", imageLocation: "ImageLocation", labelLocation: "Radius Gallery • Santa Cruz, CA"),
                  ModelEvent(labelCalendar: "10 JUNE", imageSymbolic: "ImageSymbolic", imageBackground: "Image4", labelNotification: "International Band Mu...", imagePerson1: "ImagePerson1", imagePerson2: "ImagePerson2", imagePerson3: "ImagePerson2", labelNumberPerson: "+20 Going", imageLocation: "ImageLocation", labelLocation: "36 Guild Street London, UK ")]
