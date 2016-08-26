//
//  WhishboardViewController.swift
//  BooxTownApplication
//
//  Created by Do Dang Duong on 8/26/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class WhishboardViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableWish: UITableView!
    
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
        
        // Do any additional setup after loading the view.
    }

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
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
