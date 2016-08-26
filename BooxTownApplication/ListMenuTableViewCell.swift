//
//  ListMenuTableViewCell.swift
//  BooxTownApplication
//
//  Created by Do Dang Duong on 8/24/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class ListMenuTableViewCell: UITableViewCell {

    @IBOutlet weak var myImage: UIImageView!
    
    
    @IBOutlet weak var myLable: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
