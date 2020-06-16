//
//  HomeViewController.swift
//  AliyunPlayerDemo
//
//  Created by Daniel on 2020/6/9.
//  Copyright © 2020 Daniel. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setupUI()
    }
    

    func setupUI() {
        view.backgroundColor = .white
        
        let btn = UIButton.init()
        btn.setTitle("test", for: .normal)
        btn.backgroundColor = .orange
        btn.frame = CGRect(x: 10, y: 100, width: 80, height: 20)
        btn.addTarget(self, action: #selector(segueToPlayVideo), for: .touchUpInside)
        self.view.addSubview(btn)
        
        
    }
    
    
    @objc fileprivate func segueToPlayVideo() {
        let vc = VideoPlayViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
