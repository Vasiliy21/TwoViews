//
//  WelcomeViewController.swift
//  TwoViews
//
//  Created by Vasiliy on 03.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeMessage: UILabel!

    var welcome: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessage.text = "Welcome, \(welcome ?? "")!"
    }
    
    @IBAction func logOut() {
        dismiss(animated: true)
        }
    override func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
        guard let loginView = unwindSegue.destination as? LoginViewController else { return }
        loginView.userName = ""
        loginView.password = ""
    }
    }
