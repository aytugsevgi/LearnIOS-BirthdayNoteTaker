//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by aytug on 18.11.2020.
//  Copyright © 2020 aytug. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldBirthday: UITextField!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelBirthday: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let newName = storedName as? String {
            labelName.text = "Name: \(newName)"
        }
        if let newBirthday = storedBirthday as? String {
            labelBirthday.text = "Birthday: \(newBirthday)"
        }
        
        
       
        // Do any additional setup after loading the view.
    }

    @IBAction func saveOnClicked(_ sender: Any) {

        UserDefaults.standard.set(textFieldName.text!, forKey: "name")
        UserDefaults.standard.set(textFieldBirthday.text!, forKey: "birthday")
        
        labelName.text = "Name: " + textFieldName.text!
        labelBirthday.text = "Birthday: " + textFieldBirthday.text!
        
    }
    
    @IBAction func deleteOnClicked(_ sender: Any) {
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if (storedName as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "name")
            labelName.text = "Name:"
        }
        if (storedBirthday as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "birthday")
            labelBirthday.text = "Birthday:"
        }
    }
}

