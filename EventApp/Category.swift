//  Category.swift
//  EventApp
//
//  Created by Aqeel Hashim on 8/30/16.
//  Copyright © 2016 Aqeel Hashim. All rights reserved.
//

import Foundation

class Category{

    var cat:String
    var isSelected:Bool
    init( catName: String, selected:Bool){
        self.cat=catName
        self.isSelected=selected
    }
}