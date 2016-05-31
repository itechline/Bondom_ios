//
//  LoginViewController.swift
//  Bonodom_IOS_0.1
//
//  Created by Levente Szasz on 31/05/16.
//  Copyright (c) 2016 Levente Szasz. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passText: UITextField!
    
    @IBAction func loginButton(sender: AnyObject) {
        var isFilled = true
        if (self.emailText.text == "") {
            isFilled = false
        }
        
        if (self.passText.text == "") {
            isFilled = false
        }
        
        if (isFilled) {
            print("LOGIN OK")
            let controller = storyboard?.instantiateViewControllerWithIdentifier("ListEstates") as! ListEstateViewController
            presentViewController(controller, animated: true, completion: nil)
        } else {
            print("LOGIN NOT OK")
            let alert = UIAlertView()
            alert.title = "Hiba"
            alert.message = "Töltsön ki minden mezőt helyesen!"
            alert.addButtonWithTitle("Ok")
            alert.show()
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
    

}
