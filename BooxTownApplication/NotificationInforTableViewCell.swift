//
//  NotificationInforTableViewCell.swift
//  BooxTownApplication
//
//  Created by Do Dang Duong on 8/28/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class NotificationInforTableViewCell: UITableViewCell {

    @IBOutlet weak var imagebook: UIImageView!
    @IBOutlet weak var tiltlebook: UILabel!
    
    @IBOutlet weak var byauthor: UILabel!
    
    @IBOutlet weak var genaral: UILabel!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
