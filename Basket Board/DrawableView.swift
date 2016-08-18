//
//  DrawableView.swift
//  Basket Board
//
//  Created by 松井恵人 on 2016/07/16.
//  Copyright © 2016年 松井恵人. All rights reserved.
//

import UIKit

class DrawableView: UIViewController {
    
    class Line {
        var points: [CGPoint]
        var color :CGColorRef
        var width: CGFloat
        
        init(color: CGColorRef, width: CGFloat){
            self.color = color
            self.width = width
            self.points = []
        }
        
        func drawOnContext(context: CGContextRef){
            UIGraphicsPushContext(context)
            
            CGContextSetStrokeColorWithColor(context, self.color)
            CGContextSetLineWidth(context, self.width)
            CGContextSetLineCap(context, CGLineCap.Round)
            
            // 2点以上ないと線描画する必要なし
            if self.points.count > 1 {
                for (index, point) in self.points.enumerate() {
                    if index == 0 {
                        CGContextMoveToPoint(context, point.x, point.y)
                    } else {
                        CGContextAddLineToPoint(context, point.x, point.y)
                    }
                }
            }
            CGContextStrokePath(context)
            
            UIGraphicsPopContext()
        }
    }
    
    var lines: [Line] = []
    var currentLine: Line? = nil
    
    // タッチされた
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let point = touches.first!.locationInView(self)
        currentLine = Line(color: UIColor.redColor().CGColor, width: 5)
        currentLine?.points.append(point)
    }
    
    // タッチが動いた
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let point = touches.first!.locationInView(self)
        currentLine?.points.append(point)
        self.setNeedsDisplay()
    }
    
    // タッチが終わった
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        // 2点以上のlineしか保存する必要なし
        if currentLine?.points.count > 1 {
            lines.append(currentLine!)
        }
        
        currentLine = nil
        self.setNeedsDisplay()
    }
    
    func resetContext(context: CGContextRef) {
        CGContextClearRect(context, self.bounds)
        if let color = self.backgroundColor {
            color.setFill()
        } else {
            UIColor.whiteColor().setFill()
        }
        CGContextFillRect(context, self.bounds)
    }
    
    //描画設定
    override func drawRect(rect: CGRect) {
        
        let context = UIGraphicsGetCurrentContext()
        
        //画面を一旦初期化
        resetContext(context!)
        
        // 描き終わったline
        for line in lines {
            line.drawOnContext(context!)
        }
        
        // 描いてる途中のline
        if let line = currentLine {
            line.drawOnContext(context!)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
