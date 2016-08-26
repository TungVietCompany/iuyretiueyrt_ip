//
//  CustomcellInteractTableViewCell.swift
//  BooxTownApplication
//
//  Created by Do Dang Duong on 8/25/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class CustomcellInteractTableViewCell: UITableViewCell {

 
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var appear: UILabel!
    @IBOutlet weak var topic: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
