//
//  BoardController.swift
//  Basket Board
//
//  Created by 松井恵人 on 2016/08/08.
//  Copyright © 2016年 松井恵人. All rights reserved.
//

import UIKit

class BoardController: UIViewController {
    
    @IBOutlet var red1: UILabel!
    @IBOutlet var red2: UILabel!
    @IBOutlet var red3: UILabel!
    @IBOutlet var red4: UILabel!
    @IBOutlet var red5: UILabel!
    @IBOutlet var blue1: UILabel!
    @IBOutlet var blue2: UILabel!
    @IBOutlet var blue3: UILabel!
    @IBOutlet var blue4: UILabel!
    @IBOutlet var blue5: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        red1.layer.cornerRadius = 40.0
        red2.layer.cornerRadius = 40.0
        red3.layer.cornerRadius = 40.0
        red4.layer.cornerRadius = 40.0
        red5.layer.cornerRadius = 40.0
        
        red1.layer.masksToBounds = true
        red2.layer.masksToBounds = true
        red3.layer.masksToBounds = true
        red4.layer.masksToBounds = true
        red5.layer.masksToBounds = true
        
        blue1.layer.cornerRadius = 40.0
        blue2.layer.cornerRadius = 40.0
        blue3.layer.cornerRadius = 40.0
        blue4.layer.cornerRadius = 40.0
        blue5.layer.cornerRadius = 40.0
        
        blue1.layer.masksToBounds = true
        blue2.layer.masksToBounds = true
        blue3.layer.masksToBounds = true
        blue4.layer.masksToBounds = true
        blue5.layer.masksToBounds = true
        
        
        
        
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        _ = segue.destinationViewController as! BoardSecondController
        
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
