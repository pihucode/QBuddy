//
//  ViewController.swift
//  QBuddy
//
//  Created by Pinxuan Huang on 9/26/20.
//  Copyright © 2020 DTI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var logoLabel: UILabel!
    var logoImageView: UIImageView!
    var loginLabel: UILabel!
    var emailField: UITextField!
    var passwordField: UITextField!
    var loginButton: UIButton!
    var orLabel: UILabel!
    var signUpLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor(red:255/255, green:234/255, blue:219/255, alpha:1.0) //#FFEADB
        
        logoLabel = UILabel()
        logoLabel.text = "QBuddy"
        logoLabel.textColor = UIColor(red:115/255, green:125/255, blue:254/255, alpha: 1.0)
        logoLabel.font = UIFont.systemFont(ofSize: 26) //todo: set font
        logoLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logoLabel)
        
        logoImageView = UIImageView()
        view.addSubview(logoImageView)
        
        loginLabel = UILabel()
        loginLabel.text = "Login"
        loginLabel.textColor = UIColor(red:115/255, green:125/255, blue:254/255, alpha: 1.0)
        loginLabel.font = UIFont.systemFont(ofSize: 16)
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginLabel)
        
        emailField = UITextField()
//        emailField.text
        emailField.backgroundColor = .white
        emailField.clearsOnBeginEditing = false
        emailField.borderStyle = .roundedRect
        emailField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(emailField)
        
        passwordField = UITextField()
        //        passwordField
        passwordField.backgroundColor = .white
        passwordField.clearsOnBeginEditing = false
        passwordField.borderStyle = .roundedRect
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordField)
        
        loginButton = UIButton()
        loginButton.setTitle("Login", for:.normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginButton)
        
        orLabel = UILabel()
        orLabel.text = "OR"
        orLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(orLabel)
        
        signUpLabel = UILabel()
        signUpLabel.text = "sign up"
        signUpLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(signUpLabel)
        
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            logoLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24),
            logoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
    }


}

