//
//  ValidateEmailViewController.swift
//  B Cubed
//
//  Created by Nathan Mundo on 3/20/17.
//  Copyright © 2017 Uptown Adventures. All rights reserved.
//

import UIKit

class ValidateEmailViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func validateButtonPressed(_ sender: Any) {
        let userEmail = userEmailTextField.text;
        
        // Check for empty fiels
        if (userEmail!.isEmpty) {
            let emptyEmailAlert = UIAlertController(title: "Alert", message: "Email field must not be empty.", preferredStyle: UIAlertControllerStyle.alert)
            let okayAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
            emptyEmailAlert.addAction(okayAction)
            self.present(emptyEmailAlert, animated: true, completion: nil)
            return
        }
        
        // Validate email
        
        // Store data
        if (userEmail == "testemail") {
            UserDefaults.standard.set(userEmail, forKey:"userEmail")
            UserDefaults.standard.set(true, forKey:"userValidated")
            UserDefaults.standard.synchronize()
            self.dismiss(animated: true, completion: nil)
            return
        }

    }
    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
