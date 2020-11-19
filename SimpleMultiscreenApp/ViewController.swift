//
//  ViewController.swift
//  SimpleMultiscreenApp
//
//  Created by Maham Shamail on 18/11/2020.
//  Copyright © 2020 Maham Shamail. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
// MARK: outlets
    @IBOutlet weak var nameTxtBox: UITextField!
    @IBOutlet weak var messageTxtBox: UITextField!
    @IBOutlet weak var callOrNot: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitFormAction(_ sender: Any) {
        
        if(callOrNot.text?.uppercased() == "YES"){
        performSegue(withIdentifier: "yesSegue", sender: nil)
        }
        else if(callOrNot.text?.uppercased() == "NO"){
             performSegue(withIdentifier: "noSegue", sender: nil)
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "yesSegue" {
            let yesDestination = segue.destination as! SubmittedViewControllerOne
            yesDestination.namePassed = nameTxtBox.text!
        } else if segue.identifier == "noSegue" {
        let noDestination = segue.destination as! SubmittedViewControllerTwo
        noDestination.namePassed = nameTxtBox.text!
        }
        
    }
    
}

