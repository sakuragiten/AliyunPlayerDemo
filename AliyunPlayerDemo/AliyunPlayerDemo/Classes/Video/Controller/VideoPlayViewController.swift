//
//  VideoPlayViewController.swift
//  AliyunPlayerDemo
//
//  Created by Daniel on 2020/6/9.
//  Copyright © 2020 Daniel. All rights reserved.
//

import UIKit


let kScrennWidth = UIScreen.main.bounds.size.width
let kScrennHeight = UIScreen.main.bounds.size.height

class VideoPlayViewController: UIViewController {

    fileprivate let playView = UIView()
    fileprivate let playImageView = UIView()
    
    fileprivate let player = AliPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    fileprivate func setupUI() {
        
        self.view.backgroundColor = .white
        
        player?.isLoop = true
        player?.isAutoPlay = true
        player?.scalingMode = AVP_SCALINGMODE_SCALEASPECTFIT
        
        let config = AVPCacheConfig()
        config.enable = true
        player?.setCacheConfig(config)
        
        self.playView.frame = CGRect(x: 0, y: 20, width: kScrennWidth, height: kScrennHeight - 40)
//        self.playView.isHidden = true
        player?.playerView = self.playView
        
        
        
        let source = AVPUrlSource().url(with: "https://v-cdn.zjol.com.cn/280443.mp4")
        player?.setUrlSource(source)
        player?.prepare()
        player?.start()
        
        self.view .addSubview(self.playView)
    }
    
    
    

}
