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
        view.addSubview(logoLabel)
        
        logoImageView = UIImageView()
        view.addSubview(logoImageView)
        
        loginButton = UIButton()
        view.addSubview(loginButton)
        
        orLabel = UILabel()
        orLabel.text = "OR"
        view.addSubview(orLabel)
        
        signUpLabel = UILabel()
        signUpLabel.text = "sign up"
        view.addSubview(signUpLabel)
        
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            logoLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24),
            logoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
    }


}

