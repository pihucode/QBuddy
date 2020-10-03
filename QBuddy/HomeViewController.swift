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
class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    var titleLabel = UILabel()
    var activeLabel = UILabel()
    var activeTableView = UITableView()
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
        activeLabel.text = "Active"
        activeLabel.numberOfLines = 0
        activeLabel.textColor = UIColor.darkBlueColor()
        activeLabel.font = UIFont(name: "Roboto", size: 30)
        activeLabel.font = UIFont.boldSystemFont(ofSize: 30)
        self.view.addSubview(activeLabel)
        activeLabel.snp.makeConstraints{(make) in
            make.left.equalTo(self.view).offset(28)
            make.top.equalTo(randomMatchButton.snp_bottom).offset(40)
            make.height.equalTo(39)
            make.width.equalTo(262)
        }
        activeTableView.snp.makeConstraints{(make) in
            make.left.equalTo(self.view).offset(28)
            make.top.equalTo(randomMatchButton.snp_bottom).offset(40)
            make.height.equalTo(357)
            make.width.equalTo(320)
        }

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 76
    }
        
}
