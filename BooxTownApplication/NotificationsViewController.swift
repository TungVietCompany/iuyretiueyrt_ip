//
//  NotificationsViewController.swift
//  BooxTownApplication
//
//  Created by MtViet on 8/26/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class NotificationsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UITabBarDelegate {

    @IBOutlet weak var tabNotifi: UITabBar!
    @IBOutlet weak var mytable: UITableView!
    var arrHead : [String]!
    
    @IBAction func btnHome(sender: AnyObject) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("Screen46") as! MenuViewController
        self.presentViewController(vc, animated: true,completion: nil)
    }
    var arrDetail : [String]!
    override func viewDidLoad() {
        super.viewDidLoad()

        arrHead = [
            "Comment","Swap","Buy","Reject","Comment","Swap","Buy","Reject","Comment","Swap","Buy","Reject","Comment","Swap","Buy","Reject","Comment","Swap","Buy","Reject","Comment","Swap","Buy","Reject"]
        
        
        arrDetail = ["Comment","Swap","Buy","Reject","Comment","Swap","Buy","Reject","Comment","Swap","Buy","Reject","Comment","Swap","Buy","Reject","Comment","Swap","Buy","Reject","Comment","Swap","Buy","Reject"]
        mytable.dataSource = self
        mytable.delegate = self
        tabNotifi.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(tableView: UITableView, didEndEditingRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrHead.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let indexpath = tableView.indexPathsForSelectedRows!
        
        let cellcurent = tableView.cellForRowAtIndexPath(indexPath) as! NotificationTableViewCell
        
                if cellcurent.lblHeader.text == "Comment" {
            let stor = UIStoryboard(name: "Main", bundle: nil)
            let alert = stor.instantiateViewControllerWithIdentifier("Screen49") as! InteractChatViewController
            self.presentViewController(alert, animated: false,completion: nil)
        }else if cellcurent.lblHeader.text == "Swap"{
            let stor = UIStoryboard(name: "Main", bundle: nil)
            let alert = stor.instantiateViewControllerWithIdentifier("Screen19") as! notificationInforViewController
            self.presentViewController(alert, animated: false,completion: nil)
        }else if cellcurent.lblHeader.text == "Buy"{
            let stor = UIStoryboard(name: "Main", bundle: nil)
            let alert = stor.instantiateViewControllerWithIdentifier("Screen27") as! Screen27ViewController
            self.presentViewController(alert, animated: false,completion: nil)
                }else{
                    let stor = UIStoryboard(name: "Main", bundle: nil)
                    let alert = stor.instantiateViewControllerWithIdentifier("Screen27") as! Screen27ViewController
                    self.presentViewController(alert, animated: false,completion: nil)
        }
        
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! NotificationTableViewCell
        
        cell.lbldetail.text = arrDetail[indexPath.row]
        
        cell.lblHeader.text = arrHead[indexPath.row]
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
