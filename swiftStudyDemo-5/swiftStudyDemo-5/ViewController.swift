//
//  ViewController.swift
//  swiftStudyDemo-5
//
//  Created by 毛汉卿 on 2017/2/22.
//  Copyright © 2017年 毛汉卿. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    @IBOutlet weak var playButton: UIButton!
    
   lazy  var gradientLayer : CAGradientLayer = {
    
            self.gradientLayer = CAGradientLayer()
            self.gradientLayer.frame = self.view.frame
            self.gradientLayer.locations = [0.0,0.3,0.6,0.8]
            self.gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
            self.gradientLayer.endPoint = CGPoint(x: 1, y: 1)
    
            self.view.layer.insertSublayer(self.gradientLayer, below: self.playButton.layer)
            return self.gradientLayer
    }()
    
  lazy var player : AVAudioPlayer? = {
            print("dddd")
            do{
                
            let sourcePath  = URL(fileURLWithPath: Bundle.main.path(forResource: "little_lucky", ofType: "mp3")!)
                try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try AVAudioSession.sharedInstance().setActive(true)
                return try AVAudioPlayer(contentsOf: sourcePath)
                
            }catch let audioError as NSError{
                print(audioError)
                return nil
            }
    }()
    
        var timer : Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UIApplication.shared.isStatusBarHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func playAction(_ sender: UIButton) {
        
        if  self.timer == nil {
            
            self.player?.play()
            
            self.timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true, block: { (Timer) in
                
                self.gradientLayer.colors = self.randomColors()
                
            })
            
        }else{
            self.player?.pause()
            self.timer?.invalidate()
            self.timer = nil;
        }
    }
    
    func randomColors() -> [CGColor] {
        func randomColor()->CGColor{
            //drand48函数，这个函数产生一个[0.0, 1.0]区间中的浮点数            
            let redValue = CGFloat(drand48())
            let blueValue =  CGFloat(drand48())
            let greenValue = CGFloat(drand48())
            return UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1).cgColor
        }
        
        var colors = Array<CGColor>()
        
        for _ in 1...5 {
         colors.append(randomColor())
        }
        
        return colors
        
  }

}

