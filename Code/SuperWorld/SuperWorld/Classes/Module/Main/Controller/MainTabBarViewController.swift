//
//  MainTabBarViewController.swift
//  Medicine
//
//  Created by G_iMAC on 2018/11/12.
//  Copyright © 2018年 G_iMAC. All rights reserved.
//

import UIKit

class MainTabBarViewController: BaseTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setup()
    }
    
    func setup() {
        let homeVC = HomeViewController()
        self.addChildVCWithController(controller: homeVC, title: "首页", imageName: "home_icon", selectedImgName: "home_icon")
    }
    
    func addChildVCWithController(controller: UIViewController, title: String, imageName: String, selectedImgName: String) {
        let navVC = BaseNavigationViewController(rootViewController: controller)
        self.addChild(navVC)
        navVC.tabBarItem.image = UIImage(named: imageName)
        navVC.tabBarItem.selectedImage = UIImage(named: selectedImgName)
        controller.title = title
    }
}
