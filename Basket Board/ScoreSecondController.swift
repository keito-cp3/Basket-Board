//
//  ScoreSecondController.swift
//  Basket Board
//
//  Created by 松井恵人 on 2016/08/11.
//  Copyright © 2016年 松井恵人. All rights reserved.
//

import UIKit

class ScoreSecondController: UIViewController,UITextFieldDelegate {
    
    var number: Int!
    var number2 : Int!
    var homeDic : [String: String] = [:]
    
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
        
        NSLog("number2の値は%dだ", number2)
       
        
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
        
        if let homeText = scoreDefaults.stringForKey("Home"+String(number)) {
            homeScore.text = homeText
        }
        if let guestText = scoreDefaults.stringForKey("Guest"+String(number)) {
            guestScore.text = guestText
        }
        if let noText = scoreDefaults.stringForKey("No"+String(number)) {
            no.text = noText
        }
        if let no1Text = scoreDefaults.stringForKey("No1"+String(number)) {
            no1.text = no1Text
        }
        if let no2Text = scoreDefaults.stringForKey("No2"+String(number)) {
            no2.text = no2Text
        }
        if let no3Text = scoreDefaults.stringForKey("No3"+String(number)) {
            no3.text = no3Text
        }
        if let no4Text = scoreDefaults.stringForKey("No4"+String(number)) {
            no4.text = no4Text
        }
        if let no5Text = scoreDefaults.stringForKey("No5"+String(number)) {
            no5.text = no5Text
        }
        if let no6Text = scoreDefaults.stringForKey("No6"+String(number)) {
            no6.text = no6Text
        }
        if let no7Text = scoreDefaults.stringForKey("No7"+String(number)) {
            no7.text = no7Text
        }
        if let no8Text = scoreDefaults.stringForKey("No8"+String(number)) {
            no8.text = no8Text
        }
        if let no9Text = scoreDefaults.stringForKey("No9"+String(number)) {
            no9.text = no9Text
        }
        if let ptsText = scoreDefaults.stringForKey("Pts"+String(number)) {
            pts.text = ptsText
        }
        if let pts1Text = scoreDefaults.stringForKey("Pts1"+String(number)) {
            pts1.text = pts1Text
        }
        if let pts2Text = scoreDefaults.stringForKey("Pts2"+String(number)) {
            pts2.text = pts2Text
        }
        if let pts3Text = scoreDefaults.stringForKey("Pts3"+String(number)) {
            pts3.text = pts3Text
        }
        if let pts4Text = scoreDefaults.stringForKey("Pts4"+String(number)) {
            pts4.text = pts4Text
        }
        if let pts5Text = scoreDefaults.stringForKey("Pts5"+String(number)) {
            pts5.text = pts5Text
        }
        if let pts6Text = scoreDefaults.stringForKey("Pts6"+String(number)) {
            pts6.text = pts6Text
        }
        if let pts7Text = scoreDefaults.stringForKey("Pts7"+String(number)) {
            pts7.text = pts7Text
        }
        if let pts8Text = scoreDefaults.stringForKey("Pts8"+String(number)) {
            pts8.text = pts8Text
        }
        if let pts9Text = scoreDefaults.stringForKey("Pts9"+String(number)) {
            pts9.text = pts9Text
        }
        if let astText = scoreDefaults.stringForKey("Ast"+String(number)) {
            ast.text = astText
        }
        if let ast1Text = scoreDefaults.stringForKey("Ast1"+String(number)) {
            ast1.text = ast1Text
        }
        if let ast2Text = scoreDefaults.stringForKey("Ast2"+String(number)) {
            ast2.text = ast2Text
        }
        if let ast3Text = scoreDefaults.stringForKey("Ast3"+String(number)) {
            ast3.text = ast3Text
        }
        if let ast4Text = scoreDefaults.stringForKey("Ast4"+String(number)) {
            ast4.text = ast4Text
        }
        if let ast5Text = scoreDefaults.stringForKey("Ast5"+String(number)) {
            ast5.text = ast5Text
        }
        if let ast6Text = scoreDefaults.stringForKey("Ast6"+String(number)) {
            ast6.text = ast6Text
        }
        if let ast7Text = scoreDefaults.stringForKey("Ast7"+String(number)) {
            ast7.text = ast7Text
        }
        if let ast8Text = scoreDefaults.stringForKey("Ast8"+String(number)) {
            ast8.text = ast8Text
        }
        if let ast9Text = scoreDefaults.stringForKey("Ast9"+String(number)) {
            ast9.text = ast9Text
        }
        if let rebText = scoreDefaults.stringForKey("Reb"+String(number)) {
            reb.text = rebText
        }
        if let reb1Text = scoreDefaults.stringForKey("Reb1"+String(number)) {
            reb1.text = reb1Text
        }
        if let reb2Text = scoreDefaults.stringForKey("Reb2"+String(number)) {
            reb2.text = reb2Text
        }
        if let reb3Text = scoreDefaults.stringForKey("Reb3"+String(number)) {
            reb3.text = reb3Text
        }
        if let reb4Text = scoreDefaults.stringForKey("Reb4"+String(number)) {
            reb4.text = reb4Text
        }
        if let reb5Text = scoreDefaults.stringForKey("Reb5"+String(number)) {
            reb5.text = reb5Text
        }
        if let reb6Text = scoreDefaults.stringForKey("Reb6"+String(number)) {
            reb6.text = reb6Text
        }
        if let reb7Text = scoreDefaults.stringForKey("Reb7"+String(number)) {
            reb7.text = reb7Text
        }
        if let reb8Text = scoreDefaults.stringForKey("Reb8"+String(number)) {
            reb8.text = reb8Text
        }
        if let reb9Text = scoreDefaults.stringForKey("Reb9"+String(number)) {
            reb9.text = reb9Text
        }
        if let stlText = scoreDefaults.stringForKey("Stl"+String(number)) {
            stl.text = stlText
        }
        if let stl1Text = scoreDefaults.stringForKey("Stl1"+String(number)) {
            stl1.text = stl1Text
        }
        if let stl2Text = scoreDefaults.stringForKey("Stl2"+String(number)) {
            stl2.text = stl2Text
        }
        if let stl3Text = scoreDefaults.stringForKey("Stl3"+String(number)) {
            stl3.text = stl3Text
        }
        if let stl4Text = scoreDefaults.stringForKey("Stl4"+String(number)) {
            stl4.text = stl4Text
        }
        if let stl5Text = scoreDefaults.stringForKey("Stl5"+String(number)) {
            stl5.text = stl5Text
        }
        if let stl6Text = scoreDefaults.stringForKey("Stl6"+String(number)) {
            stl6.text = stl6Text
        }
        if let stl7Text = scoreDefaults.stringForKey("Stl7"+String(number)) {
            stl7.text = stl7Text
        }
        if let stl8Text = scoreDefaults.stringForKey("Stl8"+String(number)) {
            stl8.text = stl8Text
        }
        if let stl9Text = scoreDefaults.stringForKey("Stl9"+String(number)) {
            stl9.text = stl9Text
        }
        if let nameText = scoreDefaults.stringForKey("Name"+String(number)) {
            name.text = nameText
        }
        if let name1Text = scoreDefaults.stringForKey("Name1"+String(number)) {
            name1.text = name1Text
        }
        if let name2Text = scoreDefaults.stringForKey("Name2"+String(number)) {
            name2.text = name2Text
        }
        if let name3Text = scoreDefaults.stringForKey("Name3"+String(number)) {
            name3.text = name3Text
        }
        if let name4Text = scoreDefaults.stringForKey("Name4"+String(number)) {
            name4.text = name4Text
        }
        if let name5Text = scoreDefaults.stringForKey("Name5"+String(number)) {
            name5.text = name5Text
        }
        if let name6Text = scoreDefaults.stringForKey("Name6"+String(number)) {
            name6.text = name6Text
        }
        if let name7Text = scoreDefaults.stringForKey("Name7"+String(number)) {
            name7.text = name7Text
        }
        if let name8Text = scoreDefaults.stringForKey("Name8"+String(number)) {
            name8.text = name8Text
        }
        if let name9Text = scoreDefaults.stringForKey("Name9"+String(number)) {
            name9.text = name9Text
        }
        
    }
    
    override func viewWillDisappear(animated: Bool) {
            }
    
        
        
        
        
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        
    
        scoreDefaults.setObject(homeScore.text, forKey: "Home"+String(number))
        scoreDefaults.setObject(guestScore.text, forKey: "Guest"+String(number))
        scoreDefaults.setObject(no.text, forKey: "No"+String(number))
        scoreDefaults.setObject(no1.text, forKey: "No1"+String(number))
        scoreDefaults.setObject(no2.text, forKey: "No2"+String(number))
        scoreDefaults.setObject(no3.text, forKey: "No3"+String(number))
        scoreDefaults.setObject(no4.text, forKey: "No4"+String(number))
        scoreDefaults.setObject(no5.text, forKey: "No5"+String(number))
        scoreDefaults.setObject(no6.text, forKey: "No6"+String(number))
        scoreDefaults.setObject(no7.text, forKey: "No7"+String(number))
        scoreDefaults.setObject(no8.text, forKey: "No8"+String(number))
        scoreDefaults.setObject(no9.text, forKey: "No9"+String(number))
        scoreDefaults.setObject(pts.text, forKey: "Pts"+String(number))
        scoreDefaults.setObject(pts1.text, forKey: "Pts1"+String(number))
        scoreDefaults.setObject(pts2.text, forKey: "Pts2"+String(number))
        scoreDefaults.setObject(pts3.text, forKey: "Pts3"+String(number))
        scoreDefaults.setObject(pts4.text, forKey: "Pts4"+String(number))
        scoreDefaults.setObject(pts5.text, forKey: "Pts5"+String(number))
        scoreDefaults.setObject(pts6.text, forKey: "Pts6"+String(number))
        scoreDefaults.setObject(pts7.text, forKey: "Pts7"+String(number))
        scoreDefaults.setObject(pts8.text, forKey: "Pts8"+String(number))
        scoreDefaults.setObject(pts9.text, forKey: "Pts9"+String(number))
        scoreDefaults.setObject(ast.text, forKey: "Ast"+String(number))
        scoreDefaults.setObject(ast1.text, forKey: "Ast1"+String(number))
        scoreDefaults.setObject(ast2.text, forKey: "Ast2"+String(number))
        scoreDefaults.setObject(ast3.text, forKey: "Ast3"+String(number))
        scoreDefaults.setObject(ast4.text, forKey: "Ast4"+String(number))
        scoreDefaults.setObject(ast5.text, forKey: "Ast5"+String(number))
        scoreDefaults.setObject(ast6.text, forKey: "Ast6"+String(number))
        scoreDefaults.setObject(ast7.text, forKey: "Ast7"+String(number))
        scoreDefaults.setObject(ast8.text, forKey: "Ast8"+String(number))
        scoreDefaults.setObject(ast9.text, forKey: "Ast9"+String(number))
        scoreDefaults.setObject(reb.text, forKey: "Reb"+String(number))
        scoreDefaults.setObject(reb1.text, forKey: "Reb1"+String(number))
        scoreDefaults.setObject(reb2.text, forKey: "Reb2"+String(number))
        scoreDefaults.setObject(reb3.text, forKey: "Reb3"+String(number))
        scoreDefaults.setObject(reb4.text, forKey: "Reb4"+String(number))
        scoreDefaults.setObject(reb5.text, forKey: "Reb5"+String(number))
        scoreDefaults.setObject(reb6.text, forKey: "Reb6"+String(number))
        scoreDefaults.setObject(reb7.text, forKey: "Reb7"+String(number))
        scoreDefaults.setObject(reb8.text, forKey: "Reb8"+String(number))
        scoreDefaults.setObject(reb9.text, forKey: "Reb9"+String(number))
        scoreDefaults.setObject(stl.text, forKey: "Stl"+String(number))
        scoreDefaults.setObject(stl1.text, forKey: "Stl1"+String(number))
        scoreDefaults.setObject(stl2.text, forKey: "Stl2"+String(number))
        scoreDefaults.setObject(stl3.text, forKey: "Stl3"+String(number))
        scoreDefaults.setObject(stl4.text, forKey: "Stl4"+String(number))
        scoreDefaults.setObject(stl5.text, forKey: "Stl5"+String(number))
        scoreDefaults.setObject(stl6.text, forKey: "Stl6"+String(number))
        scoreDefaults.setObject(stl7.text, forKey: "Stl7"+String(number))
        scoreDefaults.setObject(stl8.text, forKey: "Stl8"+String(number))
        scoreDefaults.setObject(stl9.text, forKey: "Stl9"+String(number))
        scoreDefaults.setObject(name.text, forKey: "Name"+String(number))
        scoreDefaults.setObject(name1.text, forKey: "Name1"+String(number))
        scoreDefaults.setObject(name2.text, forKey: "Name2"+String(number))
        scoreDefaults.setObject(name3.text, forKey: "Name3"+String(number))
        scoreDefaults.setObject(name4.text, forKey: "Name4"+String(number))
        scoreDefaults.setObject(name5.text, forKey: "Name5"+String(number))
        scoreDefaults.setObject(name6.text, forKey: "Name6"+String(number))
        scoreDefaults.setObject(name7.text, forKey: "Name7"+String(number))
        scoreDefaults.setObject(name8.text, forKey: "Name8"+String(number))
        scoreDefaults.setObject(name9.text, forKey: "Name9"+String(number))
        
        scoreDefaults.synchronize()
        
        return true
    }
   
    
    
    
    
    
    
    


}
