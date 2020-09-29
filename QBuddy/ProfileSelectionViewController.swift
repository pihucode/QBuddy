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
        self.view.backgroundColor = UIColor.beigeColor()
        titleLabel.text = "Choose your profile picture here!"
        titleLabel.numberOfLines = 0
        titleLabel.textColor = UIColor.darkBlueColor()
        titleLabel.font = UIFont(name: "Roboto", size: 30)
        titleLabel.font = UIFont.boldSystemFont(ofSize: 30)
        self.view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints{(make) in
            make.left.equalTo(self.view).offset(22)
            make.top.equalTo(self.view).offset(45)
            make.height.equalTo(85)
            make.width.equalTo(290)
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
        moneyBag.setImage(UIImage(named:"Money bag.png"), for: .normal)
        let kkSlider = UIButton(type: .custom)
        kkSlider.setImage(UIImage(named:"KK Slider.png"), for: .normal)
        let tomNookEllipse = UIButton(type: .custom)
        tomNookEllipse.setImage(UIImage(named:"Ellipse.png"), for: .normal)
        let blathersEllipse = UIButton(type: .custom)
        blathersEllipse.setImage(UIImage(named:"Ellipse.png"), for: .normal)
        let isabelleEllipse = UIButton(type: .custom)
        isabelleEllipse.setImage(UIImage(named:"Ellipse.png"), for: .normal)
        let peachEllipse = UIButton(type: .custom)
        peachEllipse.setImage(UIImage(named:"Ellipse.png"), for: .normal)
        let pearEllipse = UIButton(type: .custom)
        pearEllipse.setImage(UIImage(named:"Ellipse.png"), for: .normal)
        let reddEllipse = UIButton(type: .custom)
        reddEllipse.setImage(UIImage(named:"Ellipse.png"), for: .normal)
        let moneyBagEllipse = UIButton(type: .custom)
        moneyBagEllipse.setImage(UIImage(named:"Ellipse.png"), for: .normal)
        let kkSliderEllipse = UIButton(type: .custom)
        kkSliderEllipse.setImage(UIImage(named:"Ellipse.png"), for: .normal)
        let buttonsArray: [UIButton] = [tomNookEllipse, blathersEllipse, isabelleEllipse, peachEllipse, pearEllipse, reddEllipse, moneyBagEllipse, kkSliderEllipse, tomNook, blathers, isabelle, peach, pear, redd, moneyBag, kkSlider]
        for button in buttonsArray{
            self.view.addSubview(button)
            button.layer.cornerRadius = 0.5 * tomNook.bounds.size.width
            button.clipsToBounds = true
            button.addTarget(self, action: #selector(profileSelectPressed), for: .touchUpInside)
            switch button{
            case tomNook:
                button.snp.makeConstraints{(make) in
                    make.left.equalTo(self.view).offset(52)
                    make.top.equalTo(self.view).offset(175)
                    make.height.equalTo(85)
                    make.width.equalTo(85)
                }
            case tomNookEllipse:
                button.snp.makeConstraints{(make) in
                    make.left.equalTo(self.view).offset(37)
                    make.top.equalTo(self.view).offset(160)
                    make.height.equalTo(106)
                    make.width.equalTo(114)
                }
            case blathers:
                button.snp.makeConstraints{(make) in
                    make.right.equalTo(self.view).offset(-52)
                    make.top.equalTo(self.view).offset(175)
                    make.height.equalTo(85)
                    make.width.equalTo(85)
                }
            case blathersEllipse:
                button.snp.makeConstraints{(make) in
                    make.right.equalTo(self.view).offset(-37)
                    make.top.equalTo(self.view).offset(160)
                    make.height.equalTo(106)
                    make.width.equalTo(114)
                }
            case isabelle:
                button.snp.makeConstraints{(make) in
                    make.left.equalTo(self.view).offset(52)
                    make.top.equalTo(self.view).offset(323)
                    make.height.equalTo(85)
                    make.width.equalTo(85)
                }
            case isabelleEllipse:
                button.snp.makeConstraints{(make) in
                    make.left.equalTo(self.view).offset(37)
                    make.top.equalTo(self.view).offset(313)
                    make.height.equalTo(106)
                    make.width.equalTo(114)
                }
            case peach:
                button.snp.makeConstraints{(make) in
                    make.right.equalTo(self.view).offset(-52)
                    make.top.equalTo(self.view).offset(323)
                    make.height.equalTo(85)
                    make.width.equalTo(85)
                }
            case peachEllipse:
                button.snp.makeConstraints{(make) in
                    make.right.equalTo(self.view).offset(-37)
                    make.top.equalTo(self.view).offset(313)
                    make.height.equalTo(106)
                    make.width.equalTo(114)
                }
            case pear:
               button.snp.makeConstraints{(make) in
                    make.left.equalTo(self.view).offset(52)
                    make.top.equalTo(self.view).offset(466)
                    make.height.equalTo(85)
                    make.width.equalTo(85)
                }
            case pearEllipse:
                button.snp.makeConstraints{(make) in
                    make.left.equalTo(self.view).offset(37)
                    make.top.equalTo(self.view).offset(457)
                    make.height.equalTo(106)
                    make.width.equalTo(114)
                }
            case redd:
                button.snp.makeConstraints{(make) in
                    make.right.equalTo(self.view).offset(-52)
                    make.top.equalTo(self.view).offset(466)
                    make.height.equalTo(85)
                    make.width.equalTo(85)
                }
            case reddEllipse:
                button.snp.makeConstraints{(make) in
                    make.right.equalTo(self.view).offset(-37)
                    make.top.equalTo(self.view).offset(457)
                    make.height.equalTo(106)
                    make.width.equalTo(114)
                }
            case moneyBag:
                button.snp.makeConstraints{(make) in
                    make.left.equalTo(self.view).offset(52)
                    make.top.equalTo(self.view).offset(613)
                    make.height.equalTo(85)
                    make.width.equalTo(85)
                }
            case moneyBagEllipse:
                button.snp.makeConstraints{(make) in
                    make.left.equalTo(self.view).offset(37)
                    make.top.equalTo(self.view).offset(602)
                    make.height.equalTo(106)
                    make.width.equalTo(114)
                }
            case kkSlider:
                button.snp.makeConstraints{(make) in
                    make.right.equalTo(self.view).offset(-52)
                    make.top.equalTo(self.view).offset(613)
                    make.height.equalTo(85)
                    make.width.equalTo(85)
                }
            case kkSliderEllipse:
                button.snp.makeConstraints{(make) in
                    make.right.equalTo(self.view).offset(-37)
                    make.top.equalTo(self.view).offset(602)
                    make.height.equalTo(106)
                    make.width.equalTo(114)
                }
            default:
                break
            }
        }
        
    }
    
    @objc func profileSelectPressed(sender: AnyObject){
        let homeVC = HomeViewController()
        self.navigationController?.pushViewController(homeVC, animated: true)
    }
}
