
//
//  TableViewCell.swift
//  Basket Board
//
//  Created by 松井恵人 on 2016/09/25.
//  Copyright © 2016年 松井恵人. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell, UITextFieldDelegate {
    
    @IBOutlet var No: UITextField!
    @IBOutlet var Name: UITextField!
    @IBOutlet var Pts: UITextField!
    @IBOutlet var Ast: UITextField!
    @IBOutlet var Reb: UITextField!
    @IBOutlet var Stl: UITextField!
    
    let scoreDefaults = NSUserDefaults.standardUserDefaults()


    override func awakeFromNib() {
        super.awakeFromNib()
        
        No.placeholder = "No"
        Name.placeholder = "Name"
        Pts.placeholder = "Pts"
        Ast.placeholder = "Ast"
        Reb.placeholder = "Reb"
        Stl.placeholder = "Stl"
        
        No.delegate = self
        Name.delegate = self
        Pts.delegate = self
        Ast.delegate = self
        Reb.delegate = self
        Stl.delegate = self
        
        if let noText = scoreDefaults.stringForKey("No") {
            No.text = noText
        }
        if let nameText = scoreDefaults.stringForKey("Name") {
            Name.text = nameText
        }
        if let ptsText = scoreDefaults.stringForKey("Pts") {
            Pts.text = ptsText
        }
        if let astText = scoreDefaults.stringForKey("Ast") {
            Ast.text = astText
        }
        if let rebText = scoreDefaults.stringForKey("Reb") {
            Reb.text = rebText
        }
        if let stlText = scoreDefaults.stringForKey("Stl") {
            Stl.text = stlText
        }
        
        
    
        
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        scoreDefaults.setObject(No.text, forKey: "No")
        scoreDefaults.setObject(Name.text, forKey: "Name")
        scoreDefaults.setObject(Pts.text, forKey: "Pts")
        scoreDefaults.setObject(Ast.text, forKey: "Ast")
        scoreDefaults.setObject(Reb.text, forKey: "Reb")
        scoreDefaults.setObject(Stl.text, forKey: "Stl")
        
        scoreDefaults.synchronize()
        return true
    }





}
