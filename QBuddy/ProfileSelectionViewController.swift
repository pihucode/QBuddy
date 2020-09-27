//
//  ProfileSelectionViewController.swift
//  QBuddy
//
//  Created by Kinjal Jasani on 9/26/20.
//  Copyright © 2020 DTI. All rights reserved.
//

import Foundation
import UIKit
import SnapKit
class ProfileSelectionViewController: UIViewController {
    var titleLabel = UILabel();
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSubviews()
    }
    func setUpSubviews(){
        titleLabel.text = "Choose your profile picture here!"
        titleLabel.textColor = UIColor.darkBlueColor()
        titleLabel.font = UIFont(name: "Roboto", size: 30)
        titleLabel.font = UIFont.boldSystemFont(ofSize: 30)
        self.view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints{(make) in
            make.left.equalTo(self.view).offset(22)
            make.right.equalTo(self.view).offset(-45)
            make.height.equalTo(85)
            make.width.equalTo(290)
        }
    }
}
