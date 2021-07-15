//
//  SignUpViewController.swift
//  Ebuy
//
//  Created by Beqa Tabunidze on 15.07.21.
//

import UIKit

class SignUpViewController: BaseViewController {
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Sign up"
        signUpButton.layer.cornerRadius = 5
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
