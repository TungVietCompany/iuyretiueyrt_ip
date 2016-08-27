//
//  TabarViewController.swift
//  BooxTownApplication
//
//  Created by MtViet on 8/26/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class TabarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        func moveLocate() -> Void {
        let stor = UIStoryboard(name: "Main", bundle: nil)
        let alert = stor.instantiateViewControllerWithIdentifier("BookLocaTorViewController") as! BookLocaTorViewController
        self.presentViewController(alert, animated: false,completion: nil)
    }
    
    func moveInteract() -> Void {
        let stor = UIStoryboard(name: "Main", bundle: nil)
        let alert = stor.instantiateViewControllerWithIdentifier("InteractViewController") as! InteractViewController
        self.presentViewController(alert, animated: false,completion: nil)

    }
    
    func moveListings() -> Void {
        let stor = UIStoryboard(name: "Main", bundle: nil)
        let alert = stor.instantiateViewControllerWithIdentifier("ListingsViewController") as! ListingsViewController
        self.presentViewController(alert, animated: false,completion: nil)
    }
    
    
    func moveWish() -> Void {
        let stor = UIStoryboard(name: "Main", bundle: nil)
        let alert = stor.instantiateViewControllerWithIdentifier("WhishboardViewController") as! WhishboardViewController
        self.presentViewController(alert, animated: false,completion: nil)

    }
    
    func moveProfile() -> Void {
        let stor = UIStoryboard(name: "Main", bundle: nil)
        let alert = stor.instantiateViewControllerWithIdentifier("ProfileViewController") as! ProfileViewController
        self.presentViewController(alert, animated: false,completion: nil)
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
