//
//  ViewController.swift
//  B Cubed
//
//  Created by Nathan Mundo on 3/20/17.
//  Copyright © 2017 Uptown Adventures. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        let userHasValidated = UserDefaults.standard.bool(forKey: "userValidated");
        if (!userHasValidated) {
            self.performSegue(withIdentifier: "signupView", sender: self)
        }
    }
    
    @IBAction func clearConfigButtonPressed(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "userValidated")
        UserDefaults.standard.synchronize()
    }
    
}

