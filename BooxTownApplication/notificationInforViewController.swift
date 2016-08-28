//
//  notificationInforViewController.swift
//  BooxTownApplication
//
//  Created by Do Dang Duong on 8/28/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class notificationInforViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    
    var arrTitle : [String]!

    var arrBy : [String]!
    
    var arrGenaral : [String]!
    
    var image :[String]!
    
    var arrcondition : [String]!
    
    @IBOutlet weak var tableNotificationInfor: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrTitle = ["duong","duong","duong"]
        image = ["book","book1","book"]
        tableNotificationInfor.delegate = self
        tableNotificationInfor.dataSource = self
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrTitle.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! NotificationInforTableViewCell
        cell.tiltlebook.text = arrTitle[indexPath.row]
        cell.byauthor.text = arrTitle[indexPath.row]
        cell.genaral.text = arrTitle[indexPath.row]
        cell.imagebook.image = UIImage(named: image[indexPath.row])
        
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
