//
//  ListingsViewController.swift
//  BooxTownApplication
//
//  Created by Do Dang Duong on 8/25/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class ListingsViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    var arrBook : [String]!
    override func viewDidLoad() {
        super.viewDidLoad()
        myCollection.dataSource = self
        myCollection.delegate = self
        myCollection.backgroundColor = UIColor.whiteColor()
        arrBook = ["book","book1","book","book1","book","book1","book","book1"]

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
