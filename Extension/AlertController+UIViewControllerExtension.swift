//
//  AlertController+UIViewControllerExtension.swift
//  LoginScreen
//
//  Created by Iraniya Naynesh on 16/04/25.
//

import UIKit

extension UIViewController {
    func showAlert(_ message: String) {
        let alert = UIAlertController(
            title: "Alert",
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "Okay", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
