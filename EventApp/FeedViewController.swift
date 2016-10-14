//
//  FeedViewController.swift
//  EventApp
//
//  Created by Aqeel Hashim on 9/7/16.
//  Copyright © 2016 Aqeel Hashim. All rights reserved.
//

import Foundation
import UIKit

class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var feedTableView: UITableView!
    var height:CGFloat = 0.0
    var feedItems:[Event]=[]
    var featureItems: [Feature] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        //region Features
        var feature: Feature = Feature();
        feature.ID = "1"
        feature.FeatureTitle = "BangBros Reunion"
        feature.FeatureDescription = "The best in the business bitches"
        
        var event: Event = Event();
        event.ID = "1"
        event.Title = "BangBros Reunion"
        event.Descriptions="The best in the business bitches!"
//        var url = NSURL(string:"http://www.gumdropsandthebear.com/wp-content/uploads/2015/12/o-CHRISTMAS-PARTY-570.jpg")
//        var data = NSData(contentsOfURL:url!)
//        if data != nil {
        event.BannerPicture = UIImage(named: "o-CHRISTMAS-PARTY-570")!
        //}
        
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyy-MM-dd"
        event.EventDate = dateFormatter.dateFromString("2016-2-15")!
        event.Venue = "Bus Station"
        
        feature.event = event
        
        self.featureItems.append(feature)
        
        feature = Feature();
        feature.ID = "1"
        feature.FeatureTitle = "Super Bowl is back"
        feature.FeatureDescription = "The best bowal in the hood"
        
        event = Event();
        event.ID = "1"
        event.Title = "Super Bowl 2016"
        event.Descriptions="The best Bowl in the hood"
//        url = NSURL(string:"https://timedotcom.files.wordpress.com/2016/01/levis-stadium-super-bowl-50.jpg?quality=75&strip=color&w=594")
//        data = NSData(contentsOfURL:url!)
//        if data != nil {
            event.BannerPicture = UIImage(named: "levis-stadium-super-bowl-50")!
        //}
        
        dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyy-MM-dd"
        event.EventDate = dateFormatter.dateFromString("2016-5-15")!
        event.Venue = "Main Grounds"
        
        feature.event = event
        self.featureItems.append(feature)
        
        feature = Feature();
        feature.ID = "1"
        feature.FeatureTitle = "BBQ Night"
        feature.FeatureDescription = "Chill baby chill under the moonlight"
        
        event = Event();
        event.ID = "1"
        event.Title = "BBQ Night"
        event.Descriptions="Chill baby chill under the moonlight"
        //        url = NSURL(string:"https://timedotcom.files.wordpress.com/2016/01/levis-stadium-super-bowl-50.jpg?quality=75&strip=color&w=594")
        //        data = NSData(contentsOfURL:url!)
        //        if data != nil {
        event.BannerPicture = UIImage(named: "bbq_night")!
        //}
        
        dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyy-MM-dd"
        event.EventDate = dateFormatter.dateFromString("2016-10-15")!
        event.Venue = "Marina Bay"
        
        feature.event = event
        self.featureItems.append(feature)
        
        
        event = Event();
        event.ID = "1"
        event.Title = "Rock Fest 2016"
        event.Descriptions="It's back! Back again for some hardcore Rock action in the hood! Get your niggas and bitches ready"
        //        url = NSURL(string:"https://timedotcom.files.wordpress.com/2016/01/levis-stadium-super-bowl-50.jpg?quality=75&strip=color&w=594")
        //        data = NSData(contentsOfURL:url!)
        //        if data != nil {
        event.BannerPicture = UIImage(named: "johncampbell")!
        //}
        
        dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyy-MM-dd"
        event.EventDate = dateFormatter.dateFromString("2016-4-15")!
        event.Venue = "Rockacapella Studio"
        
        self.feedItems.append(event)
        
        event = Event();
        event.ID = "1"
        event.Title = "Annual Kukka Summit"
        event.Descriptions="This time the Kukkas in the hood are bringing you some new action with their tools and stuff"
        //        url = NSURL(string:"https://timedotcom.files.wordpress.com/2016/01/levis-stadium-super-bowl-50.jpg?quality=75&strip=color&w=594")
        //        data = NSData(contentsOfURL:url!)
        //        if data != nil {
        event.BannerPicture = UIImage(named: "kukkaSumit")!
        //}
        
        dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyy-MM-dd"
        event.EventDate = dateFormatter.dateFromString("2016-1-15")!
        event.Venue = "Bogambara Grounds"
        
        self.feedItems.append(event)
        
        self.feedTableView.sizeToFit()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.feedItems.count + 1
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if(indexPath.row == 0){
            let cell = tableView.dequeueReusableCellWithIdentifier("banerCell") as! FeatureViewCell
            cell.sizeToFit()
            cell.preservesSuperviewLayoutMargins = false
            cell.separatorInset = UIEdgeInsetsZero
            cell.layoutMargins = UIEdgeInsetsZero
            return cell
        }else{
            let cell = tableView.dequeueReusableCellWithIdentifier("eventFeedCell") as! FeedViewCell
            let event = self.feedItems[indexPath.row-1]
            cell.descLabel.text = event.Descriptions
            
            cell.setEventPicture(event.BannerPicture)
            let formatter = NSDateFormatter()
            formatter.dateFormat = "dd mm yyyy"
            cell.dateLabel.text = formatter.stringFromDate(event.EventDate)
            cell.titleLabel.text = event.Title
            cell.sizeToFit()
            cell.preservesSuperviewLayoutMargins = false
            cell.separatorInset = UIEdgeInsetsZero
            cell.layoutMargins = UIEdgeInsetsZero
            return cell
        }
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        //let cell = tableView.dequeueReusableCellWithIdentifier("banerCell") as! FeatureViewCell
        if(indexPath.row == 0){
//            let cell = tableView.dequeueReusableCellWithIdentifier("banerCell") as! FeatureViewCell
            
            return 241.0
        }else{
//            let cell = tableView.dequeueReusableCellWithIdentifier("eventFeedCell") as! FeedViewCell
//            let height = cell.eventImage.frame.size.height
            return 350.0
        }
        
    }
    
    func tableView(tableView: UITableView,
                   willDisplayCell cell: UITableViewCell,
                                   forRowAtIndexPath indexPath: NSIndexPath) {
        guard let tableViewCell = cell as? FeatureViewCell else {return}
        
        tableViewCell.setCollectionViewDataSourceDelegate(self, forRow: 0)
    }
    
}

extension FeedViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    
    
    func collectionView(collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        
        return self.featureItems.count
    }
    
    func collectionView(collectionView: UICollectionView,
                        cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("featureFeedCell",
                                                                         forIndexPath: indexPath) as! FeatureGridCell
        let event = self.featureItems[indexPath.row].event
        print("PictureDesc: "+event.BannerPicture.description)
        cell.setImage(event.BannerPicture)
        let formatter = NSDateFormatter()
        formatter.dateFormat = "dd mm yyyy"
        cell.featureDate.text = formatter.stringFromDate(event.EventDate)
        cell.featureDescription.text = event.Descriptions
        cell.featureTitle.text = event.Title
        cell.sizeThatFits(cell.featureImage.frame.size)
        self.height = cell.featureImage.frame.size.height
        cell.preservesSuperviewLayoutMargins = false
        cell.layoutMargins = UIEdgeInsetsZero
        
//        cell.featureImage = UIImageView(image: event.BannerPicture)
//        cell.featureImage.contentMode = UIViewContentMode.ScaleAspectFit
        
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
    // Code below
    return CGSizeMake(UIScreen.mainScreen().bounds.size.width, 241)
    }
    
}