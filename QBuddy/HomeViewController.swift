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
    var locator = UIButton()
    var people = [Person]()
    override func viewDidLoad() {
           super.viewDidLoad()
           people.append(Person(profilePic: "Tom Nook.png", interests: "Photography, PubG", major: "Information Science", year: 2022, name: ""))
           people.append(Person(profilePic: "Blathers.png", interests: "Photography, PubG", major: "Information Science", year: 2022, name: ""))
           people.append(Person(profilePic: "Isabelle.png", interests: "Photography, PubG", major: "Information Science", year: 2022, name: ""))
           people.append(Person(profilePic: "Peach.png", interests: "Photography, PubG", major: "Information Science", year: 2022, name: ""))
          activeTableView.register(FriendCell.self, forCellReuseIdentifier: NSStringFromClass(FriendCell.self))
           setUpSubviews()
    }
    func setUpSubviews(){
        self.view.backgroundColor = UIColor.beigeColor()
        titleLabel.text = "QBuddy"
        titleLabel.numberOfLines = 0
        titleLabel.textColor = UIColor.darkBlueColor()
        titleLabel.font = UIFont(name: "Roboto-Bold", size: 30)
        self.view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints{(make) in
            make.centerX.equalTo(self.view).offset(20)
            make.top.equalTo(self.view).offset(63)
            make.height.equalTo(42)
            make.width.equalTo(152)
        }
        locator.setImage(UIImage(named: "send 1"), for: .normal)
        self.view.addSubview(locator)
        locator.snp.makeConstraints{(make) in
                make.left.equalTo(self.view).offset(23)
                make.top.equalTo(self.view).offset(63)
                make.height.equalTo(15)
                make.width.equalTo(15)
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
         randomMatchButton.addTarget(self, action: #selector(matchPressed), for: .touchUpInside)
        activeLabel.text = "Active"
        activeLabel.numberOfLines = 0
        activeLabel.textColor = UIColor.darkBlueColor()
        activeLabel.font = UIFont(name: "Roboto-Bold", size: 30)
        self.view.addSubview(activeLabel)
        activeLabel.snp.makeConstraints{(make) in
            make.left.equalTo(self.view).offset(28)
            make.top.equalTo(randomMatchButton.snp_bottom).offset(40)
            make.height.equalTo(39)
            make.width.equalTo(262)
        }
        self.view.addSubview(activeTableView)
        activeTableView.snp.makeConstraints{(make) in
            make.left.equalTo(self.view).offset(28)
            make.top.equalTo(activeLabel.snp_bottom).offset(40)
            make.height.equalTo(357)
            make.width.equalTo(320)
        }
        activeTableView.delegate = self
        activeTableView.dataSource = self
        activeTableView.backgroundColor = UIColor.beigeColor()
        activeTableView.separatorColor = UIColor.beigeColor()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 76
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(FriendCell.self), for: indexPath) as! FriendCell
        let person = people[indexPath.row]
        cell.friendPicture.image = UIImage(named: person.profilePic)
        cell.infoLine1.text = "Interests: " + person.interests
        cell.infoLine2.text = "Major: " + person.major
        cell.infoLine3.text = "Graduating Year: " + String(person.year)
        cell.actionButton.setTitle("Chat", for: .normal)
        cell.selectionStyle = .none
        return cell
    }
    @objc func matchPressed(sender: AnyObject){
        let gameVC = GameViewController()
        self.navigationController?.pushViewController(gameVC, animated: true)
    }
        
}
