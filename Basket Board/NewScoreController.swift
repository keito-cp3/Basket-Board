//
//  NewScoreController.swift
//  Basket Board
//
//  Created by 松井恵人 on 2016/09/24.
//  Copyright © 2016年 松井恵人. All rights reserved.
//

import UIKit

class NewScoreController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    
    var Data = [AnyObject]()
    var number = 1
    
   
    
    
        
    @IBOutlet var Home: UITextField!
    @IBOutlet var Guest: UITextField!
    
    @IBOutlet var tableView: UITableView!
    
    let scoreDefaults = NSUserDefaults.standardUserDefaults()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        Home.delegate = self
        Guest.delegate = self
        
        if let homeText = scoreDefaults.stringForKey("Home") {
            Home.text = homeText
        }
        if let guestText = scoreDefaults.stringForKey("Guest") {
            Guest.text = guestText
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return number
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellCell", forIndexPath: indexPath)
        return cell
    }
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        scoreDefaults.setObject(Home.text, forKey: "Home")
        scoreDefaults.setObject(Guest.text, forKey: "Guest")
        
        scoreDefaults.synchronize()
        return true
    }
    
    @IBAction func newData() {
        
        number = number + 1
        
        self.tableView.insertRowsAtIndexPaths(
            [NSIndexPath(forRow: 0, inSection: 0)],
            withRowAnimation: UITableViewRowAnimation.Right)
    }
    
    

   
}
