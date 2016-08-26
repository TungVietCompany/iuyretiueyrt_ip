//
//  NotificationsViewController.swift
//  BooxTownApplication
//
//  Created by MtViet on 8/26/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class NotificationsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var mytable: UITableView!
    var arrHead : [String]!
    
    @IBAction func btnHome(sender: AnyObject) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("MenuViewController") as! MenuViewController
        self.presentViewController(vc, animated: true,completion: nil)
    }
    var arrDetail : [String]!
    override func viewDidLoad() {
        super.viewDidLoad()

        arrHead = [
            "this is dem mo Notifications","this is dem mo Notifications","this is dem mo Notifications","this is dem mo Notifications","this is dem mo Notifications","this is dem mo Notifications","this is dem mo Notifications","this is dem mo Notifications","this is dem mo Notifications","this is dem mo Notifications"]
        
        
        arrDetail = ["buy navi team","buy navi team","buy navi team","buy navi team","buy navi team","buy navi team","buy navi team","buy navi team","buy navi team","buy navi team"]
        mytable.dataSource = self
        mytable.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(tableView: UITableView, didEndEditingRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrDetail.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! NotificationTableViewCell
        
        cell.lbldetail.text = arrDetail[indexPath.row]
        
        cell.lblHeader.text = arrHead[indexPath.row]
        return cell
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
