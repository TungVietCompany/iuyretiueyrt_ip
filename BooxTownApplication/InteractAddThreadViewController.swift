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
    
    @IBAction func btnAddThread(sender: AnyObject) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("Screen50") as! Screen50ViewController
        self.presentViewController(vc, animated: true,completion: nil)
    }
    
    var arrName : [String]!
    
    @IBAction func btnBack(sender: AnyObject) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("Screen47") as! InteractViewController
        self.presentViewController(vc, animated: true,completion: nil)

    }
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
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("Screen49") as! InteractChatViewController
        self.presentViewController(vc, animated: true,completion: nil)
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
