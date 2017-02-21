//
//  CustomCollectionViewCell.swift
//  SwiftStudyDemo-4
//
//  Created by 毛汉卿 on 2017/2/21.
//  Copyright © 2017年 毛汉卿. All rights reserved.
//

import UIKit


struct cellInfo {
    var title = ""
    var description = ""
    var numberOfMembers = 0
    var numberOfPosts = 0
    var featuredImage: UIImage
    init(title : String ,description :String, image :UIImage) {
        self.title =  title
        self.description = description
        self.featuredImage = image
    }
}


class CustomCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var backImage: UIImageView!
    var info : cellInfo! {
          didSet {
            self.message.text = info.title
            self.backImage.image = info.featuredImage
        }
    
    }
}
