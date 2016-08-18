//
//  ScoreSecondController.swift
//  Basket Board
//
//  Created by 松井恵人 on 2016/08/11.
//  Copyright © 2016年 松井恵人. All rights reserved.
//

import UIKit

class ScoreSecondController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        showAlart()
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showAlart() {
        
        let alertController = UIAlertController(title: "タイトル", message: "ここにメッセージ", preferredStyle: .Alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: {
            (action:UIAlertAction!) -> Void in

            let text = alertController.textFields![0] as UITextField
           
            print(text.text!)
            
        })
        alertController.addAction(defaultAction)
        alertController.addTextFieldWithConfigurationHandler({(text:UITextField) -> Void in
            text.placeholder = "kokomi"
        })
        self.presentViewController(alertController, animated: true, completion: nil)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
