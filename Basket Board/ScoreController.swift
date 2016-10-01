//
//  ScoreController.swift
//  Basket Board
//
//  Created by 松井恵人 on 2016/08/10.
//  Copyright © 2016年 松井恵人. All rights reserved.
//

import UIKit

class ScoreController: UITableViewController {
    

    
    var scoreList = [String]()
    var data = [NSData]()
    var number: Int!
    var MemoMemo = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let userDefaults = NSUserDefaults.standardUserDefaults()
        if let storedScoreList = userDefaults.arrayForKey("scoreList") as? [String] {
            scoreList.appendContentsOf(storedScoreList)
        }
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.number = indexPath.row
        
        performSegueWithIdentifier("Sub", sender: nil)
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        let subVC = segue.destinationViewController as! ScoreSecondController
        
        subVC.number2 = self.number
        
        
    }
    
    
    

    
    
    
    

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return scoreList.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        let scoreTitle = scoreList[indexPath.row]
        
        cell.textLabel!.text = scoreTitle

        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60
    }

    
    
        
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if editingStyle == .Delete {
            
            scoreList.removeAtIndex(indexPath.row)
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            
            let data : NSData = NSKeyedArchiver.archivedDataWithRootObject(scoreList)
            
            let userDefaults = NSUserDefaults.standardUserDefaults()
            userDefaults.setObject(data, forKey: "scoreList")
            userDefaults.synchronize()
        }
    }
    
    
    
    
    
    
    
    
    @IBAction func newCreate() {
        
        let alertController = UIAlertController(title: "タイトル", message: "", preferredStyle: .Alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: {
            (action:UIAlertAction!) -> Void in
            
            if let textField = alertController.textFields?.first {
                
                self.scoreList.insert(textField.text!, atIndex:  0)
                
                self.tableView.insertRowsAtIndexPaths(
                    [NSIndexPath(forRow: 0, inSection: 0)],
                    withRowAnimation: UITableViewRowAnimation.Right)
                
                
                
                let userDefaults = NSUserDefaults.standardUserDefaults()
                userDefaults.setObject(self.scoreList, forKey: "scoreList")
                userDefaults.synchronize()
            }
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
        
        alertController.addAction(defaultAction)
        alertController.addAction(cancelAction)
        
        alertController.addTextFieldWithConfigurationHandler({(text:UITextField) -> Void in
            text.placeholder = "vs ◯◯校"
        })
        
        self.presentViewController(alertController, animated: true, completion: nil)
    
    }
    
    
    
    
    
    
}
