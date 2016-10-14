//
//  FeedViewCell.swift
//  EventApp
//
//  Created by Aqeel Hashim on 9/7/16.
//  Copyright © 2016 Aqeel Hashim. All rights reserved.
//

import Foundation
import UIKit

class FeedViewCell: UITableViewCell{
    
    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setEventPicture(image: UIImage){
        
        self.eventImage.image = image
        self.eventImage.contentMode = UIViewContentMode.ScaleToFill
        sendSubviewToBack(self.eventImage)
        
    }
    
}