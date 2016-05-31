//
//  ViewController.swift
//  Bonodom_IOS_0.1
//
//  Created by Levente Szasz on 30/05/16.
//  Copyright (c) 2016 Levente Szasz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var veznevtextfield: UITextField!
    
    @IBOutlet weak var kernevtextfield: UITextField!
    
    @IBOutlet weak var emailtextfield: UITextField!
    
    @IBOutlet weak var passwtextfield: UITextField!

    
    var isCompany = false
    @IBAction func registerButton(sender: AnyObject) {
        var isFilled = true
        if (!isCompany) {
            if (self.veznevtextfield.text!.isEmpty) {
                isFilled = false
            }
        
            if (self.kernevtextfield.text!.isEmpty) {
                isFilled = false
            }
        
            if (self.emailtextfield.text!.isEmpty) {
                isFilled = false
            }
        
            if (self.passwtextfield.text!.isEmpty) {
                isFilled = false
            }
        } else {
            if (self.kernevtextfield.text!.isEmpty) {
                isFilled = false
            }
            
            if (self.emailtextfield.text!.isEmpty) {
                isFilled = false
            }
            
            if (self.passwtextfield.text!.isEmpty) {
                isFilled = false
            }
        }
        
        if (isFilled) {
            print("OK")
        } else {
            print("NOT OK")
            let alert = UIAlertView()
            alert.title = "Hiba"
            alert.message = "Töltsön ki minden mezőt helyesen!"
            alert.addButtonWithTitle("Ok")
            alert.show()
        }
        
    }
    
    @IBAction func switchregister(sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            veznevtextfield.hidden = false
            kernevtextfield.placeholder = "Keresztnév"
            isCompany = false
        } else {
            veznevtextfield.hidden = true
            kernevtextfield.placeholder = "Cégnév"
            isCompany = true
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

