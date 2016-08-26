//
//  WhishboardTableViewCell.swift
//  BooxTownApplication
//
//  Created by Do Dang Duong on 8/26/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class WhishboardTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellWish: UILabel!
    
    @IBOutlet weak var cellDetail: UILabel!
    
    @IBOutlet weak var cellDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
