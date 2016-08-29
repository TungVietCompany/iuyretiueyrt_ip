//
//  FAQSelectBookListViewController.swift
//  BooxTownApplication
//
//  Created by MtViet on 8/29/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class FAQSelectBookListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var Faqtable: UITableView!
    
    var arrName : [String]!
    override func viewDidLoad() {
        super.viewDidLoad()
arrName = ["Any","The lsat painting of sara de vas","The last painting","Never a Dull Moment","A nation on the brink","1634 the blatic","The lsat painting","Never a Dull Moment","Any","The lsat painting of sara de vas","The last painting","Never a Dull Moment","A nation on the brink","1634 the blatic","The lsat painting","Never a Dull Moment"]
        // Do any additional setup after loading the view.
        
        Faqtable.delegate = self
        
        Faqtable.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrName.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! FAQSelectBookListTableViewCell
        cell.lblName.text = arrName[indexPath.row]
        
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
