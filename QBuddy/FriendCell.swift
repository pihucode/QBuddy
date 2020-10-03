//
//  FriendCell.swift
//  QBuddy
//
//  Created by Kinjal Jasani on 10/3/20.
//  Copyright © 2020 DTI. All rights reserved.
//

import Foundation
import UIKit
class FriendCell: UITableViewCell{
    var nameLabel = UILabel()
    var infoLine1 = UILabel()
    var infoLine2 = UILabel()
    var infoLine3 = UILabel()
    var friendPicture = UIImageView()
    var actionButton = UIButton()
    var nameisdisplayed = false
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpSubviews()
    }
    func setUpSubviews(){
        backgroundView?.frame = backgroundView?.frame.inset(by: UIEdgeInsets(top: 30, left: 0, bottom: 0, right: 0)) ?? CGRect.zero
        self.backgroundColor = UIColor.darkBlueColor()
        self.addSubview(nameLabel)
        self.addSubview(infoLine1)
        self.addSubview(infoLine2)
        self.addSubview(infoLine3)
        self.addSubview(friendPicture)
       friendPicture.snp.makeConstraints{(make) in
           make.centerY.equalTo(self)
           make.left.equalTo(self).offset(12)
           make.height.equalTo(50)
           make.width.equalTo(50)
       }
        nameLabel.snp.makeConstraints{(make) in
            make.left.equalTo(friendPicture.snp_right).offset(10)
            make.top.equalTo(self).offset(15)
            make.height.equalTo(0)
        }
        infoLine1.snp.makeConstraints{(make) in
            make.left.equalTo(friendPicture.snp_right).offset(10)
            make.top.equalTo(nameLabel.snp_bottom).offset(5)
            make.height.equalTo(12)
        }
        infoLine2.snp.makeConstraints{(make) in
            make.left.equalTo(friendPicture.snp_right).offset(10)
            make.top.equalTo(infoLine1.snp_bottom).offset(5)
            make.height.equalTo(12)
        }
        infoLine3.snp.makeConstraints{(make) in
            make.left.equalTo(friendPicture.snp_right).offset(10)
            make.top.equalTo(infoLine2.snp_bottom).offset(5)
            make.height.equalTo(12)
        }
        actionButton.clipsToBounds = true
        actionButton.backgroundColor = UIColor.redColor()
        actionButton.setTitleColor(UIColor.white, for: .normal)
        actionButton.titleLabel?.font = UIFont(name: "Roboto-Bold", size: 12)
        self.addSubview(actionButton)
        actionButton.snp.makeConstraints{(make) in
            make.right.equalTo(self).offset(-20)
            make.centerY.equalTo(self)
            make.height.equalTo(26)
            make.width.equalTo(51)
        }
        actionButton.layer.cornerRadius = 0.5 * actionButton.bounds.size.width
        nameLabel.textColor = UIColor.white
        infoLine1.textColor = UIColor.white
        infoLine2.textColor = UIColor.white
        infoLine3.textColor = UIColor.white
        nameLabel.font = UIFont(name: "Roboto-Bold", size: 14)
        infoLine1.font = UIFont(name: "Roboto-Medium", size: 8)
        infoLine2.font = UIFont(name: "Roboto-Medium", size: 8)
        infoLine3.font = UIFont(name: "Roboto-Medium", size: 8)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
