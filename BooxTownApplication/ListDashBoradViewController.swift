//
//  ListDashBoradViewController.swift
//  BooxTownApplication
//
//  Created by MtViet on 8/28/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class ListDashBoradViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var arrnameBook : [String]!

    @IBOutlet weak var tableDashboard: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableDashboard.delegate = self
        tableDashboard.dataSource = self
    
        arrnameBook = ["thid is demo book","thid is demo book","thid is demo book","thid is demo book","thid is demo book","thid is demo book","thid is demo book","thid is demo book","thid is demo book"]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
       
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrnameBook.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! ListDashboardUITableViewCell
        
        cell.namebook.text = arrnameBook[indexPath.row]
        
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
