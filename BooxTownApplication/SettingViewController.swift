//
//  SettingViewController.swift
//  BooxTownApplication
//
//  Created by MtViet on 8/26/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController,UITabBarDelegate {

    @IBOutlet weak var mytabar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mytabar.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func swicthnotifications(sender: AnyObject) {
    }

    @IBAction func switchusercurrent(sender: AnyObject) {
    }
    
    @IBAction func swicthbestconnected(sender: AnyObject) {
    }
    
    func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        
        
        switch item.tag{
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
                let alert = stor.instantiateViewControllerWithIdentifier("ProfileViewController") as! ProfileViewController
                self.presentViewController(alert, animated: false,completion: nil)

            break
        default:
            break
        }
    }
    
    @IBAction func btneditpass(sender: AnyObject) {
        let stor = UIStoryboard(name: "Main", bundle: nil)
        
        let alert = stor.instantiateViewControllerWithIdentifier("AlertEditpassViewController") as! AlertEditpassViewController
        alert.modalPresentationStyle = UIModalPresentationStyle.OverCurrentContext
        alert.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
        self.presentViewController(alert, animated: true,completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
