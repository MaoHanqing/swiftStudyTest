//
//  ViewController.swift
//  SwiftStudyDemo-4
//
//  Created by 毛汉卿 on 2017/2/21.
//  Copyright © 2017年 毛汉卿. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var myCollectionView: UICollectionView!
    var datas : [cellInfo]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//    self.myCollectionView .register(UINib.init(nibName: "CustomCollectionViewCell", bundle: Bundle.main), forCellWithReuseIdentifier: "cellIndentifier")
    self.datas = self.createInterests()
    }
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
     func createInterests() -> [cellInfo]
    {
        return [
            cellInfo(title: "Hello there, i miss u.", description: "We love backpack and adventures! We walked to Antartica yesterday, and camped with some cute pinguines, and talked about this wonderful app idea. 🐧⛺️✨", image: UIImage(named: "hello")!),
            cellInfo(title: "🐳🐳🐳🐳🐳", description: "We love romantic stories. We walked to Antartica yesterday, and camped with some cute pinguines, and talked about this wonderful app idea. 🐧⛺️✨", image: UIImage(named: "dudu")!),
            cellInfo(title: "Training like this, #bodyline", description: "Create beautiful apps. We walked to Antartica yesterday, and camped with some cute pinguines, and talked about this wonderful app idea. 🐧⛺️✨", image: UIImage(named: "bodyline")!),
            cellInfo(title: "I'm hungry, indeed.", description: "Cars and aircrafts and boats and sky. We walked to Antartica yesterday, and camped with some cute pinguines, and talked about this wonderful app idea. 🐧⛺️✨", image: UIImage(named: "wave")!),
            cellInfo(title: "Dark Varder, #emoji", description: "Meet life with full presence. We walked to Antartica yesterday, and camped with some cute pinguines, and talked about this wonderful app idea. 🐧⛺️✨", image: UIImage(named: "darkvarder")!),
            cellInfo(title: "I have no idea, bitch", description: "Get up to date with breaking-news. We walked to Antartica yesterday, and camped with some cute pinguines, and talked about this wonderful app idea. 🐧⛺️✨", image: UIImage(named: "hhhhh")!),
        ]
    }

}
// MARK: collectionDelegate
extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.datas.count;
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellIndentifier", for: indexPath) as! CustomCollectionViewCell
       cell.info = self.datas[indexPath.row]
        
        return cell
    }
    
}
