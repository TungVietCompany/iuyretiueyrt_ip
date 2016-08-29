//
//  InteractChatViewController.swift
//  BooxTownApplication
//
//  Created by MtViet on 8/29/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class InteractChatViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableChat: UITableView!
    
    var arrMessage : [String]!
    
    var arrnName : [String]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrnName = ["duong","long","viet"]
        
        arrMessage = ["hello","hello","hello"]
        
        tableChat.delegate = self
        tableChat.dataSource = self
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrnName.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! InteractChatTableViewCell
        
        cell.imageprofile.image = UIImage(named: "face")
        
        cell.lbldate.text = "01/01/2016"
        
        cell.lblusername.text = arrnName[indexPath.row]
        
        cell.lblmessage.text = arrMessage[indexPath.row]
        
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
