//
//  ViewController.swift
//  TwoViews
//
//  Created by Vasiliy on 03.07.2022.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    @IBAction func showAlertForgotName() {
        showAllert(with: "Oops!", and: "Your name is User 😉")
    }

    @IBAction func showAlertForgotPassword() {
        showAllert(with: "Oops!", and: "Your passwort is Password 😉")
    }


}
// MARK: - UIAlertController
    extension LoginViewController {
        private func showAllert(with title: String, and message: String) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default)
            alert.addAction(okAction)
            present(alert, animated: true)
        }
    }

