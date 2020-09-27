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
        titleLabel.font = UIFont.systemFont(ofSize: 26) //todo: set font
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)

        subLabel = UILabel()
        subLabel.text = "Who do you prefer to pair with?"
        subLabel.textColor = UIColor.darkBlueColor()
        subLabel.font = UIFont.systemFont(ofSize: 26) //todo: set font
        subLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(subLabel)
        
        //Fields
        nameField = UITextField()
        nameField.placeholder = "Your name"
        nameField.backgroundColor = .white
        nameField.clearsOnBeginEditing = false
        nameField.borderStyle = .roundedRect
        nameField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameField)
        
        interestField = UITextField()
        interestField.placeholder = "Hobbies/Interest"
        interestField.backgroundColor = .white
        interestField.clearsOnBeginEditing = false
        interestField.borderStyle = .roundedRect
        interestField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(interestField)
        
        activityField = UITextField()
        activityField.placeholder = "What is your favorite quarantine activity?"
        activityField.backgroundColor = .white
        activityField.clearsOnBeginEditing = false
        activityField.borderStyle = .roundedRect
        activityField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(activityField)
        
        //Choices
        interestButton = UIButton()
        interestButton.setTitle("Same Interest", for:.normal)
        interestButton.setTitleColor(.gray, for: .normal)
        interestButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(interestButton)
        
        yearButton = UIButton()
        yearButton.setTitle("Same Year", for:.normal)
        yearButton.setTitleColor(.gray, for: .normal)
        yearButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(yearButton)
        
        majorButton = UIButton()
        majorButton.setTitle("Major", for:.normal)
        majorButton.setTitleColor(.gray, for: .normal)
        majorButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(majorButton)
        
        hobbyButton = UIButton()
        hobbyButton.setTitle("Same Hobby", for:.normal)
        hobbyButton.setTitleColor(.gray, for: .normal)
        hobbyButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(hobbyButton)
        
        meetButton = UIButton()
        meetButton.setTitle("Meet", for:.normal)
        meetButton.setTitleColor(UIColor.redColor(), for: .normal)
        meetButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(meetButton)
        
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
    }
    
    
}

