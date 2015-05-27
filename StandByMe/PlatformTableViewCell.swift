//
//  PlatformTableViewCell.swift
//  StandByMe
//
//  Created by 杨宜欣 on 15/5/27.
//  Copyright (c) 2015年 arman. All rights reserved.
//

import UIKit

class PlatformTableViewCell: UITableViewCell {


    @IBOutlet weak var Destination: UILabel!
    @IBOutlet weak var Time: UILabel!
    @IBOutlet weak var exsitedNum: UILabel!
    @IBOutlet weak var totalNum: UILabel!
    @IBOutlet weak var Cost: UILabel!
    @IBOutlet weak var founder: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
