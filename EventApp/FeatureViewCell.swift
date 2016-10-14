//
//  FeatureViewCell.swift
//  EventApp
//
//  Created by Aqeel Hashim on 9/7/16.
//  Copyright © 2016 Aqeel Hashim. All rights reserved.
//

import Foundation
import UIKit

class FeatureViewCell: UITableViewCell{

    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setCollectionViewDataSourceDelegate
        <D: protocol<UICollectionViewDataSource, UICollectionViewDelegate>>
        (dataSourceDelegate: D, forRow row: Int) {
        
        collectionView.delegate = dataSourceDelegate
        collectionView.dataSource = dataSourceDelegate
        collectionView.tag = row
        collectionView.reloadData()
    }
}
