//
//  PersonCell.swift
//  QBuddy
//
//  Created by Enoch Chen on 10/2/20.
//  Copyright © 2020 DTI. All rights reserved.
//

import Foundation
import UIKit
struct Person {
    var profilePic: String;
    var interests: String;
    var major: String;
    var year: Int;
    var name = ""
}

class PersonCell: UITableViewCell {
    var profilePic = UIImageView()
    var interestsLabel = UILabel()
    var majorLabel = UILabel()
    var yearLabel = UILabel()
}

class PersonDatasource: NSObject, UITableViewDataSource {
    var people = [Person]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let person = people[indexPath.row]
        
        let cell = PersonCell()
        cell.profilePic.image = UIImage(named: person.profilePic)
        cell.interestsLabel.text = "Interests: " + person.interests
        cell.majorLabel.text = "Major: " + person.major
        cell.yearLabel.text = "Graduating Year: " + String(person.year)
        return cell
    }
}
