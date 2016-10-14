//
//  CategoryViewCell.swift
//  EventApp
//
//  Created by Aqeel Hashim on 8/30/16.
//  Copyright © 2016 Aqeel Hashim. All rights reserved.
//

import UIKit

class CategoryViewCell : UITableViewCell{

    @IBOutlet weak var categoryLabel: UILabel!
    var flag: DarwinBoolean  = false
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        let backgroundView = UIView()
//        backgroundView.backgroundColor = UIColor.blueColor()
//        self.selectedBackgroundView = backgroundView
       
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        if(self.flag){
            let backgroundView = UIView()
            backgroundView.backgroundColor = UIColor.blueColor()
            self.selectedBackgroundView = backgroundView
        }else{
            let backgroundView = UIView()
            backgroundView.backgroundColor = UIColor.clearColor()
            self.selectedBackgroundView = backgroundView
        }
    }
    
}
