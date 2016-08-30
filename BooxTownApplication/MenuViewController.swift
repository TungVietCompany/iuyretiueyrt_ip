
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
    
    @IBOutlet weak var myTbale: UITableView!
    
    
    @IBOutlet weak var tableListmenu: UITableView!
    
    
    @IBOutlet weak var tabeMn: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            arrMenu = ["Home","Notifications","FAQ","Invite Friends","Rate BooxTown","About BooxTown","Contact BooxTown","Setting","Logout"]
            arrImage = ["home","notification","faq","invitefriend","ratebooxtown","aboutboox","contactbooxtown","setting","logout"]
        
        myTbale.delegate = self
        
        myTbale.dataSource = self
        
        myTbale.backgroundColor = UIColor.clearColor()
       
            // Do any additional setup after loading the view.
    }

    @IBAction func btnS46Close(sender: AnyObject) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("Screen9") as! BookLocaTorViewController
        self.presentViewController(vc, animated: true,completion: nil)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrMenu.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! ListMenuTableViewCell
        
        
//        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! MenuTableViewCell
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
        switch indexPath.row {
        case 0:
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let vc = sb.instantiateViewControllerWithIdentifier("Screen9") as! BookLocaTorViewController
            self.presentViewController(vc, animated: true,completion: nil)

            break
        case 1:
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let vc = sb.instantiateViewControllerWithIdentifier("NotificationsViewController") as! NotificationsViewController
            self.presentViewController(vc, animated: true,completion: nil)
            break
        case 2:
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let vc = sb.instantiateViewControllerWithIdentifier("FaqViewController") as! FaqViewController
            self.presentViewController(vc, animated: true,completion: nil)
            break
        case 3:
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let vc = sb.instantiateViewControllerWithIdentifier("Screen60") as! Screen60ViewController
            self.presentViewController(vc, animated: true,completion: nil)
            break

        case 4:
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let vc = sb.instantiateViewControllerWithIdentifier("Screen61") as! Screen61ViewController
            self.presentViewController(vc, animated: true,completion: nil)
            break

        case 5:
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let vc = sb.instantiateViewControllerWithIdentifier("Screen71") as! Screen71ViewController
            self.presentViewController(vc, animated: true,completion: nil)
            break

        case 6:
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let vc = sb.instantiateViewControllerWithIdentifier("Screen72") as! Screen72ViewController
            self.presentViewController(vc, animated: true,completion: nil)
            break

        case 7:
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let vc = sb.instantiateViewControllerWithIdentifier("Screen54") as! Screen54ViewController
            self.presentViewController(vc, animated: true,completion: nil)
            break

        case 8:
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let vc = sb.instantiateViewControllerWithIdentifier("MyTabBarViewController") as! MyTabBarViewController
            self.presentViewController(vc, animated: true,completion: nil)
            break

        case 9:
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let vc = sb.instantiateViewControllerWithIdentifier("Screen73") as! Screen73ViewController
            self.presentViewController(vc, animated: true,completion: nil)
            break


        default:
            break
        }

    }
    
    func moveScreen(screenId : String,screenName : UIViewController){
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
