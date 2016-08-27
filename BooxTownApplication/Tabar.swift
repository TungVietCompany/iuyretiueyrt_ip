//
//  Tabar.swift
//  BooxTownApplication
//
//  Created by MtViet on 8/27/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import Foundation
import UIKit

class Tabar{
    func moveLocate() -> Void {
        let stor = UIStoryboard(name: "Main", bundle: nil)
        let alert = stor.instantiateViewControllerWithIdentifier("BookLocaTorViewController") as! BookLocaTorViewController
        self.presentViewController(alert, animated: false,completion: nil)

    }
}





case 0:
let stor = UIStoryboard(name: "Main", bundle: nil)
let alert = stor.instantiateViewControllerWithIdentifier("BookLocaTorViewController") as! BookLocaTorViewController
self.presentViewController(alert, animated: false,completion: nil)
break
case 1:
let stor = UIStoryboard(name: "Main", bundle: nil)
let alert = stor.instantiateViewControllerWithIdentifier("InteractViewController") as! InteractViewController
self.presentViewController(alert, animated: false,completion: nil)
break
case 2:
let stor = UIStoryboard(name: "Main", bundle: nil)
let alert = stor.instantiateViewControllerWithIdentifier("ListingsViewController") as! ListingsViewController
self.presentViewController(alert, animated: false,completion: nil)
break
case 3:
let stor = UIStoryboard(name: "Main", bundle: nil)
let alert = stor.instantiateViewControllerWithIdentifier("WhishboardViewController") as! WhishboardViewController
self.presentViewController(alert, animated: false,completion: nil)
break
case 4:
let stor = UIStoryboard(name: "Main", bundle: nil)
let alert = stor.instantiateViewControllerWithIdentifier("WhishboardViewController") as! WhishboardViewController
self.presentViewController(alert, animated: false,completion: nil)
break
default:
break