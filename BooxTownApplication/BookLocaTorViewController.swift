//
//  BookLocaTorViewController.swift
//  BooxTownApplication
//
//  Created by Do Dang Duong on 8/23/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class BookLocaTorViewController: UIViewController,UITabBarDelegate {

    @IBOutlet weak var mytabar: UITabBar!
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mytabar.delegate = self

        // Do any additional setup after loading the view.
    }

    @IBAction func btnS9Home(sender: AnyObject) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("Screen46") as! MenuViewController
        self.presentViewController(vc, animated: true,completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnS9Expore(sender: AnyObject) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("Screen10") as! ExploreViewController
        self.presentViewController(vc, animated: true,completion: nil)
        
    }
    
    
    
    
    func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        switch item.tag{
        case 0:
            let stor = UIStoryboard(name: "Main", bundle: nil)
            let alert = stor.instantiateViewControllerWithIdentifier("Screen9") as! BookLocaTorViewController
            self.presentViewController(alert, animated: false,completion: nil)
            
            break
        case 1:
            let stor = UIStoryboard(name: "Main", bundle: nil)
            let alert = stor.instantiateViewControllerWithIdentifier("Screen47") as! InteractViewController
            self.presentViewController(alert, animated: false,completion: nil)
            
            break
        case 2:
            
            let stor = UIStoryboard(name: "Main", bundle: nil)
            let alert = stor.instantiateViewControllerWithIdentifier("Screen42") as! ListingsViewController
            self.presentViewController(alert, animated: false,completion: nil)
            break
        case 3:
            let stor = UIStoryboard(name: "Main", bundle: nil)
            let alert = stor.instantiateViewControllerWithIdentifier("Screen51") as! WhishboardViewController
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
