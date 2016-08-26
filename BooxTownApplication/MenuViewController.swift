
//  MenuViewController.swift
//  BooxTownApplication
//
//  Created by Do Dang Duong on 8/24/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    var arrMenu : [String]!
    
    var arrImage :[String]!

    @IBOutlet weak var myTable: UITableView!
    override func viewDidLoad() {
//        myTable.allowsSelection = true
        super.viewDidLoad()
            arrMenu = ["Home","Notifications","FAQ","Invite Friends","Rate BooxTown","About BooxTown","Contact BooxTown","Setting","Logout"]
            arrImage = ["home","notification","faq","invitefriend","ratebooxtown","aboutboox","contactbooxtown","setting","logout"]
        
            myTable.dataSource = self
            myTable.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrMenu.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = UITableViewCell(style: .Default, reuseIdentifier: "Cell") as! ListMenuTableViewCell
        
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! ListMenuTableViewCell
        cell.myLable.text = arrMenu[indexPath.row]
        cell.myImage.image = UIImage(named: arrImage[indexPath.row])
        cell.backgroundColor = UIColor.clearColor()
//        switch indexPath.row {
//        case 0:
//            let sb = UIStoryboard(name: "Main", bundle: nil)
//            let vc = sb.instantiateViewControllerWithIdentifier("MyTabBarViewController") as! MyTabBarViewController
//            self.presentViewController(vc, animated: true,completion: nil)
//        default:
//            break
//        }
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
                    let vc = sb.instantiateViewControllerWithIdentifier("MyTabBarViewController") as! MyTabBarViewController
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
