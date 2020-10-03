//
//  GameHistoryViewController.swift
//  QBuddy
//
//  Created by Enoch Chen on 10/2/20.
//  Copyright © 2020 DTI. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class GameHistoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    var people = [Person]()
    var titleLabel = UILabel()
    var leaderboardLabel = UILabel()
    var gameHistoryLabel = UILabel()
    var historyTableView = UITableView()
    var leaderBoardView = UIView()
    var picture1 = UIImageView()
    var picture2 = UIImageView()
    var picture3 = UIImageView()
    var score1 = UILabel()
    var score2 = UILabel()
    var score3 = UILabel()
    var name1 = UILabel()
    var name2 = UILabel()
    var name3 = UILabel()
    var locator = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        people.append(Person(profilePic: "Tom Nook.png", interests: "Photography, PubG", major: "Information Science", year: 2022, name: "Enoch Chen"))
         people.append(Person(profilePic: "Blathers.png", interests: "Photography, PubG", major: "Information Science", year: 2022, name: "Enoch Chen"))
         people.append(Person(profilePic: "Isabelle.png", interests: "Photography, PubG", major: "Information Science", year: 2022, name: "Peach"))
        historyTableView.register(FriendCell.self, forCellReuseIdentifier: NSStringFromClass(FriendCell.self))
        setUpSubviews()
        historyTableView.reloadData()
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
        leaderboardLabel.text = "Leaderboard"
        leaderboardLabel.numberOfLines = 0
        leaderboardLabel.textColor = UIColor.darkBlueColor()
        leaderboardLabel.font = UIFont(name: "Roboto-Bold", size: 30)
        self.view.addSubview(leaderboardLabel)
        leaderboardLabel.snp.makeConstraints{(make) in
            make.left.equalTo(self.view).offset(22)
            make.top.equalTo(titleLabel).offset(45)
            make.height.equalTo(48)
            make.width.equalTo(290)
        }
        self.view.addSubview(leaderBoardView)
        leaderBoardView.backgroundColor = UIColor.darkBlueColor()
        leaderBoardView.snp.makeConstraints{(make) in
            make.left.equalTo(leaderboardLabel)
            make.top.equalTo(leaderboardLabel.snp_bottom).offset(5)
            make.height.equalTo(207)
            make.width.equalTo(320)
        }
        
        name1.text = "Peach"
        name1.numberOfLines = 0
        name1.textColor = UIColor.white
        name1.font = UIFont(name: "Roboto-Bold", size: 18)
        
        name2.text = "YOU"
        name2.numberOfLines = 0
        name2.textColor = UIColor.white
        name2.font = UIFont(name: "Roboto-Bold", size: 18)
        
        name3.text = "Enoch Chen"
        name3.numberOfLines = 0
        name3.textColor = UIColor.white
        name3.font = UIFont(name: "Roboto-Bold", size: 18)
        
        score1.text = "999-0"
        score1.numberOfLines = 0
        score1.textColor = UIColor.lightBlueColor()
        score1.font = UIFont(name: "Roboto-Bold", size: 18)
        
        score2.text = "666-1"
        score2.numberOfLines = 0
        score2.textColor = UIColor.lightBlueColor()
        score2.font = UIFont(name: "Roboto-Bold", size: 18)
        
        score3.text = "0-1"
        score3.numberOfLines = 0
        score3.textColor = UIColor.lightBlueColor()
        score3.font = UIFont(name: "Roboto-Bold", size: 18)
        
        picture1.image = UIImage(named: "Peach.png")
        picture2.image = UIImage(named: "Isabelle.png")
        picture3.image = UIImage(named: "Tom Nook.png")
        
        leaderBoardView.addSubview(score1)
        leaderBoardView.addSubview(score2)
        leaderBoardView.addSubview(score3)
        leaderBoardView.addSubview(name1)
        leaderBoardView.addSubview(name2)
        leaderBoardView.addSubview(name3)
        leaderBoardView.addSubview(picture1)
        leaderBoardView.addSubview(picture2)
        leaderBoardView.addSubview(picture3)
        
        picture1.snp.makeConstraints{(make) in
            make.left.equalTo(leaderBoardView).offset(20)
            make.top.equalTo(leaderBoardView).offset(18)
            make.height.equalTo(48)
            make.width.equalTo(48)
        }
        
        picture2.snp.makeConstraints{(make) in
            make.left.equalTo(leaderBoardView).offset(20)
            make.top.equalTo(picture1.snp_bottom).offset(15)
            make.height.equalTo(48)
            make.width.equalTo(48)
        }
        
        picture3.snp.makeConstraints{(make) in
            make.left.equalTo(leaderBoardView).offset(20)
            make.top.equalTo(picture2.snp_bottom).offset(15)
            make.height.equalTo(48)
            make.width.equalTo(48)
        }
        
        name1.snp.makeConstraints{(make) in
            make.left.equalTo(picture1.snp_right).offset(42)
            make.centerY.equalTo(picture1)
            make.height.equalTo(21)
        }
        
        name2.snp.makeConstraints{(make) in
            make.left.equalTo(picture2.snp_right).offset(42)
            make.centerY.equalTo(picture2)
            make.height.equalTo(21)
        }
        
        name3.snp.makeConstraints{(make) in
            make.left.equalTo(picture3.snp_right).offset(42)
            make.centerY.equalTo(picture3)
            make.height.equalTo(21)
        }
        
        score1.snp.makeConstraints{(make) in
            make.right.equalTo(leaderBoardView).offset(-30)
            make.centerY.equalTo(name1)
            make.height.equalTo(32)
        }
        
        score2.snp.makeConstraints{(make) in
            make.right.equalTo(leaderBoardView).offset(-30)
            make.centerY.equalTo(name2)
            make.height.equalTo(32)
        }
        
        score3.snp.makeConstraints{(make) in
            make.right.equalTo(leaderBoardView).offset(-30)
            make.centerY.equalTo(name3)
            make.height.equalTo(32)
        }
        
        gameHistoryLabel.text = "Game History"
        gameHistoryLabel.numberOfLines = 0
        gameHistoryLabel.textColor = UIColor.darkBlueColor()
        gameHistoryLabel.font = UIFont(name: "Roboto-Bold", size: 30)
        self.view.addSubview(gameHistoryLabel)
        gameHistoryLabel.snp.makeConstraints{(make) in
            make.left.equalTo(self.view).offset(22)
            make.top.equalTo(leaderBoardView.snp_bottom).offset(10)
            make.height.equalTo(48)
            make.width.equalTo(290)
        }
        self.view.addSubview(historyTableView)
        historyTableView.snp.makeConstraints{(make) in
            make.left.equalTo(self.view).offset(28)
            make.top.equalTo(gameHistoryLabel.snp_bottom).offset(14)
            make.height.equalTo(262)
            make.width.equalTo(320)
        }
        historyTableView.delegate = self
        historyTableView.dataSource = self
        historyTableView.backgroundColor = UIColor.beigeColor()
        historyTableView.separatorColor = UIColor.beigeColor()
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
        cell.nameisdisplayed = true
        cell.friendPicture.image = UIImage(named: person.profilePic)
        cell.nameLabel.text = person.name
        cell.infoLine1.text = "Interests: " + person.interests
        cell.infoLine2.text = "Major: " + person.major
        cell.infoLine3.text = "Graduating Year: " + String(person.year)
        cell.actionButton.setTitle("Chat", for: .normal)
        cell.nameLabel.snp.updateConstraints{(make) in
            make.height.equalTo(20)
            make.top.equalTo(cell).offset(5)
        }
        cell.infoLine1.snp.updateConstraints{(make) in
            make.top.equalTo(cell.nameLabel.snp_bottom)
        }
        cell.selectionStyle = .none
        return cell
    }
}

