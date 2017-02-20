//
//  ViewController.swift
//  swiftStudyDemo-2
//
//  Created by 毛汉卿 on 2017/2/20.
//  Copyright © 2017年 毛汉卿. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    var data    = ["30 Days Swift",
                   "这些字体特别适合打「奋斗」和「理想」",
                   "谢谢「造字工房」，本案例不涉及商业使用",
                   "使用到造字工房劲黑体，致黑体，童心体",
                   "呵呵，再见🤗 See you next Project",
                   "微博 @Allen朝辉",
                   "测试测试测试测试测试测试",
                   "123",
                   "Alex",
                   "@@@@@@"]

    var fontNames = ["Gaspar Regular",
                    "MFJinHei_Noncommercial-Regular",
                    "MFTongXin_Noncommercial -Regular",
                    "MFZhiHei_Noncommercial-Regular"]
    var fontIndex  = 0
    var fontName  = "Gaspar Regular"
    
    @IBOutlet weak var changeFontButton: UIButton!
    
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.automaticallyAdjustsScrollViewInsets = false
        self.changeFontButton.layer.cornerRadius = 60
        self.changeFontButton.layer.masksToBounds = true
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func changeFontAction(_ sender: UIButton) {
        //swift3.0 后不能用++ 来表示自加1
        self.fontIndex += 1
        self.fontName = self.fontNames[fontIndex%self.fontNames.count]
        self.tableview.reloadData()
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableview.dequeueReusableCell(withIdentifier: "cellIdentifier")
        if cell == nil {
            cell = UITableViewCell.init(style: .default, reuseIdentifier: "cellIdentifeier")
            cell?.textLabel?.textColor = UIColor.white
            cell?.contentView.backgroundColor = UIColor.black
        }
        cell?.textLabel?.text = self.data[indexPath.row]
        cell?.textLabel?.font = UIFont(name: self.fontName, size: 16)
        
        return cell!
    }
    

}

