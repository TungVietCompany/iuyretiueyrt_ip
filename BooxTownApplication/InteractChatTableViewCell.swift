//
//  InteractChatTableViewCell.swift
//  BooxTownApplication
//
//  Created by MtViet on 8/29/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class InteractChatTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var lblusername: UILabel!
    @IBOutlet weak var imageprofile: UIImageView!

    @IBOutlet weak var lblmessage: UILabel!
    @IBOutlet weak var lbldate: UILabel!
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
