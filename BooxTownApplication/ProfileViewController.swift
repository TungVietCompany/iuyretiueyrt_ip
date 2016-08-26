//
//  ProfileViewController.swift
//  BooxTownApplication
//
//  Created by Do Dang Duong on 8/26/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {

    @IBOutlet weak var collection: UICollectionView!
    
    var arrDemo : [String]!
    var arrImage :[String]!
    override func viewDidLoad() {
        super.viewDidLoad()
        arrDemo = ["demo","demo"]
        arrImage = ["book","book1"]
        collection.dataSource = self
        collection.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrDemo.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collection.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! ListingsCustomCollectionViewCell
//        cell.author.text = arrDemo[indexPath.row]
//        cell.detail.text = arrDemo[indexPath.row]
//        cell.price.text = arrDemo[indexPath.row]
//        cell.imageBook.image = UIImage(named: arrImage[indexPath.row])
        cell.image.image = UIImage(named: arrImage[indexPath.row])
        cell.lable.text = arrDemo[indexPath.row]
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
