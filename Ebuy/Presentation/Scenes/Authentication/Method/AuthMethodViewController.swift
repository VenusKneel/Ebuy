//
//  AuthMethodViewController.swift
//  Ebuy
//
//  Created by Beqa Tabunidze on 15.07.21.
//

import UIKit

class AuthMethodViewController: BaseViewController {
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        signInButton.layer.cornerRadius = 5
        signUpButton.layer.cornerRadius = 5
        
        self.navigationItem.setHidesBackButton(true, animated: true)
        
    }
    
    @IBAction func onTapSignIn(_ sender: Any) {
        
        coordinator?.navigateToSignIn()
        
    }
    
    @IBAction func onTapSignUp(_ sender: Any) {
        
        coordinator?.navigateToSignUp()
        
    }
    

}
