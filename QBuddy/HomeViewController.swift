//
//  File.swift
//  QBuddy
//
//  Created by Kinjal Jasani on 9/29/20.
//  Copyright © 2020 DTI. All rights reserved.
//

import Foundation
import UIKit
import SnapKit
class HomeViewController: UIViewController{
    var titleLabel = UILabel()
    var randomMatchButton = UIButton()
    override func viewDidLoad() {
           super.viewDidLoad()
           setUpSubviews()
    }
    func setUpSubviews(){
        self.view.backgroundColor = UIColor.beigeColor()
        titleLabel.text = "QBuddy"
        titleLabel.numberOfLines = 0
        titleLabel.textColor = UIColor.darkBlueColor()
        titleLabel.font = UIFont(name: "Roboto", size: 30)
        titleLabel.font = UIFont.boldSystemFont(ofSize: 30)
        self.view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints{(make) in
            make.centerX.equalTo(self.view).offset(20)
            make.top.equalTo(self.view).offset(63)
            make.height.equalTo(42)
            make.width.equalTo(152)
        }
        randomMatchButton.backgroundColor = UIColor.redColor()
        randomMatchButton.setTitle("Random Match", for: .normal)
        self.view.addSubview(randomMatchButton)
        randomMatchButton.snp.makeConstraints{(make) in
                make.centerX.equalTo(self.view)
                make.top.equalTo(self.view).offset(156)
                make.height.equalTo(56)
                make.width.equalTo(321)
        }
    }
        
}
