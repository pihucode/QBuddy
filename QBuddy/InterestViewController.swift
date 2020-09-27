//
//  InterestViewController.swift
//  QBuddy
//
//  Created by Pinxuan Huang on 9/26/20.
//  Copyright © 2020 DTI. All rights reserved.
//

import UIKit

class InterestViewController: UIViewController {
    
    var titleLabel: UILabel!
    var subLabel: UILabel!
    
    //Fields
    var nameField: UITextField!
    var interestField: UITextField!
    var activityField: UITextField!
    var classesField: UITextField!
    var personalityField: UITextField!
    var placeField: UITextField!
    
    //Choices
    var interestButton: UIButton!
    var yearButton: UIButton!
    var majorButton: UIButton!
    var hobbyButton: UIButton!
    
    var meetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.beigeColor()
        
        titleLabel = UILabel()
        titleLabel.text = "About yourself..."
        titleLabel.textColor = UIColor.darkBlueColor()
        titleLabel.font = UIFont(name: "Roboto", size: 30)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)

        subLabel = UILabel()
        subLabel.text = "Who do you prefer to pair with?"
        subLabel.textColor = UIColor.darkBlueColor()
        subLabel.font = UIFont(name: "Roboto", size: 24)
        subLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(subLabel)
        
        //Fields
        nameField = UITextField()
        nameField.placeholder = "Your name"
        nameField.backgroundColor = .white
        nameField.clearsOnBeginEditing = true
        nameField.borderStyle = .roundedRect
        nameField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameField)
        
        interestField = UITextField()
        interestField.placeholder = "Hobbies/Interest"
        interestField.backgroundColor = .white
        interestField.clearsOnBeginEditing = true
        interestField.borderStyle = .roundedRect
        interestField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(interestField)
        
        activityField = UITextField()
        activityField.placeholder = "What is your favorite quarantine activity?"
        activityField.backgroundColor = .white
        activityField.clearsOnBeginEditing = true
        activityField.borderStyle = .roundedRect
        activityField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(activityField)
        
        //Choices
        interestButton = UIButton()
        interestButton.setTitle("Same Interest", for:.normal)
        interestButton.setTitleColor(.white, for: .normal)
        interestButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(interestButton)
        
        yearButton = UIButton()
        yearButton.setTitle("Same Year", for:.normal)
        yearButton.setTitleColor(.white, for: .normal)
        yearButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(yearButton)
        
        majorButton = UIButton()
        majorButton.setTitle("Major", for:.normal)
        majorButton.setTitleColor(.white, for: .normal)
        majorButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(majorButton)
        
        hobbyButton = UIButton()
        hobbyButton.setTitle("Same Hobby", for:.normal)
        hobbyButton.setTitleColor(.white, for: .normal)
        hobbyButton.layer.backgroundColor = UIColor.buttonChoiceColor().cgColor
        hobbyButton.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(hobbyButton)
        
        meetButton = UIButton()
        meetButton.setTitle("Meet", for:.normal)
        meetButton.setTitleColor(UIColor.lightGrayColor(), for: .normal)
        meetButton.layer.backgroundColor = UIColor.redColor().cgColor
        meetButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(meetButton)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        NSLayoutConstraint.activate([
            nameField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            nameField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 36),
            nameField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -36),
            nameField.heightAnchor.constraint(equalToConstant: 36)
            ])
        NSLayoutConstraint.activate([
            interestField.topAnchor.constraint(equalTo: nameField.bottomAnchor, constant: 16),
            interestField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 36),
            interestField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -36),
            interestField.heightAnchor.constraint(equalToConstant: 36)
            ])
        NSLayoutConstraint.activate([
            activityField.topAnchor.constraint(equalTo: interestField.bottomAnchor, constant: 16),
            activityField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 36),
            activityField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -36),
            activityField.heightAnchor.constraint(equalToConstant: 36)
            ])
        NSLayoutConstraint.activate([
            subLabel.topAnchor.constraint(equalTo: activityField.bottomAnchor, constant: 32),
            subLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        NSLayoutConstraint.activate([
            interestButton.topAnchor.constraint(equalTo: subLabel.bottomAnchor, constant: 16),
            interestButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 52)
            ])
        NSLayoutConstraint.activate([
            yearButton.topAnchor.constraint(equalTo: subLabel.bottomAnchor, constant: 16),
            yearButton.leftAnchor.constraint(equalTo: interestButton.rightAnchor, constant: 32)
            ])
        NSLayoutConstraint.activate([
            interestButton.topAnchor.constraint(equalTo: subLabel.bottomAnchor, constant: 16),
            interestButton.leftAnchor.constraint(equalTo: yearButton.rightAnchor, constant: 32)
            ])
        NSLayoutConstraint.activate([
            meetButton.topAnchor.constraint(equalTo: interestButton.bottomAnchor, constant: 52),
            meetButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        
    }
    
    
}

