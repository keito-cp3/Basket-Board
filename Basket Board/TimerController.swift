//
//  TimerController.swift
//  Basket Board
//
//  Created by 松井恵人 on 2016/08/08.
//  Copyright © 2016年 松井恵人. All rights reserved.
//

import UIKit

class TimerController: UIViewController {
    
    @IBOutlet var MainTimer: UILabel!
    @IBOutlet var SubTimer: UILabel!
    @IBOutlet var ScoreGuest: UILabel!
    @IBOutlet var ScoreHome: UILabel!
    
    var NumberScoreGuest: Int = 0
    var NumberScoreHome: Int = 0
    
    var SubTimerCount: Int = 24
    var SubTimerNumber: NSTimer = NSTimer()
    
    var MainTimerCount: Int = 600
    var MainTimerNumber: NSTimer = NSTimer()
    
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func GuestPlus() {
        NumberScoreGuest = NumberScoreGuest + 1
        ScoreGuest.text = String(NumberScoreGuest)
    }
    @IBAction func GuestMinus() {
        if NumberScoreGuest != 0 {
            NumberScoreGuest = NumberScoreGuest - 1
        }else {
            NumberScoreGuest == 0
        }
        ScoreGuest.text = String(NumberScoreGuest)
    }
    @IBAction func HomePlus() {
        NumberScoreHome = NumberScoreHome + 1
        ScoreHome.text = String(NumberScoreHome)
    }
    @IBAction func HomeMinus() {
        if NumberScoreHome != 0{
            NumberScoreHome = NumberScoreHome - 1
        }else {
            NumberScoreHome = 0
        }
        ScoreHome.text = String(NumberScoreHome)
    }
    @IBAction func ScoreClear() {
        NumberScoreGuest = 0
        NumberScoreHome = 0
        ScoreGuest.text = String(NumberScoreGuest)
        ScoreHome.text = String(NumberScoreHome)
    }
    
    
    @IBAction func MainMinutePlus() {
        if !MainTimerNumber.valid {
            MainTimerCount = MainTimerCount + 60
        }
        let s = MainTimerCount % 60
        let m = MainTimerCount / 60
        MainTimer.text = String(format: "%02d:%02d", m, s)
    }
    @IBAction func MainMinuteMinus() {
        if !MainTimerNumber.valid {
            MainTimerCount = MainTimerCount - 60
        }
        if MainTimerCount < 0 {
            MainTimerCount = MainTimerCount + 60
        }
        let s = MainTimerCount % 60
        var m = MainTimerCount / 60
        MainTimer.text = String(format: "%02d:%02d", m, s)
    }
    @IBAction func MainSecondPlus() {
        if !MainTimerNumber.valid {
            MainTimerCount = MainTimerCount + 1
        }
        let s = MainTimerCount % 60
        let m = MainTimerCount / 60
        MainTimer.text = String(format: "%02d:%02d", m, s)
    }
    @IBAction func MainSecondMinus() {
        if !MainTimerNumber.valid {
            MainTimerCount = MainTimerCount - 1
        }
        if MainTimerCount < 0 {
            MainTimerCount = 0
        }
        let s = MainTimerCount % 60
        let m = MainTimerCount / 60
        MainTimer.text = String(format: "%02d:%02d", m, s)
        
    }
    @IBAction func MainClear() {
        if !MainTimerNumber.valid {
            MainTimerCount = 0
        }
        let s = MainTimerCount % 60
        let m = MainTimerCount / 60
        MainTimer.text = String(format: "%02d:%02d", m, s)
    }
    @IBAction func MainStart() {
        if !MainTimerNumber.valid {
            MainTimerNumber = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(TimerController.Main), userInfo: nil, repeats: true)
        }else {
            MainTimerNumber.invalidate()
        }
    }
    
    
    @IBAction func SubPlus() {
        if !SubTimerNumber.valid {
            SubTimerCount = SubTimerCount + 1
        }
        SubTimer.text = String(SubTimerCount)
    }
    @IBAction func SubMinus() {
        if !SubTimerNumber.valid {
            SubTimerCount = SubTimerCount - 1
        }
        SubTimer.text = String(SubTimerCount)
    }
    @IBAction func SubStart() {
        if !SubTimerNumber.valid {
            SubTimerNumber = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(TimerController.Sub), userInfo: nil, repeats: true)
        }else {
            SubTimerNumber.invalidate()
        }
        
    }
    @IBAction func Sub24() {
        SubTimerCount = 24
        SubTimer.text = String(SubTimerCount)
    }
    @IBAction func Sub14() {
        SubTimerCount = 14
        SubTimer.text = String(SubTimerCount)
    }
    
    func Sub() {
        SubTimerCount = SubTimerCount - 1
        SubTimer.text = String(SubTimerCount)
        if SubTimerCount == 0 {
            SubTimerNumber.invalidate()
        }
    }
    
    func Main() {
        MainTimerCount = MainTimerCount - 1
        if MainTimerCount <= 0 {
            MainTimerCount = 0
            MainTimerNumber.invalidate()
        }
        let s = MainTimerCount % 60
        let m = MainTimerCount / 60
        MainTimer.text = String(format: "%02d:%02d", m, s)
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
