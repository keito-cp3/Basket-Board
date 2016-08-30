//
//  ScoreController.swift
//  Basket Board
//
//  Created by 松井恵人 on 2016/08/10.
//  Copyright © 2016年 松井恵人. All rights reserved.
//

import UIKit

class ScoreController: UITableViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "スコアリスト"
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 7
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)

        // Configure the cell...
        
        cell.textLabel!.text = "セクション\(indexPath.section)の\(indexPath.row)行目"

        return cell
    }

    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        _ = segue.destinationViewController as! ScoreSecondController
    }
    
    
    
    
    func showAlart2() {
        
        let alertController = UIAlertController(title: "タイトル", message: "ここに入力", preferredStyle: .Alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: {
            (action:UIAlertAction!) -> Void in
            
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: {
            (action) -> Void in
        })
        
        alertController.addAction(defaultAction)
        alertController.addAction(cancelAction)
        
        alertController.addTextFieldWithConfigurationHandler({(text:UITextField) -> Void in
            text.placeholder = "vs ◯◯校"
        })
        
        self.presentViewController(alertController, animated: true, completion: nil)
        
    }
    
    @IBAction func newCreate() {
        
        showAlart2()
    
    }
    
    
    
    
    
    
}
