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
class ProfileSelectionViewController: UIViewController{
    var titleLabel = UILabel()
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
        buttonsCollection.snp.makeConstraints{(make) in
            make.left.equalTo(self.view).offset(37)
            make.right.equalTo(self.view).offset(-173)
            make.height.equalTo(545)
            make.width.equalTo(301)
        }
        let tomNook = UIButton(type: .custom)
        tomNook.setImage(UIImage(named:"Tom Nook.png"), for: .normal)
        let blathers = UIButton(type: .custom)
        blathers.setImage(UIImage(named:"Blathers.png"), for: .normal)
        let isabelle = UIButton(type: .custom)
        isabelle.setImage(UIImage(named:"Isabelle.png"), for: .normal)
        let peach = UIButton(type: .custom)
        peach.setImage(UIImage(named:"Peach.png"), for: .normal)
        let pear = UIButton(type: .custom)
        pear.setImage(UIImage(named:"Pear.png"), for: .normal)
        let redd = UIButton(type: .custom)
        redd.setImage(UIImage(named:"Redd.png"), for: .normal)
        let moneyBag = UIButton(type: .custom)
        moneyBag.setImage(UIImage(named:"Money Bag.png"), for: .normal)
        let kkSlider = UIButton(type: .custom)
        kkSlider.setImage(UIImage(named:"KK Slider.png"), for: .normal)
        let buttonsArray: [UIButton] = [tomNook, blathers, isabelle, peach, pear, redd, moneyBag, kkSlider]
        for button in buttonsArray{
            self.view.addSubview(button)
            button.snp.makeConstraints{(make) in
                make.height.equalTo(85)
                make.width.equalTo(85)
            }
            button.layer.cornerRadius = 0.5 * tomNook.bounds.size.width
            button.clipsToBounds = true
            button.addTarget(self, action: #selector(profileSelectPressed), for: .touchUpInside)
            switch button{
            case tomNook:
                button.snp.makeConstraints{(make) in
                    make.left.equalTo(self.view).offset(52)
                    make.top.equalTo(self.view).offset(-175)
                }
                break
            case blathers:
            button.snp.makeConstraints{(make) in
                make.right.equalTo(self.view).offset(-52)
                make.top.equalTo(self.view).offset(-175)
            }
            case isabelle:
                button.snp.makeConstraints{(make) in
                    make.left.equalTo(self.view).offset(52)
                    make.top.equalTo(self.view).offset(-323)
                }
                break
            case peach:
            button.snp.makeConstraints{(make) in
                make.right.equalTo(self.view).offset(-52)
                make.top.equalTo(self.view).offset(-323)
            }
            case pear:
                button.snp.makeConstraints{(make) in
                    make.left.equalTo(self.view).offset(52)
                    make.top.equalTo(self.view).offset(-466)
                }
                break
            case redd:
            button.snp.makeConstraints{(make) in
                make.right.equalTo(self.view).offset(-52)
                make.top.equalTo(self.view).offset(-466)
            }
            case moneyBag:
                button.snp.makeConstraints{(make) in
                    make.left.equalTo(self.view).offset(52)
                    make.top.equalTo(self.view).offset(-613)
                }
                break
            case kkSlider:
            button.snp.makeConstraints{(make) in
                make.right.equalTo(self.view).offset(-52)
                make.top.equalTo(self.view).offset(-613)
            }
            break
            default:
                break
            }
        }
        
    }
    
    @objc func profileSelectPressed(sender: AnyObject){
        
    }
}
