//
//  MyTabBarViewController.swift
//  BooxTownApplication
//
//  Created by Do Dang Duong on 8/23/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class MyTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tabBar.translucent = false
//        self.tabBar.backgroundImage = UIImage(named: "backgroungtabar.png")
        self.tabBar.backgroundColor = UIColor.clearColor()
        tabBarItem.selectedImage = UIImage(named: "logo.png")?.imageWithRenderingMode(.AlwaysTemplate)
        self.edgesForExtendedLayout = .None
        
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
