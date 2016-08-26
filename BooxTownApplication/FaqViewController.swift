//
//  FaqViewController.swift
//  BooxTownApplication
//
//  Created by MtViet on 8/26/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class FaqViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var mytable: UITableView!
    var arrQuesTions : [String]!
    override func viewDidLoad() {
        super.viewDidLoad()

        arrQuesTions = ["Genaral","Sell","Swap","Buy","Donate"]
        
        mytable.dataSource = self
        
        mytable.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = mytable.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! FaqTableViewCell
        
        cell.lblTypeQuestion.text = arrQuesTions[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrQuesTions.count
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
