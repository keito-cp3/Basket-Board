//
//  ScoreSecondController.swift
//  Basket Board
//
//  Created by 松井恵人 on 2016/08/11.
//  Copyright © 2016年 松井恵人. All rights reserved.
//

import UIKit

class ScoreSecondController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var homeScore: UITextField!
    @IBOutlet var guestScore: UITextField!
    @IBOutlet var no: UITextField!
    @IBOutlet var no1: UITextField!
    @IBOutlet var no2: UITextField!
    @IBOutlet var no3: UITextField!
    @IBOutlet var no4: UITextField!
    @IBOutlet var no5: UITextField!
    @IBOutlet var no6: UITextField!
    @IBOutlet var no7: UITextField!
    @IBOutlet var no8: UITextField!
    @IBOutlet var no9: UITextField!
    @IBOutlet var pts: UITextField!
    @IBOutlet var pts1: UITextField!
    @IBOutlet var pts2: UITextField!
    @IBOutlet var pts3: UITextField!
    @IBOutlet var pts4: UITextField!
    @IBOutlet var pts5: UITextField!
    @IBOutlet var pts6: UITextField!
    @IBOutlet var pts7: UITextField!
    @IBOutlet var pts8: UITextField!
    @IBOutlet var pts9: UITextField!
    @IBOutlet var ast: UITextField!
    @IBOutlet var ast1: UITextField!
    @IBOutlet var ast2: UITextField!
    @IBOutlet var ast3: UITextField!
    @IBOutlet var ast4: UITextField!
    @IBOutlet var ast5: UITextField!
    @IBOutlet var ast6: UITextField!
    @IBOutlet var ast7: UITextField!
    @IBOutlet var ast8: UITextField!
    @IBOutlet var ast9: UITextField!
    @IBOutlet var reb: UITextField!
    @IBOutlet var reb1: UITextField!
    @IBOutlet var reb2: UITextField!
    @IBOutlet var reb3: UITextField!
    @IBOutlet var reb4: UITextField!
    @IBOutlet var reb5: UITextField!
    @IBOutlet var reb6: UITextField!
    @IBOutlet var reb7: UITextField!
    @IBOutlet var reb8: UITextField!
    @IBOutlet var reb9: UITextField!
    @IBOutlet var stl: UITextField!
    @IBOutlet var stl1: UITextField!
    @IBOutlet var stl2: UITextField!
    @IBOutlet var stl3: UITextField!
    @IBOutlet var stl4: UITextField!
    @IBOutlet var stl5: UITextField!
    @IBOutlet var stl6: UITextField!
    @IBOutlet var stl7: UITextField!
    @IBOutlet var stl8: UITextField!
    @IBOutlet var stl9: UITextField!
    @IBOutlet var fg: UITextField!
    @IBOutlet var fg1: UITextField!
    @IBOutlet var fg2: UITextField!
    @IBOutlet var fg3: UITextField!
    @IBOutlet var fg4: UITextField!
    @IBOutlet var fg5: UITextField!
    @IBOutlet var fg6: UITextField!
    @IBOutlet var fg7: UITextField!
    @IBOutlet var fg8: UITextField!
    @IBOutlet var fg9: UITextField!
    @IBOutlet var name: UITextField!
    @IBOutlet var name1: UITextField!
    @IBOutlet var name2: UITextField!
    @IBOutlet var name3: UITextField!
    @IBOutlet var name4: UITextField!
    @IBOutlet var name5: UITextField!
    @IBOutlet var name6: UITextField!
    @IBOutlet var name7: UITextField!
    @IBOutlet var name8: UITextField!
    @IBOutlet var name9: UITextField!
    
    
    
    let scoreDefaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeScore.delegate = self
        guestScore.delegate = self
        no.delegate = self
        no1.delegate = self
        no2.delegate = self
        no3.delegate = self
        no4.delegate = self
        no5.delegate = self
        no6.delegate = self
        no7.delegate = self
        no8.delegate = self
        no9.delegate = self
        pts.delegate = self
        pts1.delegate = self
        pts2.delegate = self
        pts3.delegate = self
        pts4.delegate = self
        pts5.delegate = self
        pts6.delegate = self
        pts7.delegate = self
        pts8.delegate = self
        pts9.delegate = self
        ast.delegate = self
        ast1.delegate = self
        ast2.delegate = self
        ast3.delegate = self
        ast4.delegate = self
        ast5.delegate = self
        ast6.delegate = self
        ast7.delegate = self
        ast8.delegate = self
        ast9.delegate = self
        reb.delegate = self
        reb1.delegate = self
        reb2.delegate = self
        reb3.delegate = self
        reb4.delegate = self
        reb5.delegate = self
        reb6.delegate = self
        reb7.delegate = self
        reb8.delegate = self
        reb9.delegate = self
        stl.delegate = self
        stl1.delegate = self
        stl2.delegate = self
        stl3.delegate = self
        stl4.delegate = self
        stl5.delegate = self
        stl6.delegate = self
        stl7.delegate = self
        stl8.delegate = self
        stl9.delegate = self
        fg.delegate = self
        fg1.delegate = self
        fg2.delegate = self
        fg3.delegate = self
        fg4.delegate = self
        fg5.delegate = self
        fg6.delegate = self
        fg7.delegate = self
        fg8.delegate = self
        fg9.delegate = self
        name.delegate = self
        name1.delegate = self
        name2.delegate = self
        name3.delegate = self
        name4.delegate = self
        name5.delegate = self
        name6.delegate = self
        name7.delegate = self
        name8.delegate = self
        name9.delegate = self
        
        if let homeText = scoreDefaults.stringForKey("Home") {
            homeScore.text = homeText
        }
        if let guestText = scoreDefaults.stringForKey("Guest") {
            guestScore.text = guestText
        }
        if let noText = scoreDefaults.stringForKey("No") {
            no.text = noText
        }
        if let no1Text = scoreDefaults.stringForKey("No1") {
            no1.text = no1Text
        }
        if let no2Text = scoreDefaults.stringForKey("No2") {
            no2.text = no2Text
        }
        if let no3Text = scoreDefaults.stringForKey("No3") {
            no3.text = no3Text
        }
        if let no4Text = scoreDefaults.stringForKey("No4") {
            no4.text = no4Text
        }
        if let no5Text = scoreDefaults.stringForKey("No5") {
            no5.text = no5Text
        }
        if let no6Text = scoreDefaults.stringForKey("No6") {
            no6.text = no6Text
        }
        if let no7Text = scoreDefaults.stringForKey("No7") {
            no7.text = no7Text
        }
        if let no8Text = scoreDefaults.stringForKey("No8") {
            no8.text = no8Text
        }
        if let no9Text = scoreDefaults.stringForKey("No9") {
            no9.text = no9Text
        }
        if let ptsText = scoreDefaults.stringForKey("Pts") {
            pts.text = ptsText
        }
        if let pts1Text = scoreDefaults.stringForKey("Pts1") {
            pts1.text = pts1Text
        }
        if let pts2Text = scoreDefaults.stringForKey("Pts2") {
            pts2.text = pts2Text
        }
        if let pts3Text = scoreDefaults.stringForKey("Pts3") {
            pts3.text = pts3Text
        }
        if let pts4Text = scoreDefaults.stringForKey("Pts4") {
            pts4.text = pts4Text
        }
        if let pts5Text = scoreDefaults.stringForKey("Pts5") {
            pts5.text = pts5Text
        }
        if let pts6Text = scoreDefaults.stringForKey("Pts6") {
            pts6.text = pts6Text
        }
        if let pts7Text = scoreDefaults.stringForKey("Pts7") {
            pts7.text = pts7Text
        }
        if let pts8Text = scoreDefaults.stringForKey("Pts8") {
            pts8.text = pts8Text
        }
        if let pts9Text = scoreDefaults.stringForKey("Pts9") {
            pts9.text = pts9Text
        }
        if let astText = scoreDefaults.stringForKey("Ast") {
            ast.text = astText
        }
        if let ast1Text = scoreDefaults.stringForKey("Ast1") {
            ast1.text = ast1Text
        }
        if let ast2Text = scoreDefaults.stringForKey("Ast2") {
            ast2.text = ast2Text
        }
        if let ast3Text = scoreDefaults.stringForKey("Ast3") {
            ast3.text = ast3Text
        }
        if let ast4Text = scoreDefaults.stringForKey("Ast4") {
            ast4.text = ast4Text
        }
        if let ast5Text = scoreDefaults.stringForKey("Ast5") {
            ast5.text = ast5Text
        }
        if let ast6Text = scoreDefaults.stringForKey("Ast6") {
            ast6.text = ast6Text
        }
        if let ast7Text = scoreDefaults.stringForKey("Ast7") {
            ast7.text = ast7Text
        }
        if let ast8Text = scoreDefaults.stringForKey("Ast8") {
            ast8.text = ast8Text
        }
        if let ast9Text = scoreDefaults.stringForKey("Ast9") {
            ast9.text = ast9Text
        }
        if let rebText = scoreDefaults.stringForKey("Reb") {
            reb.text = rebText
        }
        if let reb1Text = scoreDefaults.stringForKey("Reb1") {
            reb1.text = reb1Text
        }
        if let reb2Text = scoreDefaults.stringForKey("Reb2") {
            reb2.text = reb2Text
        }
        if let reb3Text = scoreDefaults.stringForKey("Reb3") {
            reb3.text = reb3Text
        }
        if let reb4Text = scoreDefaults.stringForKey("Reb4") {
            reb4.text = reb4Text
        }
        if let reb5Text = scoreDefaults.stringForKey("Reb5") {
            reb5.text = reb5Text
        }
        if let reb6Text = scoreDefaults.stringForKey("Reb6") {
            reb6.text = reb6Text
        }
        if let reb7Text = scoreDefaults.stringForKey("Reb7") {
            reb7.text = reb7Text
        }
        if let reb8Text = scoreDefaults.stringForKey("Reb8") {
            reb8.text = reb8Text
        }
        if let reb9Text = scoreDefaults.stringForKey("Reb9") {
            reb9.text = reb9Text
        }
        if let stlText = scoreDefaults.stringForKey("Stl") {
            stl.text = stlText
        }
        if let stl1Text = scoreDefaults.stringForKey("Stl1") {
            stl1.text = stl1Text
        }
        if let stl2Text = scoreDefaults.stringForKey("Stl2") {
            stl2.text = stl2Text
        }
        if let stl3Text = scoreDefaults.stringForKey("Stl3") {
            stl3.text = stl3Text
        }
        if let stl4Text = scoreDefaults.stringForKey("Stl4") {
            stl4.text = stl4Text
        }
        if let stl5Text = scoreDefaults.stringForKey("Stl5") {
            stl5.text = stl5Text
        }
        if let stl6Text = scoreDefaults.stringForKey("Stl6") {
            stl6.text = stl6Text
        }
        if let stl7Text = scoreDefaults.stringForKey("Stl7") {
            stl7.text = stl7Text
        }
        if let stl8Text = scoreDefaults.stringForKey("Stl8") {
            stl8.text = stl8Text
        }
        if let stl9Text = scoreDefaults.stringForKey("Stl9") {
            stl9.text = stl9Text
        }
        if let fgText = scoreDefaults.stringForKey("FG") {
            fg.text = fgText
        }
        if let fg1Text = scoreDefaults.stringForKey("FG1") {
            fg1.text = fg1Text
        }
        if let fg2Text = scoreDefaults.stringForKey("FG2") {
            fg2.text = fg2Text
        }
        if let fg3Text = scoreDefaults.stringForKey("FG3") {
            fg3.text = fg3Text
        }
        if let fg4Text = scoreDefaults.stringForKey("FG4") {
            fg4.text = fg4Text
        }
        if let fg5Text = scoreDefaults.stringForKey("FG5") {
            fg5.text = fg5Text
        }
        if let fg6Text = scoreDefaults.stringForKey("FG6") {
            fg6.text = fg6Text
        }
        if let fg7Text = scoreDefaults.stringForKey("FG7") {
            fg7.text = fg7Text
        }
        if let fg8Text = scoreDefaults.stringForKey("FG8") {
            fg8.text = fg8Text
        }
        if let fg9Text = scoreDefaults.stringForKey("FG9") {
            fg9.text = fg9Text
        }
        if let nameText = scoreDefaults.stringForKey("Name") {
            name.text = nameText
        }
        if let name1Text = scoreDefaults.stringForKey("Name1") {
            name1.text = name1Text
        }
        if let name2Text = scoreDefaults.stringForKey("Name2") {
            name2.text = name2Text
        }
        if let name3Text = scoreDefaults.stringForKey("Name3") {
            name3.text = name3Text
        }
        if let name4Text = scoreDefaults.stringForKey("Name4") {
            name4.text = name4Text
        }
        if let name5Text = scoreDefaults.stringForKey("Name5") {
            name5.text = name5Text
        }
        if let name6Text = scoreDefaults.stringForKey("Name6") {
            name6.text = name6Text
        }
        if let name7Text = scoreDefaults.stringForKey("Name7") {
            name7.text = name7Text
        }
        if let name8Text = scoreDefaults.stringForKey("Name8") {
            name8.text = name8Text
        }
        if let name9Text = scoreDefaults.stringForKey("Name9") {
            name9.text = name9Text
        }
        
    }
    
        
        
        
        
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func textFieldShouldReturn(textField:UITextField) -> Bool {
        
        self.view.endEditing(true)
        
        scoreDefaults.setObject(homeScore.text, forKey: "Home")
        scoreDefaults.setObject(guestScore.text, forKey: "Guest")
        scoreDefaults.setObject(no.text, forKey: "No")
        scoreDefaults.setObject(no1.text, forKey: "No1")
        scoreDefaults.setObject(no2.text, forKey: "No2")
        scoreDefaults.setObject(no3.text, forKey: "No3")
        scoreDefaults.setObject(no4.text, forKey: "No4")
        scoreDefaults.setObject(no5.text, forKey: "No5")
        scoreDefaults.setObject(no6.text, forKey: "No6")
        scoreDefaults.setObject(no7.text, forKey: "No7")
        scoreDefaults.setObject(no8.text, forKey: "No8")
        scoreDefaults.setObject(no9.text, forKey: "No9")
        scoreDefaults.setObject(pts.text, forKey: "Pts")
        scoreDefaults.setObject(pts1.text, forKey: "Pts1")
        scoreDefaults.setObject(pts2.text, forKey: "Pts2")
        scoreDefaults.setObject(pts3.text, forKey: "Pts3")
        scoreDefaults.setObject(pts4.text, forKey: "Pts4")
        scoreDefaults.setObject(pts5.text, forKey: "Pts5")
        scoreDefaults.setObject(pts6.text, forKey: "Pts6")
        scoreDefaults.setObject(pts7.text, forKey: "Pts7")
        scoreDefaults.setObject(pts8.text, forKey: "Pts8")
        scoreDefaults.setObject(pts9.text, forKey: "Pts9")
        scoreDefaults.setObject(ast.text, forKey: "Ast")
        scoreDefaults.setObject(ast1.text, forKey: "Ast1")
        scoreDefaults.setObject(ast2.text, forKey: "Ast2")
        scoreDefaults.setObject(ast3.text, forKey: "Ast3")
        scoreDefaults.setObject(ast4.text, forKey: "Ast4")
        scoreDefaults.setObject(ast5.text, forKey: "Ast5")
        scoreDefaults.setObject(ast6.text, forKey: "Ast6")
        scoreDefaults.setObject(ast7.text, forKey: "Ast7")
        scoreDefaults.setObject(ast8.text, forKey: "Ast8")
        scoreDefaults.setObject(ast9.text, forKey: "Ast9")
        scoreDefaults.setObject(reb.text, forKey: "Reb")
        scoreDefaults.setObject(reb1.text, forKey: "Reb1")
        scoreDefaults.setObject(reb2.text, forKey: "Reb2")
        scoreDefaults.setObject(reb3.text, forKey: "Reb3")
        scoreDefaults.setObject(reb4.text, forKey: "Reb4")
        scoreDefaults.setObject(reb5.text, forKey: "Reb5")
        scoreDefaults.setObject(reb6.text, forKey: "Reb6")
        scoreDefaults.setObject(reb7.text, forKey: "Reb7")
        scoreDefaults.setObject(reb8.text, forKey: "Reb8")
        scoreDefaults.setObject(reb9.text, forKey: "Reb9")
        scoreDefaults.setObject(stl.text, forKey: "Stl")
        scoreDefaults.setObject(stl1.text, forKey: "Stl1")
        scoreDefaults.setObject(stl2.text, forKey: "Stl2")
        scoreDefaults.setObject(stl3.text, forKey: "Stl3")
        scoreDefaults.setObject(stl4.text, forKey: "Stl4")
        scoreDefaults.setObject(stl5.text, forKey: "Stl5")
        scoreDefaults.setObject(stl6.text, forKey: "Stl6")
        scoreDefaults.setObject(stl7.text, forKey: "Stl7")
        scoreDefaults.setObject(stl8.text, forKey: "Stl8")
        scoreDefaults.setObject(stl9.text, forKey: "Stl9")
        scoreDefaults.setObject(fg.text, forKey: "FG")
        scoreDefaults.setObject(fg1.text, forKey: "FG1")
        scoreDefaults.setObject(fg2.text, forKey: "FG2")
        scoreDefaults.setObject(fg3.text, forKey: "FG3")
        scoreDefaults.setObject(fg4.text, forKey: "FG4")
        scoreDefaults.setObject(fg5.text, forKey: "FG5")
        scoreDefaults.setObject(fg6.text, forKey: "FG6")
        scoreDefaults.setObject(fg7.text, forKey: "FG7")
        scoreDefaults.setObject(fg8.text, forKey: "FG8")
        scoreDefaults.setObject(fg9.text, forKey: "FG9")
        scoreDefaults.setObject(name.text, forKey: "Name")
        scoreDefaults.setObject(name1.text, forKey: "Name1")
        scoreDefaults.setObject(name2.text, forKey: "Name2")
        scoreDefaults.setObject(name3.text, forKey: "Name3")
        scoreDefaults.setObject(name4.text, forKey: "Name4")
        scoreDefaults.setObject(name5.text, forKey: "Name5")
        scoreDefaults.setObject(name6.text, forKey: "Name6")
        scoreDefaults.setObject(name7.text, forKey: "Name7")
        scoreDefaults.setObject(name8.text, forKey: "Name8")
        scoreDefaults.setObject(name9.text, forKey: "Name9")
        
        scoreDefaults.synchronize()
        
        return false
    }
   
    
    
    
    
    
    
    


}
