//
//  ViewController.swift
//  swiftStudyDemo-6
//
//  Created by 毛汉卿 on 2017/2/23.
//  Copyright © 2017年 毛汉卿. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    lazy var scrollview : UIScrollView  = {
       
        var scrollview = UIScrollView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
        scrollview.delegate = self;
        self.view.addSubview(scrollview)
        
        return scrollview;
    }()
    lazy var imageView: UIImageView = {
       
        var imageView = UIImageView(image: UIImage(named: "steve"))
        
        
        
        return imageView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        
    }
    func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?) {
        
    }
    func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat) {
        
    }

}

