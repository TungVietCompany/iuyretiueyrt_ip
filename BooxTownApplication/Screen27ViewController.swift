//
//  Screen27ViewController.swift
//  BooxTownApplication
//
//  Created by MtViet on 8/29/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class Screen27ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnAcept(sender: AnyObject) {
        let stor = UIStoryboard(name: "Main", bundle: nil)
        let alert = stor.instantiateViewControllerWithIdentifier("Screen28") as! Screen28ViewController
        self.presentViewController(alert, animated: false,completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnReject(sender: AnyObject) {
        let stor = UIStoryboard(name: "Main", bundle: nil)
        let alert = stor.instantiateViewControllerWithIdentifier("Screen28") as! Screen28ViewController
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