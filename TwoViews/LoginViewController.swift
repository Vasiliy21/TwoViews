//
//  ViewController.swift
//  TwoViews
//
//  Created by Vasiliy on 03.07.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!

    var userName: String!
    var password: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = userName
        passwordTF.text = password
    }

    @IBAction func logInButtonPressed() {
        if userName != "User" && passwordTF.text != "Password" {
            showAllertForWrongIssues(with: "Invalid login or password", and: "Please, enter correct login and password")
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeView = segue.destination as? WelcomeViewController else { return }
        welcomeView.welcome = userNameTF.text
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }

    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is WelcomeViewController else { return }
        userNameTF.text = ""
        passwordTF.text = ""
    }

    // MARK: - ForgotAlertControllers
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
extension LoginViewController {
    private func showAllertForWrongIssues(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }

}
