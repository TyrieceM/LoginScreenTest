//
//  professorLoginViewController.swift
//  LoginScreenTest
//
//  Created by Tyriece McGlawn on 10/29/15.
//  Copyright © 2015 TCubed. All rights reserved.
//

import UIKit

class professorLoginViewController: UIViewController {
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!

    var actInd: UIActivityIndicatorView = UIActivityIndicatorView(frame: CGRectMake(0, 0, 150, 150)) as UIActivityIndicatorView
    
    override func viewDidLoad() {
        super.viewDidLoad()

       self.actInd.center = self.view.center
       self.actInd.hidesWhenStopped = true
       self.actInd.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.Gray
       view.addSubview(self.actInd)
        
        
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
    
    // MARK: - Actions
    
    @IBAction func loginAction(sender: AnyObject) {
        let username = self.usernameField.text
        let password = self.passwordField.text
        
        if (username?.utf16Count < 4 || password?.utf16Count < 5){
        
            var alert = UIAlertView(title: "Invalid", message: "Username must be greater than 4 letters and Password must be greater than 5 letters. ", delegate: self, cancelButtonTitle: "OK")
            alert.show()
        }else {
        
        }
    }
    @IBAction func signupAction(sender: AnyObject) {
        self.performSegueWithIdentifier("signup", sender: self)
    }

    
    
    
    
    
    
    
}
