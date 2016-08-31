//
//  InteractViewController.swift
//  BooxTownApplication
//
//  Created by Do Dang Duong on 8/25/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class InteractViewController: UIViewController,UITableViewDataSource,UITableViewDelegate,UITabBarDelegate {
    
    
    @IBOutlet weak var tab: UITabBar!
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
        myCell.delegate = self
        tab.delegate = self
    }

    @IBOutlet weak var btnHome: UIButton!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnBackHome(sender: AnyObject) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("Screen46") as! MenuViewController
        self.presentViewController(vc, animated: true,completion: nil)

        
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
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("Screen48") as! InteractAddThreadViewController
        self.presentViewController(vc, animated: true,completion: nil)
    }
    func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        switch item.tag{
        case 0:
            let stor = UIStoryboard(name: "Main", bundle: nil)
            let alert = stor.instantiateViewControllerWithIdentifier("Screen9") as! BookLocaTorViewController
            self.presentViewController(alert, animated: false,completion: nil)
            
            break
        case 1:
            let stor = UIStoryboard(name: "Main", bundle: nil)
            let alert = stor.instantiateViewControllerWithIdentifier("Screen47") as! InteractViewController
            self.presentViewController(alert, animated: false,completion: nil)
            
            break
        case 2:
            
            let stor = UIStoryboard(name: "Main", bundle: nil)
            let alert = stor.instantiateViewControllerWithIdentifier("Screen42") as! ListingsViewController
            self.presentViewController(alert, animated: false,completion: nil)
            break
        case 3:
            let stor = UIStoryboard(name: "Main", bundle: nil)
            let alert = stor.instantiateViewControllerWithIdentifier("Screen51") as! WhishboardViewController
            self.presentViewController(alert, animated: false,completion: nil)
            break
        case 4:
            
            let stor = UIStoryboard(name: "Main", bundle: nil)
            let alert = stor.instantiateViewControllerWithIdentifier("ProfileViewController") as! ProfileViewController
            self.presentViewController(alert, animated: false,completion: nil)
            
            break
        default:
            break
        }

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
