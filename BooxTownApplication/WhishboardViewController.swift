//
//  WhishboardViewController.swift
//  BooxTownApplication
//
//  Created by Do Dang Duong on 8/26/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class WhishboardViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UITabBarDelegate {

    @IBOutlet weak var tableWish: UITableView!
    
    
    @IBOutlet weak var tabwish: UITabBar!
    var arrWish : [String]!
    
    var arrDate : [String]!
    
    var arrDetail : [String]!

    override func viewDidLoad() {
        super.viewDidLoad()
        arrWish = ["this is demo by Navi","this is demo by Navi","this is demo by Navi","this is demo by Navi","this is demo by Navi","this is demo by Navi","this is demo by Navi","this is demo by Navi","this is demo by Navi"]
        arrDate = ["21/10/1992","21/10/1992","21/10/1992","21/10/1992","21/10/1992","21/10/1992","21/10/1992","21/10/1992","21/10/1992"]
        
        arrDetail = ["this is demo","this is demo","this is demo","this is demo","this is demo","this is demo","this is demo","this is demo","this is demo"]
        
        tableWish.dataSource = self
        tableWish.delegate = self
        tabwish.delegate = self
        // Do any additional setup after loading the view.
    }
    @IBAction func btnRespone(sender: AnyObject) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("Screen53") as! Screen53ViewController
        self.presentViewController(vc, animated: true,completion: nil)

    }

    @IBAction func btnHome(sender: AnyObject) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("Screen46") as! MenuViewController
        self.presentViewController(vc, animated: true,completion: nil)
    }
    @IBAction func btnExpert(sender: AnyObject) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("Screen52") as! Screen52ViewController
        self.presentViewController(vc, animated: true,completion: nil)

    }
    @IBOutlet weak var btExpert: UIImageView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrWish.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableWish.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! WhishboardTableViewCell
        cell.cellWish.text = arrWish[indexPath.row]
        
        cell.cellDetail.text = arrDetail[indexPath.row]
        
        cell.cellDate.text = arrDate[indexPath.row]
        
        return cell
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
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
