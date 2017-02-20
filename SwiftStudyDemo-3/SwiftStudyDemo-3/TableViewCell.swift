//
//  TableViewCell.swift
//  SwiftStudyDemo-3
//
//  Created by 毛汉卿 on 2017/2/20.
//  Copyright © 2017年 毛汉卿. All rights reserved.
//

import UIKit
struct video {
    var image :String
    var title     :String
    var source    :String
}

class TableViewCell: UITableViewCell {

    var videoInfo : video{
       
        get{
        return self.videoInfo
        }
       
        set{
            
            self.videoTitle.text = newValue.title
            self.backImageView.image = UIImage.init(named: newValue.image)
            self.souceLabel.text = newValue.source
            
        }
    }
    
    @IBOutlet weak var playAction: UIButton!
    
    @IBOutlet weak var souceLabel: UILabel!
    @IBOutlet weak var videoTitle: UILabel!
    @IBOutlet weak var backImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
