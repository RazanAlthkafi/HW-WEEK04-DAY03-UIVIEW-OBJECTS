//
//  ViewController.swift
//  switchhomework
//
//  Created by Roaa aljohani on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var unlock: UILabel!
    @IBOutlet weak var denied: UILabel!
    @IBOutlet weak var allowed: UILabel!
    @IBOutlet weak var acessmad: UILabel!
    @IBOutlet weak var namelabel: UITextField!
    @IBOutlet weak var kidlabel: UITextField!
    @IBOutlet weak var amadd: UISwitch!
 
    @IBOutlet weak var youtubeacess: UISwitch!
    @IBAction func phonepress(_ sender: Any) {
     
        if (namelabel.text == kidlabel.text) {
            unlock.text = "Unlocked ✅"}
        else{
            unlock.text = "the name and kid name is diffrent"
        }
       
        
    if let _text = namelabel.text, _text.isEmpty  {
        unlock.text = "locked make sure the name and kid name is not empty"
    }
        else if let _text2 = kidlabel.text, _text2.isEmpty{
            unlock.text = "locked make sure the name and kid name is not empty"
        }
    }
   
    @IBAction func youtubepress1(_ sender: Any) {
        if  youtubeacess.isOn && namelabel.text == kidlabel.text{
            denied.text = "access denied ❌"
            youtubeacess.setOn(false, animated: true)
            
        }
        else{
            denied.text = "the name and kid name is diffrent"
        }
        if let _text = namelabel.text, _text.isEmpty  {
            youtubeacess.setOn(true, animated: true)
            denied.text = "locked make sure the name and kid name is not empty"
        }
            else if let _text2 = kidlabel.text, _text2.isEmpty{
                youtubeacess.setOn(true, animated: true)
                denied.text = "locked make sure the name and kid name is not empty"
            }
    }
   
    @IBAction func madrastipress(_ sender: Any) {
        if amadd.isOn && namelabel.text == kidlabel.text{
            allowed.text = "allowed ✅"
            amadd.setOn(true, animated: true)
        }
        else{
            allowed.text = "the name and kid name is diffrent"
        }
        if let _text = namelabel.text, _text.isEmpty  {
            allowed.text = "locked make sure the name and kid name is not empty"
        }
            else if let _text2 = kidlabel.text, _text2.isEmpty{
                allowed.text = "locked make sure the name and kid name is not empty"
            }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    
    }}

