//
//  ViewController.swift
//  EventApp
//
//  Created by Aqeel Hashim on 8/29/16.
//  Copyright © 2016 Aqeel Hashim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var existingAccountButton: UIButton!
    @IBOutlet weak var getStartedButton: UIButton!
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        

//        var vc = CategoryViewController();
//        self.presentedViewController(vc, animated: true, completion: nil);
        // Do any additional setup after loading the view, typically from a nib.
        self.getStartedButton.layer.cornerRadius = 8
        self.existingAccountButton.layer.cornerRadius = 8
        let backgroundImageView = UIImageView(image: UIImage(named: "homeBackground"))
        backgroundImageView.frame = view.frame
        backgroundImageView.contentMode = .ScaleAspectFill
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "homeBackground")!)
        
    }

    @IBAction func getStarted(sender: AnyObject) {
        dispatch_async(dispatch_get_main_queue(),{
                self.performSegueWithIdentifier("categorySegue", sender: self)
        })
        
        
    }
    @IBAction func accountButton(sender: AnyObject) {
        
        self.performSegueWithIdentifier("categorySegue", sender: self)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

