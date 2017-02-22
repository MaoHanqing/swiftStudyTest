//
//  ViewController.swift
//  swiftStudyDemo-5
//
//  Created by 毛汉卿 on 2017/2/22.
//  Copyright © 2017年 毛汉卿. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     var gradientLayer : CAGradientLayer{
        
        get{
            self.view.layer.addSublayer(self.gradientLayer)
            print("ddddd")
            return self.gradientLayer
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UIApplication.shared.isStatusBarHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playAction(_ sender: Any) {
        
        
        
    }

}

