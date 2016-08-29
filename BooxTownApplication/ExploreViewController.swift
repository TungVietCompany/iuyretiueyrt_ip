//
//  ExploreViewController.swift
//  BooxTownApplication
//
//  Created by Do Dang Duong on 8/25/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    
    var arriMAGE : [String]!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myCollection.dataSource = self
        myCollection.backgroundColor = UIColor.whiteColor()
        let layout : UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 10, left: 20, bottom: 0, right: 5)
        let screensize = UIScreen.mainScreen().bounds
        layout.itemSize = CGSize(width: screensize.width/2 , height: screensize.height/2)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
    }

    @IBOutlet weak var myCollection: UICollectionView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
        
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! CustomCollectionViewCell
        cell.myImage.image = UIImage(named: "book")
        cell.myLable.text = "duong"
        
        
        
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
