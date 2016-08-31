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

    @IBOutlet weak var myView2: UIView!
    
    @IBOutlet weak var myView1: UIView!
    
    @IBOutlet weak var myView3: UIView!
    
    @IBOutlet weak var myView4: UIView!
    
    @IBOutlet weak var lblnameview1: UILabel!
    
    @IBOutlet weak var lblsapce1view1: UILabel!
    
    @IBOutlet weak var lblnumberview1: UILabel!
    
    @IBOutlet weak var lblsapce2view1: UILabel!
    
    @IBOutlet weak var imageview2: UIImageView!
    
    @IBOutlet weak var lblspace1view2: UILabel!
    
    @IBOutlet weak var lblnmberview2: UILabel!
    
    @IBOutlet weak var lblsapce2view2: UILabel!
    
    @IBOutlet weak var imageview3: UIImageView!
    
    @IBOutlet weak var lblspace1view3: UILabel!
    
    @IBOutlet weak var lblnmberview3: UILabel!
    
    @IBOutlet weak var lblspace2view3: UILabel!
    
    @IBOutlet weak var imageview4: UIImageView!
    
    @IBOutlet weak var lblspace1view4: UILabel!
    
    @IBOutlet weak var lblnumberview4: UILabel!
    
    @IBOutlet weak var lnl2view4: UILabel!
    
    
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
        
        let guse1  = UITapGestureRecognizer(target: self, action:Selector("OnclickView1:"))
//        self.view.addSubview(myView1)
        myView1.addGestureRecognizer(guse1)
        
        let guse2  = UITapGestureRecognizer(target: self, action:Selector("OnclickView2:"))
//        self.view.addSubview(myView2)
        myView2.addGestureRecognizer(guse2)
        
        let guse3  = UITapGestureRecognizer(target: self, action:Selector("OnclickView3:"))
//        self.view.addSubview(myView3)
        myView3.addGestureRecognizer(guse3)
        
        
        let guse4  = UITapGestureRecognizer(target: self, action:Selector("OnclickView4:"))
//        self.view.addSubview(myView4)
        myView4.addGestureRecognizer(guse4)
        
        
    }
    
    @IBAction func btnFree(sender: AnyObject) {
    }
    
    @IBAction func btnDashborad(sender: AnyObject) {
        
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("Screen15") as! FAQSelectBookListViewController
        self.presentViewController(vc, animated: true,completion: nil)
    }
    
    @IBAction func btnCart(sender: AnyObject) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("Screen44") as! Screen44ViewController
        self.presentViewController(vc, animated: true,completion: nil)
    }
    func OnclickView1(sender1 : UITapGestureRecognizer){
        
//       updateView1()
    }
    
    func OnclickView2(sender2 : UITapGestureRecognizer){
        
//        updateView2()
        
    }
    
    func OnclickView3(sender3 : UITapGestureRecognizer){
        
//       updateView3()
        
        
    }
    
    func OnclickView4(sender4 : UITapGestureRecognizer){
        
//       updateView4()
        
    }
    @IBAction func btnFiter(sender: AnyObject) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("Screen77") as! Screen77ViewController
        self.presentViewController(vc, animated: true,completion: nil)

    }
    
    @IBAction func btnLocation(sender: AnyObject) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("Screen9") as! BookLocaTorViewController
        self.presentViewController(vc, animated: true,completion: nil)
    }
    
    @IBAction func btnHome(sender: AnyObject) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("Screen46") as! MenuViewController
        self.presentViewController(vc, animated: true,completion: nil)
    }
    func updateView1(){
        myView1.backgroundColor = UIColor.whiteColor()
        
        lblnameview1.textColor = UIColor.redColor()
        
        lblsapce1view1.textColor = UIColor.redColor()
        
        lblnumberview1.textColor = UIColor.redColor()
        
        lblsapce2view1.textColor = UIColor.redColor()
        
        
        
        myView2.backgroundColor = UIColor.redColor()
        
        lblspace1view2.textColor = UIColor.whiteColor()
        
        lblnumberview1.textColor = UIColor.whiteColor()
        
        lblsapce2view1.textColor = UIColor.whiteColor()
        
        
        myView3.backgroundColor = UIColor.redColor()
        
        
        lblspace1view3.textColor = UIColor.whiteColor()
        
        lblnmberview3.textColor = UIColor.whiteColor()
        
        lblspace2view3.textColor = UIColor.whiteColor()
        
        
        myView4.backgroundColor = UIColor.redColor()
        
        
        lblspace1view4.textColor = UIColor.whiteColor()
        
        lblnumberview4.textColor = UIColor.whiteColor()
        
        lnl2view4.textColor = UIColor.whiteColor()
        

        
    }
    
    func updateView2(){
        
        myView1.backgroundColor = UIColor.redColor()
        
        lblnameview1.textColor = UIColor.whiteColor()
        
        lblsapce1view1.textColor = UIColor.whiteColor()
        
        lblnumberview1.textColor = UIColor.whiteColor()
        
        lblsapce2view1.textColor = UIColor.whiteColor()
        
        
        myView2.backgroundColor = UIColor.whiteColor()
        
        imageview2.image = UIImage(named:"freeactive" )
        
        lblspace1view2.textColor = UIColor.redColor()
        
        lblnumberview1.textColor = UIColor.redColor()
        
        lblsapce2view1.textColor = UIColor.redColor()
        
        
        myView3.backgroundColor = UIColor.redColor()
        
        
        
        lblspace1view3.textColor = UIColor.whiteColor()
        
        lblnmberview3.textColor = UIColor.whiteColor()
        
        lblspace2view3.textColor = UIColor.whiteColor()
        
        
        myView4.backgroundColor = UIColor.redColor()
        
        
        lblspace1view4.textColor = UIColor.whiteColor()
        
        lblnumberview4.textColor = UIColor.whiteColor()
        
        lnl2view4.textColor = UIColor.whiteColor()

        
    }
    
    func updateView3(){
        myView1.backgroundColor = UIColor.redColor()
        
        lblnameview1.textColor = UIColor.whiteColor()
        
        lblsapce1view1.textColor = UIColor.whiteColor()
        
        lblnumberview1.textColor = UIColor.whiteColor()
        
        lblsapce2view1.textColor = UIColor.whiteColor()
        
        
        myView2.backgroundColor = UIColor.redColor()
        
        
        lblspace1view2.textColor = UIColor.whiteColor()
        
        lblnumberview1.textColor = UIColor.whiteColor()
        
        lblsapce2view1.textColor = UIColor.whiteColor()
        
        
        myView3.backgroundColor = UIColor.whiteColor()
        
        imageview3.image = UIImage(named:"freeactive" )
        
        lblspace1view3.textColor = UIColor.redColor()
        
        lblnmberview3.textColor = UIColor.redColor()
        
        lblspace2view3.textColor = UIColor.redColor()
        
        
        myView4.backgroundColor = UIColor.redColor()
        
        
        lblspace1view4.textColor = UIColor.whiteColor()
        
        lblnumberview4.textColor = UIColor.whiteColor()
        
        lnl2view4.textColor = UIColor.whiteColor()
    }
    
    func updateView4(){
        
        myView1.backgroundColor = UIColor.redColor()
        
        lblnameview1.textColor = UIColor.whiteColor()
        
        lblsapce1view1.textColor = UIColor.whiteColor()
        
        lblnumberview1.textColor = UIColor.whiteColor()
        
        lblsapce2view1.textColor = UIColor.whiteColor()
        
        
        myView2.backgroundColor = UIColor.redColor()
        
        
        lblspace1view2.textColor = UIColor.whiteColor()
        
        lblnumberview1.textColor = UIColor.whiteColor()
        
        lblsapce2view1.textColor = UIColor.whiteColor()
        
        
        myView3.backgroundColor = UIColor.redColor()
        
        
        lblspace1view3.textColor = UIColor.whiteColor()
        
        lblnmberview3.textColor = UIColor.whiteColor()
        
        lblspace2view3.textColor = UIColor.whiteColor()
        
        
        myView4.backgroundColor = UIColor.whiteColor()
        
        imageview4.image = UIImage(named:"cartactive" )
        
        lblspace1view4.textColor = UIColor.redColor()
        
        lblnumberview4.textColor = UIColor.redColor()
        
        lnl2view4.textColor = UIColor.redColor()
        

        
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
