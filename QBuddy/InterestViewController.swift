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
        
        classesField = UITextField()
        classesField.placeholder = "What classes are you taking this semester?"
        classesField.backgroundColor = .white
        classesField.clearsOnBeginEditing = true
        classesField.borderStyle = .roundedRect
        classesField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(classesField)
        
        personalityField = UITextField()
        personalityField.placeholder = "What's your 16 personality type?"
        personalityField.backgroundColor = .white
        personalityField.clearsOnBeginEditing = true
        personalityField.borderStyle = .roundedRect
        personalityField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(personalityField)
        
        //Choices
        interestButton = UIButton()
        interestButton.setTitle("Same Interest", for:.normal)
        interestButton.setTitleColor(.white, for: .normal)
        interestButton.layer.backgroundColor = UIColor.buttonChoiceColor().cgColor
        interestButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(interestButton)
        
        yearButton = UIButton()
        yearButton.setTitle("Same Year", for:.normal)
        yearButton.setTitleColor(.white, for: .normal)
        yearButton.layer.backgroundColor = UIColor.buttonChoiceColor().cgColor
        yearButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(yearButton)
        
        majorButton = UIButton()
        majorButton.setTitle("Major", for:.normal)
        majorButton.setTitleColor(.white, for: .normal)
        majorButton.layer.backgroundColor = UIColor.buttonChoiceColor().cgColor
        majorButton.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(majorButton)
        
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
        meetButton.addTarget(self, action: #selector(meetPressed), for: .touchUpInside)
        view.addSubview(meetButton)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            titleLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 32),
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
            classesField.topAnchor.constraint(equalTo: activityField.bottomAnchor, constant: 16),
            classesField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 36),
            classesField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -36),
            classesField.heightAnchor.constraint(equalToConstant: 36)
            ])
        NSLayoutConstraint.activate([
            personalityField.topAnchor.constraint(equalTo: classesField.bottomAnchor, constant: 16),
            personalityField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 36),
            personalityField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -36),
            personalityField.heightAnchor.constraint(equalToConstant: 36)
            ])
        NSLayoutConstraint.activate([
            subLabel.topAnchor.constraint(equalTo: personalityField.bottomAnchor, constant: 32),
            subLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 32),
            ])
        NSLayoutConstraint.activate([
            interestButton.topAnchor.constraint(equalTo: subLabel.bottomAnchor, constant: 16),
            interestButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 52),
            interestButton.heightAnchor.constraint(equalToConstant: 34),
            interestButton.widthAnchor.constraint(equalToConstant: 64)
            ])
        NSLayoutConstraint.activate([
            yearButton.topAnchor.constraint(equalTo: subLabel.bottomAnchor, constant: 16),
            yearButton.leftAnchor.constraint(equalTo: interestButton.rightAnchor, constant: 32),
            yearButton.heightAnchor.constraint(equalToConstant: 34),
            yearButton.widthAnchor.constraint(equalToConstant: 64)
            ])
        NSLayoutConstraint.activate([
            interestButton.topAnchor.constraint(equalTo: subLabel.bottomAnchor, constant: 16),
            interestButton.leftAnchor.constraint(equalTo: yearButton.rightAnchor, constant: 32),
            interestButton.heightAnchor.constraint(equalToConstant: 34),
            interestButton.widthAnchor.constraint(equalToConstant: 64)
            ])
        NSLayoutConstraint.activate([
            meetButton.topAnchor.constraint(equalTo: interestButton.bottomAnchor, constant: 52),
            meetButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            meetButton.heightAnchor.constraint(equalToConstant: 36),
            meetButton.widthAnchor.constraint(equalToConstant: 82)
            ])
        
    }
    
    @objc func meetPressed(sender: AnyObject){
        let profilePicViewController = ProfileSelectionViewController()
        self.navigationController?.pushViewController(profilePicViewController, animated: true)
    }
}

