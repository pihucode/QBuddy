//
//  GameViewController.swift
//  QBuddy
//
//  Created by Enoch Chen on 10/3/20.
//  Copyright © 2020 DTI. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class GameViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "Game")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
}
