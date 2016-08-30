//
//  Screen54ViewController.swift
//  BooxTownApplication
//
//  Created by MtViet on 8/29/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

import MapKit

class Screen54ViewController: UIViewController {
    
    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var mapview: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        if mapview.on == true {
            map.layer.hidden = false
        }else{
            map.layer.hidden = true
        }
       
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func btnHome(sender: AnyObject) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("Screen46") as! MenuViewController
        self.presentViewController(vc, animated: true,completion: nil)
    }
    
    @IBAction func btnEdpass(sender: AnyObject) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("Screen57") as! Screen57ViewController
        self.presentViewController(vc, animated: true,completion: nil)

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
