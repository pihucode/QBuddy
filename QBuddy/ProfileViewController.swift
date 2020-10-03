//
//  ProfileViewController.swift
//  QBuddy
//
//  Created by Kinjal Jasani on 10/3/20.
//  Copyright © 2020 DTI. All rights reserved.
//

import Foundation
import UIKit
import SnapKit
class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var titleLabel = UILabel()
    var friendsLabel = UILabel()
    var friendsTableView = UITableView()
    var locator = UIButton()
    var people = [Person]()
    override func viewDidLoad() {
           super.viewDidLoad()
           people.append(Person(profilePic: "Tom Nook.png", interests: "Photography, PubG", major: "Information Science", year: 2022, name: ""))
           people.append(Person(profilePic: "Blathers.png", interests: "Photography, PubG", major: "Information Science", year: 2022, name: ""))
           people.append(Person(profilePic: "Isabelle.png", interests: "Photography, PubG", major: "Information Science", year: 2022, name: ""))
           people.append(Person(profilePic: "Peach.png", interests: "Photography, PubG", major: "Information Science", year: 2022, name: ""))
           people.append(Person(profilePic: "Tom Nook.png", interests: "Photography, PubG", major: "Information Science", year: 2022, name: ""))
           people.append(Person(profilePic: "Blathers.png", interests: "Photography, PubG", major: "Information Science", year: 2022, name: ""))
          friendsTableView.register(FriendCell.self, forCellReuseIdentifier: NSStringFromClass(FriendCell.self))
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
        friendsLabel.text = "Friends"
        friendsLabel.numberOfLines = 0
        friendsLabel.textColor = UIColor.darkBlueColor()
        friendsLabel.font = UIFont(name: "Roboto-Bold", size: 30)
        self.view.addSubview(friendsLabel)
        friendsLabel.snp.makeConstraints{(make) in
            make.left.equalTo(self.view).offset(28)
            make.top.equalTo(self.view).offset(111)
            make.height.equalTo(39)
            make.width.equalTo(262)
        }
        self.view.addSubview(friendsTableView)
        friendsTableView.snp.makeConstraints{(make) in
            make.left.equalTo(self.view).offset(28)
            make.top.equalTo(friendsLabel.snp_bottom).offset(14)
            make.height.equalTo(537)
            make.width.equalTo(320)
        }
        friendsTableView.delegate = self
        friendsTableView.dataSource = self
        friendsTableView.backgroundColor = UIColor.beigeColor()
        friendsTableView.separatorColor = UIColor.beigeColor()
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

        
}
