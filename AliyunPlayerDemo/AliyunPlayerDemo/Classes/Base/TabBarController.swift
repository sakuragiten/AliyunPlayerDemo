//
//  TabBarController.swift
//  AliyunPlayerDemo
//
//  Created by Daniel on 2020/6/9.
//  Copyright © 2020 Daniel. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setupUI()
    }
    
    
    
    func setupUI() {
        
        let tmp = NSMutableArray()
        let vc = HomeViewController()
        let nav = UINavigationController(rootViewController: vc)
        let tabBarItem = UITabBarItem(title: "首页", image: nil, selectedImage: nil)
        nav.tabBarItem = tabBarItem
        tmp.add(nav)
        self.viewControllers = tmp as? [UIViewController]
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.green], for: .selected)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
