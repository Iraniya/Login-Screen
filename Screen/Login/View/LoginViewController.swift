//
//  LoginViewController.swift
//  LoginScreen
//
//  Created by Iraniya Naynesh on 16/04/25.
//

import UIKit

class LoginViewController: UIViewController {

    //MARK: - IBOutlet
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    //MARK: - properties
    private var viewModel = LoginViewModel()
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - actions
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        let validatorResult = viewModel.validateValue(emailTextField.text, passwordTextField.text)
        showAlert(validatorResult.rawValue)
    }
}

