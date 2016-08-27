//
//  PageContentViewController.swift
//  BooxTownApp
//
//  Created by Do Dang Duong on 8/22/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class PageContentViewController: UIViewController {
    
    var pageIndext = 0
    
    var strPhotoName : String!
    
    @IBOutlet weak var btnSignUp: UIButton!
    
    @IBOutlet weak var btnSignIn: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
//        btnSignIn.layer.cornerRadius = 15
//        btnSignUp.layer.cornerRadius = 15
        // Do any additional setup after loading the view.
       
        let screenSize: CGRect = UIScreen.mainScreen().bounds
//        
//        let bg = UIImage(named: strPhotoName)
//        let bgView = UIImageView(image: bg)
//        bgView.contentMode = UIViewContentMode.Center
//        bgView.frame = CGRectMake(0, 0, screenSize.width, screenSize.height)
//        self.view.insertSubview(bgView,atIndex:0)
        
//        self.view.insertSubview(myViewBottom, atIndex: 2)
    
//        self.view.backgroundColor = UIColor.init(patternImage: bg!)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
