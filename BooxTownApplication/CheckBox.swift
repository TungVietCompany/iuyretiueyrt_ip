//
//  CheckBox.swift
//  BooxTownApplication
//
//  Created by MtViet on 8/28/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class CheckBox: UIButton {
    
    let checkedImage = UIImage(named: "isCheck")
    let unCheckedImage = UIImage(named: "unCheck")
    
    //bool propety
    @IBInspectable var isChecked:Bool = false{
        didSet{
            self.updateImage()
        }
    }
    
    
    override func awakeFromNib() {
        self.addTarget(self, action: #selector(CheckBox.buttonClicked(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        self.updateImage()
    }
    
    
    func updateImage() {
        if isChecked == true{
            self.setImage(checkedImage, forState: .Normal)
        }else{
            self.setImage(unCheckedImage, forState: .Normal)
        }
        
    }
    
    func buttonClicked(sender:UIButton) {
        if(sender == self){
            isChecked = !isChecked
        }
    }
}
