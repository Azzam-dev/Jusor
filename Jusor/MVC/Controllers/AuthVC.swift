//
//  AuthVC.swift
//  Jusor
//
//  Created by Azzam AL-Rashed on 06/11/2023.
//

import UIKit

class AuthVC: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didPressLogin(_ sender: Any) {
        view.backgroundColor = .green
    }
    
    @IBAction func didPressCreateAccount(_ sender: Any) {
        view.backgroundColor = .blue
    }
    
    @IBAction func didPressLoginWithGoogle(_ sender: Any) {
        view.backgroundColor = .orange
    }
    
    @IBAction func didPressLoginWithApple(_ sender: Any) {
        view.backgroundColor = .gray
    }
    

}
