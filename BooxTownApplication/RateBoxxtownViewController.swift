//
//  RateBoxxtownViewController.swift
//  BooxTownApplication
//
//  Created by MtViet on 8/26/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class RateBoxxtownViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var dome: UIButton!

    @IBAction func ale(sender: AnyObject) {
        
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
