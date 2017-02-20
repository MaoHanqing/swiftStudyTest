//
//  ViewController.swift
//  SwiftStudyDemo-3
//
//  Created by 毛汉卿 on 2017/2/20.
//  Copyright © 2017年 毛汉卿. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableview: UITableView!
    
    var data = [
        video(image: "videoScreenshot01", title: "Introduce 3DS Mario", source: "Youtube - 06:32"),
        video(image: "videoScreenshot02", title: "Emoji Among Us", source: "Vimeo - 3:34"),
        video(image: "videoScreenshot03", title: "Seals Documentary", source: "Vine - 00:06"),
        video(image: "videoScreenshot04", title: "Adventure Time", source: "Youtube - 02:39"),
        video(image: "videoScreenshot05", title: "Facebook HQ", source: "Facebook - 10:20"),
        video(image: "videoScreenshot06", title: "Lijiang Lugu Lake", source: "Allen - 20:30")
        
    ]
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell  = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier") as? TableViewCell
        if cell == nil {
            //类型转换 变为 as！ className
            cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?[0] as! TableViewCell?
          //UIControlEventstouchUpInside 改为UIControlEvents.touchUpInside
          //@selector 改为#selector
            cell?.playAction.addTarget(self, action:#selector(playAction1(_:)), for: UIControlEvents.touchUpInside)
            
        }
        cell?.videoInfo = self.data[indexPath.row]

        
        return cell!
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    func playAction1(_ sender:UIButton) {

        let path = Bundle.main.path(forResource: "emoji zone", ofType: "mp4")
        let player = AVPlayer(url: URL(fileURLWithPath: path!))
        let playerControler = AVPlayerViewController()
        playerControler.player = player
        self.present(playerControler, animated: true, completion: nil)
    }
}

