//
//  CategoryViewController.swift
//  EventApp
//
//  Created by Aqeel Hashim on 8/30/16.
//  Copyright © 2016 Aqeel Hashim. All rights reserved.
//

import Foundation
import UIKit

class CategoryViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var continueBtn: UIButton!
    var categories = [Category]()
    var isSelected: [Bool] = [Bool](count: 10, repeatedValue: false);
    let reuseIdentifier = "CategoryReuseIdentifier"
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        categories = [Category(catName: "Parties",selected: false),Category(catName: "Political",selected: false), Category(catName: "Stage Acts",selected: false), Category(catName: "Movies",selected: false), Category(catName: "Non-profit",selected: false), Category(catName: "Common Cause",selected: false), Category(catName: "Health & Fitness",selected: false), Category(catName: "Techology",selected: false), Category(catName: "Contests",selected: false), Category(catName: "Cultural",selected: false)]
        self.continueBtn.layer.cornerRadius = 8
        let backgroundImageView = UIImageView(image: UIImage(named: "homeBackground"))
        backgroundImageView.frame = view.frame
        backgroundImageView.contentMode = .ScaleAspectFill
        backgroundImageView.tintColor = UIColor.blackColor()
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        //self.tableView.beginUpdates()
        dispatch_async(dispatch_get_main_queue(), {
            self.tableView.reloadData()
        })
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "homeBackground")!)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
     return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.categories.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(self.reuseIdentifier, forIndexPath: indexPath) as! CategoryViewCell
        cell.categoryLabel.text = self.categories[indexPath.row].cat
        dispatch_async(dispatch_get_main_queue(), {
        
            self.categories[indexPath.row].isSelected = self.isSelected[indexPath.row]
            
            if(self.isSelected[indexPath.row]){
                cell.backgroundColor = UIColor.blueColor()
            }else{
                cell.backgroundColor = UIColor.clearColor()
            }
            
        })
        
        return cell
    }
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension;
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
       // let cell = tableView.dequeueReusableCellWithIdentifier(self.reuseIdentifier, forIndexPath: indexPath) as! CategoryViewCell
            self.isSelected[indexPath.row] = !self.isSelected[indexPath.row]
        self.tableView.reloadData()
        self.tableView.layoutIfNeeded()
        print(indexPath.description)
        // category = self.categories[indexPath.row]
    }
    
    @IBAction func cntBtn(sender: AnyObject) {
        
        self.performSegueWithIdentifier("feedSegue", sender: self)
        
    }
    
}