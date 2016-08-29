//
//  InteractAddThreadViewController.swift
//  BooxTownApplication
//
//  Created by MtViet on 8/29/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class InteractAddThreadViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableInterractAddThread: UITableView!
    
    
    var arrName : [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        arrName = ["this is demo","this is demo","this is demo","this is demo","this is demo","this is demo","this is demo","this is demo","this is demo","this is demo","this is demo","this is demo","this is demo","this is demo"]
        
        tableInterractAddThread.delegate = self
        tableInterractAddThread.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrName.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! InteractAddThreadTableViewCell
        
        cell.lblName.text = arrName[indexPath.row]
        cell.lblTitle.text = arrName[indexPath.row]
        cell.lblnumber.text = "20"
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
