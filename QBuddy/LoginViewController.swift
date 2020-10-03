//
//  ViewController.swift
//  QBuddy
//
//  Created by Pinxuan Huang on 9/26/20.
//  Copyright © 2020 DTI. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var logoLabel: UILabel!
//    var logoImageView: UIImageView!
    var loginLabel: UILabel!
    var emailField: UITextField!
    var passwordField: UITextField!
    var loginButton: UIButton!
    var orLabel: UILabel!
    var signUpLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.beigeColor()
        
        logoLabel = UILabel()
        logoLabel.text = "QBuddy"
        logoLabel.textColor = UIColor.darkBlueColor()
        logoLabel.font = UIFont(name: "Roboto-Bold", size: 30)
        logoLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logoLabel)
//        logoImageView = UIImageView()
//        view.addSubview(logoImageView)
        
        loginLabel = UILabel()
        loginLabel.text = "Login"
        loginLabel.textColor = UIColor.mainGrayColor()
        loginLabel.font = UIFont(name: "Roboto-Bold", size: 24)
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginLabel)
        
        emailField = UITextField()
        emailField.placeholder = "Email"
        emailField.backgroundColor = .white
        emailField.clearsOnBeginEditing = true
        emailField.borderStyle = .roundedRect
        emailField.textAlignment = .left
        emailField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(emailField)
        
        passwordField = UITextField()
        passwordField.placeholder = "Password"
        passwordField.backgroundColor = .white
        passwordField.clearsOnBeginEditing = true
        passwordField.borderStyle = .roundedRect
        passwordField.textAlignment = .left
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordField)
        
        loginButton = UIButton()
        loginButton.setTitle("Login", for:.normal)
        loginButton.titleLabel?.font = UIFont(name: "Roboto-Medium", size: 16)
        loginButton.setTitleColor(UIColor.lightGrayColor(), for: .normal)
        loginButton.layer.backgroundColor = UIColor.darkBlueColor().cgColor
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.addTarget(self, action: #selector(loginPressed), for: .touchUpInside)
        view.addSubview(loginButton)
        
        orLabel = UILabel()
        orLabel.text = "OR"
        orLabel.textColor = UIColor.mainGrayColor()
        orLabel.font = UIFont(name: "Roboto-Medium", size: 14)
        orLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(orLabel)
        
        signUpLabel = UILabel()
        signUpLabel.text = "sign up"
        signUpLabel.textColor = UIColor.mainGrayColor()
        signUpLabel.font = UIFont(name: "Roboto-Medium", size: 14)
        signUpLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(signUpLabel)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            logoLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            logoLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 0)
            ])
        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: logoLabel.bottomAnchor, constant: 96),
            loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        NSLayoutConstraint.activate([
            emailField.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 24),
            emailField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 52),
            emailField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -52),
            emailField.heightAnchor.constraint(equalToConstant: 36)
            ])
        NSLayoutConstraint.activate([
            passwordField.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 16),
            passwordField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 52),
            passwordField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -52),
            passwordField.heightAnchor.constraint(equalToConstant: 36)
            ])
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 64),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 36),
            loginButton.widthAnchor.constraint(equalToConstant: 82)
            ])
        NSLayoutConstraint.activate([
            orLabel.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 48),
            orLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        NSLayoutConstraint.activate([
            signUpLabel.bottomAnchor.constraint(equalTo: orLabel.bottomAnchor, constant: 32),
            signUpLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
    }
    @objc func loginPressed(sender: AnyObject){
        let interestViewController = InterestViewController()
        self.navigationController?.pushViewController(interestViewController, animated: true)
    }

}

