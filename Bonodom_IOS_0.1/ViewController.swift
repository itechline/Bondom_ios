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
    
    
    @IBAction func switchregister(sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            veznevtextfield.hidden = false
            kernevtextfield.placeholder = "Keresztnév"
        } else {
            veznevtextfield.hidden = true
            kernevtextfield.placeholder = "Cégnév"
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

