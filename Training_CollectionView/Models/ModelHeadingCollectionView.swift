//
//  ModelHeadingCollectionView.swift
//  Training_CollectionView
//
//  Created by Phạm Tuấn Anh on 10/05/2022.
//

import Foundation
struct ModelHeading {
    let labelTitle: String
    let buttonSeeAll: String
    let imageArrowShape : String
    init(labelTitle: String, buttonSeeAll: String, imageArrowShape: String) {
        self.labelTitle = labelTitle
        self.buttonSeeAll = buttonSeeAll
        self.imageArrowShape = imageArrowShape
    }
}

var modelHeading = [ModelHeading(labelTitle: "Upcoming Events", buttonSeeAll: "See All", imageArrowShape: "Image"),
                    ModelHeading(labelTitle: "Nearby You", buttonSeeAll: "See All", imageArrowShape: "Image"),
                    ModelHeading(labelTitle: "Upcoming Events", buttonSeeAll: "See All", imageArrowShape: "Image")]
                    
//    struct ModelHeading {
//    let labelTitle: String
//    let buttonSeeAll: String
//    let imageArrowShape : String
//    let modelEvent: [ModelEvent]
//    init(labelTitle: String, buttonSeeAll: String, imageArrowShape: String, modelEvent: [ModelEvent]) {
//        self.labelTitle = labelTitle
//        self.buttonSeeAll = buttonSeeAll
//        self.imageArrowShape = imageArrowShape
//        self.modelEvent = modelEvent
//    }
//}
//
//    var modelHeading = [ModelHeading(labelTitle: "Upcoming Event", buttonSeeAll: "See All", imageArrowShape: "Image",modelEvent: <#T##[ModelEvent]#>),
//                                        ModelHeading(labelTitle: "Nearby You", buttonSeeAll: "See All", imageArrowShape: "Image",modelEvent:[])
