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
    @IBOutlet var green: UILabel!
    
    @IBOutlet var change: UIButton!
    
    
    @IBOutlet var BasketCourt: UIImageView!
    let Pic1 = UIImage(named: "BasketPic1")
    let Pic2 = UIImage(named: "BasketPic2")
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        BasketCourt.image = Pic1
        
        red1.layer.masksToBounds = true
        red2.layer.masksToBounds = true
        red3.layer.masksToBounds = true
        red4.layer.masksToBounds = true
        red5.layer.masksToBounds = true
        red1.layer.cornerRadius = 11.0
        red2.layer.cornerRadius = 11.0
        red3.layer.cornerRadius = 11.0
        red4.layer.cornerRadius = 11.0
        red5.layer.cornerRadius = 11.0
        
        blue1.layer.masksToBounds = true
        blue2.layer.masksToBounds = true
        blue3.layer.masksToBounds = true
        blue4.layer.masksToBounds = true
        blue5.layer.masksToBounds = true
        blue1.layer.cornerRadius = 11.0
        blue2.layer.cornerRadius = 11.0
        blue3.layer.cornerRadius = 11.0
        blue4.layer.cornerRadius = 11.0
        blue5.layer.cornerRadius = 11.0
        
        green.layer.masksToBounds = true
        green.layer.cornerRadius = 10.0
        
        change.layer.masksToBounds = true
        change.layer.cornerRadius = 5.0
        
        
        
        red1.userInteractionEnabled = true
        red2.userInteractionEnabled = true
        red3.userInteractionEnabled = true
        red4.userInteractionEnabled = true
        red5.userInteractionEnabled = true
        blue1.userInteractionEnabled = true
        blue2.userInteractionEnabled = true
        blue3.userInteractionEnabled = true
        blue4.userInteractionEnabled = true
        blue5.userInteractionEnabled = true
        green.userInteractionEnabled = true
        
        red1.tag = 1
        red2.tag = 2
        red3.tag = 3
        red4.tag = 4
        red5.tag = 5
        blue1.tag = 11
        blue2.tag = 12
        blue3.tag = 13
        blue4.tag = 14
        blue5.tag = 15
        green.tag = 100
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        let FirstTouch = touches.first!
        
        if FirstTouch.view?.tag == red1.tag {
            UIView.animateWithDuration(0.06,
                                       animations: { () -> Void in
                                        self.red1.transform = CGAffineTransformMakeScale(0.9, 0.9)
                })
            { (Bool) -> Void in }
        }else if FirstTouch.view?.tag == red2.tag {
            UIView.animateWithDuration(0.06,
                                       animations: { () -> Void in
                                        self.red2.transform = CGAffineTransformMakeScale(0.9, 0.9)
                })
            { (Bool) -> Void in }
        }else if FirstTouch.view?.tag == red3.tag {
            UIView.animateWithDuration(0.06,
                                       animations: { () -> Void in
                                        self.red3.transform = CGAffineTransformMakeScale(0.9, 0.9)
                })
            { (Bool) -> Void in }
        }else if FirstTouch.view?.tag == red4.tag {
            UIView.animateWithDuration(0.06,
                                       animations: { () -> Void in
                                        self.red4.transform = CGAffineTransformMakeScale(0.9, 0.9)
                })
            { (Bool) -> Void in }
        }else if FirstTouch.view?.tag == red5.tag {
            UIView.animateWithDuration(0.06,
                                       animations: { () -> Void in
                                        self.red5.transform = CGAffineTransformMakeScale(0.9, 0.9)
                })
            { (Bool) -> Void in }
        }else if FirstTouch.view?.tag == blue1.tag {
            UIView.animateWithDuration(0.06,
                                       animations: { () -> Void in
                                        self.blue1.transform = CGAffineTransformMakeScale(0.9, 0.9)
                })
            { (Bool) -> Void in }
        }else if FirstTouch.view?.tag == blue2.tag {
            UIView.animateWithDuration(0.06,
                                       animations: { () -> Void in
                                        self.blue2.transform = CGAffineTransformMakeScale(0.9, 0.9)
                })
            { (Bool) -> Void in }
        }else if FirstTouch.view?.tag == blue3.tag {
            UIView.animateWithDuration(0.06,
                                       animations: { () -> Void in
                                        self.blue3.transform = CGAffineTransformMakeScale(0.9, 0.9)
                })
            { (Bool) -> Void in }
        }else if FirstTouch.view?.tag == blue4.tag {
            UIView.animateWithDuration(0.06,
                                       animations: { () -> Void in
                                        self.blue4.transform = CGAffineTransformMakeScale(0.9, 0.9)
                })
            { (Bool) -> Void in }
        }else if FirstTouch.view?.tag == blue5.tag {
            UIView.animateWithDuration(0.06,
                                       animations: { () -> Void in
                                        self.blue5.transform = CGAffineTransformMakeScale(0.9, 0.9)
                })
            { (Bool) -> Void in }
        }else if FirstTouch.view?.tag == green.tag {
            UIView.animateWithDuration(0.06,
                                       animations: { () -> Void in
                                        self.green.transform = CGAffineTransformMakeScale(0.9, 0.9)
                })
            { (Bool) -> Void in }
        }
        
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let FirstTouch = touches.first!
        
        let location = FirstTouch.locationInView(self.view)
        let prevLocation = FirstTouch.previousLocationInView(self.view)
        
        var FrameRed1: CGRect = red1.frame
        var FrameRed2: CGRect = red2.frame
        var FrameRed3: CGRect = red3.frame
        var FrameRed4: CGRect = red4.frame
        var FrameRed5: CGRect = red5.frame
        var FrameBlue1: CGRect = blue1.frame
        var FrameBlue2: CGRect = blue2.frame
        var FrameBlue3: CGRect = blue3.frame
        var FrameBlue4: CGRect = blue4.frame
        var FrameBlue5: CGRect = blue5.frame
        var FrameGreen: CGRect = green.frame
        
        let deltaX: CGFloat = location.x - prevLocation.x
        let deltaY: CGFloat = location.y - prevLocation.y
        
        if FirstTouch.view?.tag == red1.tag {
            FrameRed1.origin.x += deltaX
            FrameRed1.origin.y += deltaY
        }else if FirstTouch.view?.tag == red2.tag {
            FrameRed2.origin.x += deltaX
            FrameRed2.origin.y += deltaY
        }else if FirstTouch.view?.tag == red3.tag {
            FrameRed3.origin.x += deltaX
            FrameRed3.origin.y += deltaY
        }else if FirstTouch.view?.tag == red4.tag {
            FrameRed4.origin.x += deltaX
            FrameRed4.origin.y += deltaY
        }else if FirstTouch.view?.tag == red5.tag {
            FrameRed5.origin.x += deltaX
            FrameRed5.origin.y += deltaY
        }else if FirstTouch.view?.tag == blue1.tag {
            FrameBlue1.origin.x += deltaX
            FrameBlue1.origin.y += deltaY
        }else if FirstTouch.view?.tag == blue2.tag {
            FrameBlue2.origin.x += deltaX
            FrameBlue2.origin.y += deltaY
        }else if FirstTouch.view?.tag == blue3.tag {
            FrameBlue3.origin.x += deltaX
            FrameBlue3.origin.y += deltaY
        }else if FirstTouch.view?.tag == blue4.tag {
            FrameBlue4.origin.x += deltaX
            FrameBlue4.origin.y += deltaY
        }else if FirstTouch.view?.tag == blue5.tag {
            FrameBlue5.origin.x += deltaX
            FrameBlue5.origin.y += deltaY
        }else if FirstTouch.view?.tag == green.tag {
            FrameGreen.origin.x += deltaX
            FrameGreen.origin.y += deltaY
        }
        
        red1.frame = FrameRed1
        red2.frame = FrameRed2
        red3.frame = FrameRed3
        red4.frame = FrameRed4
        red5.frame = FrameRed5
        blue1.frame = FrameBlue1
        blue2.frame = FrameBlue2
        blue3.frame = FrameBlue3
        blue4.frame = FrameBlue4
        blue5.frame = FrameBlue5
        green.frame = FrameGreen
        
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        let FirstTouch = touches.first!
        
        if FirstTouch.view?.tag == red1.tag {
            UIView.animateWithDuration(0.1,
                                       animations: { () -> Void in
                                        self.red1.transform = CGAffineTransformMakeScale(0.4, 0.4)
                                        self.red1.transform = CGAffineTransformMakeScale(1.0, 1.0)
                })
            { (Bool) -> Void in }
        }else if FirstTouch.view?.tag == red2.tag {
            UIView.animateWithDuration(0.1,
                                       animations: { () -> Void in
                                        self.red2.transform = CGAffineTransformMakeScale(0.4, 0.4)
                                        self.red2.transform = CGAffineTransformMakeScale(1.0, 1.0)
                })
            { (Bool) -> Void in }
        }else if FirstTouch.view?.tag == red3.tag {
            UIView.animateWithDuration(0.1,
                                       animations: { () -> Void in
                                        self.red3.transform = CGAffineTransformMakeScale(0.4, 0.4)
                                        self.red3.transform = CGAffineTransformMakeScale(1.0, 1.0)
                })
            { (Bool) -> Void in }
        }else if FirstTouch.view?.tag == red4.tag {
            UIView.animateWithDuration(0.1,
                                       animations: { () -> Void in
                                        self.red4.transform = CGAffineTransformMakeScale(0.4, 0.4)
                                        self.red4.transform = CGAffineTransformMakeScale(1.0, 1.0)
                })
            { (Bool) -> Void in }
        }else if FirstTouch.view?.tag == red5.tag {
            UIView.animateWithDuration(0.1,
                                       animations: { () -> Void in
                                        self.red5.transform = CGAffineTransformMakeScale(0.4, 0.4)
                                        self.red5.transform = CGAffineTransformMakeScale(1.0, 1.0)
                })
            { (Bool) -> Void in }
        }else if FirstTouch.view?.tag == blue1.tag {
            UIView.animateWithDuration(0.1,
                                       animations: { () -> Void in
                                        self.blue1.transform = CGAffineTransformMakeScale(0.4, 0.4)
                                        self.blue1.transform = CGAffineTransformMakeScale(1.0, 1.0)
                })
            { (Bool) -> Void in }
        }else if FirstTouch.view?.tag == blue2.tag {
            UIView.animateWithDuration(0.1,
                                       animations: { () -> Void in
                                        self.blue2.transform = CGAffineTransformMakeScale(0.4, 0.4)
                                        self.blue2.transform = CGAffineTransformMakeScale(1.0, 1.0)
                })
            { (Bool) -> Void in }
        }else if FirstTouch.view?.tag == blue3.tag {
            UIView.animateWithDuration(0.1,
                                       animations: { () -> Void in
                                        self.blue3.transform = CGAffineTransformMakeScale(0.4, 0.4)
                                        self.blue3.transform = CGAffineTransformMakeScale(1.0, 1.0)
                })
            { (Bool) -> Void in }
        }else if FirstTouch.view?.tag == blue4.tag {
            UIView.animateWithDuration(0.1,
                                       animations: { () -> Void in
                                        self.blue4.transform = CGAffineTransformMakeScale(0.4, 0.4)
                                        self.blue4.transform = CGAffineTransformMakeScale(1.0, 1.0)
                })
            { (Bool) -> Void in }
        }else if FirstTouch.view?.tag == blue5.tag {
            UIView.animateWithDuration(0.1,
                                       animations: { () -> Void in
                                        self.blue5.transform = CGAffineTransformMakeScale(0.4, 0.4)
                                        self.blue5.transform = CGAffineTransformMakeScale(1.0, 1.0)
                })
            { (Bool) -> Void in }
        }else if FirstTouch.view?.tag == green.tag {
            UIView.animateWithDuration(0.1,
                                       animations: { () -> Void in
                                        self.green.transform = CGAffineTransformMakeScale(0.4, 0.4)
                                        self.green.transform = CGAffineTransformMakeScale(1.0, 1.0)
                })
            { (Bool) -> Void in }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Change() {
        if BasketCourt.image == Pic1 {
            BasketCourt.image = Pic2
        }else if BasketCourt.image == Pic2 {
            BasketCourt.image = Pic1
        }
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
