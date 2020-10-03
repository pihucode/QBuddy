//
//  HomeTabBarController.swift
//  QBuddy
//
//  Created by Kinjal Jasani on 10/3/20.
//  Copyright © 2020 DTI. All rights reserved.
//

import Foundation
import UIKit

class HomeTabBarController:UITabBarController, UITabBarControllerDelegate{
    override func viewDidLoad() {
           super.viewDidLoad()
           delegate = self
       }

       override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           let item1 = HomeViewController()
           let icon1 = UITabBarItem(title: "Home", image: UIImage(named: "Union.png"), selectedImage: UIImage(named: "Union.png"))
           let item2 = GameHistoryViewController()
           let icon2 = UITabBarItem(title: "Game History", image: UIImage(named: "#download_url.png"), selectedImage: UIImage(named: "#download_url.png"))
           let item3 = ProfileViewController()
           let icon3 = UITabBarItem(title: "Profile", image: UIImage(named: "user_pin.png"), selectedImage: UIImage(named: "user_pin.png"))
          self.tabBar.tintColor = UIColor.lightGrayColor()
          self.tabBar.barTintColor = UIColor.mainGrayColor()
          self.tabBar.unselectedItemTintColor = UIColor.navyBlueColor()
           icon1.setTitleTextAttributes([.foregroundColor: UIColor.lightGrayColor()], for: .selected)
           icon1.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
           icon2.setTitleTextAttributes([.foregroundColor: UIColor.lightGrayColor()], for: .selected)
           icon2.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
           icon3.setTitleTextAttributes([.foregroundColor: UIColor.lightGrayColor()], for: .selected)
           icon3.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
           item1.tabBarItem = icon1
           item2.tabBarItem = icon2
           item3.tabBarItem = icon3
           let controllers = [item3, item1, item2]
           self.viewControllers = controllers
           self.selectedIndex = 1;

       }

       //Delegate methods
       func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
           return true;
       }
}
