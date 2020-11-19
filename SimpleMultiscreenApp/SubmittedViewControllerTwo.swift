//
//  SubmittedViewControllerTwo.swift
//  SimpleMultiscreenApp
//
//  Created by Maham Shamail on 18/11/2020.
//  Copyright © 2020 Maham Shamail. All rights reserved.
//

import UIKit

class SubmittedViewControllerTwo: UIViewController {

    @IBOutlet weak var noTextBox: UILabel!
    
    var namePassed = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        noTextBox.text = "THANK YOU \(namePassed.uppercased()). WE RECEIEVED YOUR MESSAGE.\n\nAS YOU INDICATED WE WILL NOT CALL YOU."

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
