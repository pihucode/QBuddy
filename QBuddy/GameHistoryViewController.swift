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

class GameHistoryViewController: UIViewController{
    var people = [Person]()
    var titleLabel = UILabel()
    var leaderboardLabel = UILabel()
    var gameHistoryLabel = UILabel()
    
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
        leaderboardLabel.text = "Leaderboard"
        leaderboardLabel.numberOfLines = 0
        leaderboardLabel.textColor = UIColor.darkBlueColor()
        leaderboardLabel.font = UIFont(name: "Roboto", size: 30)
        leaderboardLabel.font = UIFont.boldSystemFont(ofSize: 30)
        self.view.addSubview(leaderboardLabel)
        leaderboardLabel.snp.makeConstraints{(make) in
            make.left.equalTo(self.view).offset(22)
            make.top.equalTo(self.view).offset(45)
            make.height.equalTo(85)
            make.width.equalTo(290)
        }
        gameHistoryLabel.text = "Game History"
        gameHistoryLabel.numberOfLines = 0
        gameHistoryLabel.textColor = UIColor.darkBlueColor()
        gameHistoryLabel.font = UIFont(name: "Roboto", size: 30)
        gameHistoryLabel.font = UIFont.boldSystemFont(ofSize: 30)
        self.view.addSubview(gameHistoryLabel)
        gameHistoryLabel.snp.makeConstraints{(make) in
            make.left.equalTo(self.view).offset(22)
            make.top.equalTo(self.view).offset(45)
            make.height.equalTo(85)
            make.width.equalTo(290)
            
            let personTableViewController = PersonTableViewController()
        }
    }
}

class PersonTableViewController: UITableViewController {
    
    var people = [Person]()
    
    private let dataSource = PersonDatasource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = dataSource
        people.append(Person(image: UIImage(named:"Tom Nook.png"), interests: "Photography, PubG", major: "Information Science", year: 2022))
        people.append(Person(image: UIImage(named:"Tom Nook.png"), interests: "Photography, PubG", major: "Information Science", year: 2022))
        people.append(Person(image: UIImage(named:"Tom Nook.png"), interests: "Photography, PubG", major: "Information Science", year: 2022))
        render()
    }
    
    private func render() {
        dataSource.people = people
        tableView.reloadData()
    }
}
