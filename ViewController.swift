//
//  ViewController.swift
//  LoginScreenTest
//
//  Created by Tyriece McGlawn on 10/21/15.
//  Copyright © 2015 TCubed. All rights reserved.
//

import UIKit
import Parse
import ParseUI

class ViewController: UIViewController, PFLogInViewControllerDelegate, PFSignUpViewControllerDelegate {

    var logInViewController : PFLogInViewController! = PFLogInViewController()
    var signUpViewController : PFSignUpViewController! = PFSignUpViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidDisappear(animated)
        if (PFUser.currentUser() == nil){
            self.logInViewController.fields = [.UsernameAndPassword, .LogInButton, .SignUpButton, .PasswordForgotten, .DismissButton]
            let logInLogoTitle = UILabel()
            logInLogoTitle.text = "Vea Software"
            
            self.logInViewController.logInView!.logo = logInLogoTitle
            self.logInViewController.delegate = self
            let signUpLogoTitle = UILabel()
            signUpLogoTitle.text = "Vea Software"
            self.signUpViewController.signUpView!.logo = signUpLogoTitle
            self.signUpViewController.delegate = self
            self.logInViewController.signUpController = self.signUpViewController
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Parse Login
    
    func logInViewController(logInController: PFLogInViewController, shouldBeignLogInwithUsername username: String, password: String) -> Bool {
        
        if (!username.isEmpty || !password.isEmpty){
            return true
        }else{
            return false
        }
    }
    
    func logInViewController(logInController: PFLogInViewController, didLogInUser user: PFUser) {
       
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func logInViewController(logInController: PFLogInViewController, didFailToLogInWithError error: NSError?) {
        print("Failed to login.")
    }
    
    //MARK: Parse Sign UP
    
    func signUpViewController(signUpController: PFSignUpViewController, didSignUpUser user: PFUser) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    func signUpViewController(signUpController: PFSignUpViewController, didFailToSignUpWithError error: NSError?) {
        print("Failed to sign up...")
    }
    func signUpViewControllerDidCancelSignUp(signUpController: PFSignUpViewController) {
        print("User dismissed sign up.")
    }
    
    
    //MARK : Actions
    
    @IBAction func simpleAction(sender: AnyObject) {
        self.presentViewController(self.logInViewController, animated: true, completion: nil)
    }
    
    @IBAction func studentLogin(sender: AnyObject) {
        self.performSegueWithIdentifier("studentLogin", sender: self)
    }
    
    @IBAction func professorLogin(sender: AnyObject) {
       self.performSegueWithIdentifier("professorLogin", sender: self) 
    }
    
}

