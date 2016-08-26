//
//  ViewController.swift
//  BooxTownApp
//
//  Created by Do Dang Duong on 8/22/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addBackgroundImage()
        performSelector("showSplash", withObject: nil, afterDelay: 3)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showSplash(){
        performSegueWithIdentifier("showApp", sender: self)
    }
    
    func addBackgroundImage() {
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        
        let bg = UIImage(named: "bg.jpg")
        let bgView = UIImageView(image: bg)
        
        bgView.frame = CGRectMake(0, 0, screenSize.width, screenSize.height)
        self.view.addSubview(bgView)
    }

}

