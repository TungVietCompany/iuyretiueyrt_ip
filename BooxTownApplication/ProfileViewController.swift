//
//  ProfileViewController.swift
//  BooxTownApplication
//
//  Created by Do Dang Duong on 8/26/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UITabBarDelegate {

    var arrDemo : [String]!
    var arrImage :[String]!
    
    @IBOutlet weak var tab: UITabBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrDemo = ["demo","demo","demo","demo","demo","demo","demo","demo","demo","demo"]
        arrImage = ["book","book1","book","book1","book","book1","book","book1","book","book1"]
        tab.delegate = self
        collec.dataSource = self
        collec.delegate = self
        collec.backgroundColor = UIColor.whiteColor()
        tab.updateFocusIfNeeded()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnDashBord(sender: AnyObject) {
        let stor = UIStoryboard(name: "Main", bundle: nil)
        let alert = stor.instantiateViewControllerWithIdentifier("Screen65") as! ListDashBoradViewController
        self.presentViewController(alert, animated: false,completion: nil)
        
        
    }
    
    
    @IBOutlet weak var collec: UICollectionView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrDemo.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! ProfileCollectionViewCell
            cell.lblau.text = arrDemo[indexPath.row]
            cell.lblde.text = arrDemo[indexPath.row]
            cell.lblpr.text = arrDemo[indexPath.row]
            cell.imagebook.image = UIImage(named: arrImage[indexPath.row])
        
        return cell
    }
    
    func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        
            switch item.tag {
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
                let alert = stor.instantiateViewControllerWithIdentifier("Screen62") as! ProfileViewController
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
