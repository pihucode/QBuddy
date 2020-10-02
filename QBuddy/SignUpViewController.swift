//
//  SignUpViewController.swift
//  QBuddy
//
//  Created by Pinxuan Huang on 10/2/20.
//  Copyright © 2020 DTI. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    var logoLabel: UILabel!
    //    var logoImageView: UIImageView!
    var signUpLabel: UILabel!
    var emailField: UITextField!
    var passwordField: UITextField!
    var majorField: UITextField!
    var yearField: UITextField!
    var nextButton: UIButton!
    var orLabel: UILabel!
    var bottomLabel: UILabel!
    var loginLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.beigeColor()
        
        logoLabel = UILabel()
        logoLabel.text = "QBuddy"
        logoLabel.textColor = UIColor.darkBlueColor()
        logoLabel.font = UIFont(name: "Roboto", size: 30)
        logoLabel.font = UIFont.boldSystemFont(ofSize: 30)
        logoLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logoLabel)
        
        //        logoImageView = UIImageView()
        //        view.addSubview(logoImageView)
        
        signUpLabel = UILabel()
        signUpLabel.text = "Sign Up"
        signUpLabel.textColor = UIColor.mainGrayColor()
        signUpLabel.font = UIFont(name: "Roboto", size: 24)
        signUpLabel.font = UIFont.boldSystemFont(ofSize: 24)
        signUpLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(signUpLabel)
        
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
        
        majorField = UITextField()
        majorField.placeholder = "Major"
        majorField.backgroundColor = .white
        majorField.clearsOnBeginEditing = true
        majorField.borderStyle = .roundedRect
        majorField.textAlignment = .left
        majorField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(majorField)
        
        yearField = UITextField()
        yearField.placeholder = "Graduating Year"
        yearField.backgroundColor = .white
        yearField.clearsOnBeginEditing = true
        yearField.borderStyle = .roundedRect
        yearField.textAlignment = .left
        yearField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(yearField)
        
        nextButton = UIButton()
        nextButton.setTitle("Next", for:.normal)
        nextButton.titleLabel?.font = UIFont(name: "Roboto", size: 16)
        nextButton.setTitleColor(UIColor.lightGrayColor(), for: .normal)
        nextButton.layer.backgroundColor = UIColor.darkBlueColor().cgColor
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nextButton)
        
        orLabel = UILabel()
        orLabel.text = "OR"
        orLabel.textColor = UIColor.mainGrayColor()
        orLabel.font = UIFont(name: "Roboto", size: 14)
        orLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(orLabel)
        
//        bottomLabel = UILabel()
//        bottomLabel.text = "Already signed up?"
//        bottomLabel.textColor = UIColor.mainGrayColor()
//        bottomLabel.font = UIFont(name: "Roboto", size: 14)
//        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(bottomLabel)
        
        loginLabel = UILabel()
        loginLabel.text = "Already signed up? Login"
        loginLabel.textColor = UIColor.mainGrayColor()
        loginLabel.font = UIFont(name: "Roboto", size: 14)
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginLabel)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            logoLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            logoLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 32)
            ])
        NSLayoutConstraint.activate([
            signUpLabel.topAnchor.constraint(equalTo: logoLabel.bottomAnchor, constant: 96),
            signUpLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        NSLayoutConstraint.activate([
            emailField.topAnchor.constraint(equalTo: signUpLabel.bottomAnchor, constant: 24),
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
            majorField.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 16),
            majorField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 52),
            majorField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -52),
            majorField.heightAnchor.constraint(equalToConstant: 36)
            ])
        NSLayoutConstraint.activate([
            yearField.topAnchor.constraint(equalTo: majorField.bottomAnchor, constant: 16),
            yearField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 52),
            yearField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -52),
            yearField.heightAnchor.constraint(equalToConstant: 36)
            ])
        NSLayoutConstraint.activate([
            nextButton.topAnchor.constraint(equalTo: yearField.bottomAnchor, constant: 64),
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.heightAnchor.constraint(equalToConstant: 36),
            nextButton.widthAnchor.constraint(equalToConstant: 82)
            ])
        NSLayoutConstraint.activate([
            orLabel.topAnchor.constraint(equalTo: nextButton.bottomAnchor, constant: 48),
            orLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        NSLayoutConstraint.activate([
            loginLabel.bottomAnchor.constraint(equalTo: orLabel.bottomAnchor, constant: 32),
            loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
    }
    
}

