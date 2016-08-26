//
//  InteractViewController.swift
//  BooxTownApplication
//
//  Created by Do Dang Duong on 8/25/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class InteractViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    
    @IBOutlet weak var myCell: UITableView!
    var arrTemTopic : [String]!
    var arrTemTitle : [String]!
    var arrayTemApear : [String]!
    override func viewDidLoad() {
        super.viewDidLoad()
        arrTemTopic = ["duong","tung","thuyet","viet","long"]
        arrayTemApear = ["20","30","10","29","17"]
        arrTemTitle = ["demo","demo","demo","demo","demo"]
        // Do any additional setup after loading the view.
        myCell.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrTemTitle.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! CustomcellInteractTableViewCell
        cell.topic.text = arrTemTopic[indexPath.row]
        cell.title.text = arrTemTitle[indexPath.row]
        cell.appear.text = arrayTemApear[indexPath.row]
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
