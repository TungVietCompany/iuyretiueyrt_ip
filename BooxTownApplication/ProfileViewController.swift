//
//  ProfileViewController.swift
//  BooxTownApplication
//
//  Created by Do Dang Duong on 8/26/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {

    var arrDemo : [String]!
    var arrImage :[String]!
    override func viewDidLoad() {
        super.viewDidLoad()
        arrDemo = ["demo","demo","demo","demo","demo","demo","demo","demo","demo","demo"]
        arrImage = ["book","book1","book","book1","book","book1","book","book1","book","book1"]
        collec.dataSource = self
        
        collec.delegate = self
        collec.backgroundColor = UIColor.whiteColor()
        // Do any additional setup after loading the view.
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
