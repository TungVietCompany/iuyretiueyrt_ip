//
//  ListingsViewController.swift
//  BooxTownApplication
//
//  Created by Do Dang Duong on 8/25/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class ListingsViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UITabBarDelegate {

    @IBOutlet weak var tab: UITabBar!
    var arrBook : [String]!
    
    
    @IBAction func cartbtn(sender: AnyObject) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("Screen39") as! Screen39ViewController
        self.presentViewController(vc, animated: true,completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        myCollection.dataSource = self
        myCollection.delegate = self
        tab.delegate = self
        myCollection.backgroundColor = UIColor.whiteColor()
        arrBook = ["book","book1","book","book1","book","book1","book","book1"]
        
        
        let guse  = UITapGestureRecognizer(target: self, action:Selector("OnclickAddBook:"))
        
    
//        self.view.addSubview(btnAddbook)
        btnAddbook.addGestureRecognizer(guse)
        
       

//

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var myCollection: UICollectionView!

    @IBAction func btnHome(sender: AnyObject) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("MenuViewController") as! MenuViewController
        self.presentViewController(vc, animated: true,completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrBook.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! ListingsCollectionViewCell
        cell.imge.image = UIImage(named: arrBook[indexPath.row])
        cell.auThor.text = "duong"
        cell.detail.text = "duong"
        cell.price.text = "200"
        
        return cell
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
            let alert = stor.instantiateViewControllerWithIdentifier("Screen62") as! ProfileViewController
            self.presentViewController(alert, animated: false,completion: nil)
            
            break
        default:
            break
        }

    }
    
    @IBOutlet weak var btnAddbook: UIView!
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("Screen43") as! Screen43ViewController
        self.presentViewController(vc, animated: true,completion: nil)
    }
    
    func OnclickAddBook(sender : UITapGestureRecognizer){
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("Screen39") as! Screen39ViewController
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
