//
//  FeatreGridCell.swift
//  EventApp
//
//  Created by Aqeel Hashim on 9/7/16.
//  Copyright © 2016 Aqeel Hashim. All rights reserved.
//

import Foundation
import UIKit

class FeatureGridCell: UICollectionViewCell{

    @IBOutlet weak var featureImage: UIImageView!
    @IBOutlet weak var featureTitle: UILabel!
    @IBOutlet weak var featureDescription: UILabel!
    @IBOutlet weak var featureDate: UILabel!
    @IBOutlet weak var eventButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    @IBAction func viewEventBtn(sender: AnyObject) {
    }
    
    func setImage(image: UIImage){
        self.featureImage.image = image
        self.featureImage.contentMode = UIViewContentMode.ScaleAspectFill
        sendSubviewToBack(self.featureImage)
        
    }
}