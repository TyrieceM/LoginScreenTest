//
//  studentLoginViewController.swift
//  LoginScreenTest
//
//  Created by Tyriece McGlawn on 10/29/15.
//  Copyright © 2015 TCubed. All rights reserved.
//

import UIKit

class studentLoginViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
    //MARK - ACTIONS
    
    @IBAction func signinAction(sender: AnyObject) {
    }
    @IBAction func signupAction(sender: AnyObject) {
    }

}
