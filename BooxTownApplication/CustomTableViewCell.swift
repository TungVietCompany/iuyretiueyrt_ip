//
//  CustomTableViewCell.swift
//  BooxTownApplication
//
//  Created by MtViet on 8/29/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var lblQT: UILabel!
    @IBOutlet weak var textAnswer: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
