//
//  MomentTableViewCell.swift
//  StandByMe
//
//  Created by arman on 5/27/15.
//  Copyright (c) 2015 arman. All rights reserved.
//

import UIKit

class MomentTableViewCell: UITableViewCell {

    @IBOutlet weak var userIcon: UIImageView!
    
    @IBOutlet weak var userIDLabel: UILabel!
    
    @IBOutlet weak var userTextLabel: UILabel!
    
    @IBOutlet weak var userImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
