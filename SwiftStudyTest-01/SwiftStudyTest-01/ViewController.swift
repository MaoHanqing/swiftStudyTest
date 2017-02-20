//
//  ViewController.swift
//  SwiftStudyTest-01
//
//  Created by 毛汉卿 on 2017/2/20.
//  Copyright © 2017年 毛汉卿. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pauseButton: UIButton!
    
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var content: UILabel!
    var timer : Timer?
    var count = 0.0
    /*
        iOS 10 即swift3 后移除了preferredStatusBarStyle的方法，将其改为属性，所以如果要修改状态栏则需重写他的getter方法
     */ 
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func playAction(_ sender: UIButton) {
        
        sender.isEnabled = false
        self.pauseButton.isEnabled = true
        self.timerAction(pause: false)
        

    }
    @IBAction func resetAction(_ sender: Any) {
        self.count  = 0.0;
        self.content.text = "0.0"
        self.timer?.invalidate()
        self.timer = nil
        self.playButton.isEnabled = true
        self.pauseButton.isEnabled = true
        
    }
    @IBAction func pauseAction(_ sender: UIButton) {
            sender.isEnabled = false
            self.playButton.isEnabled = true
            self.timerAction(pause: true)
        
    }
    
    func timerAction(pause :Bool) {
       
        if pause {
            self.timer?.invalidate()
            self.timer = nil
            return
        }
        
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (Timer) in
            
        }
        self.timer
            = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { (Timer) in
            
        self.count+=0.1
            
                self.content.text = NSString.localizedStringWithFormat("%.1f", self.count) as String
                
                
            })
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

