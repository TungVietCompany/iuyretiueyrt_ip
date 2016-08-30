//
//  Screen77ViewController.swift
//  BooxTownApplication
//
//  Created by MtViet on 8/29/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class Screen77ViewController: UIViewController {
    
    @IBOutlet weak var stack: UIStackView!
    @IBOutlet weak var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        var efec = UIBlurEffect(style: .Light)
        var Bluview = UIVisualEffectView(effect: efec)
        Bluview.frame = self.view.bounds
        view.backgroundColor = UIColor.grayColor().colorWithAlphaComponent(0.7)
        myView.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnClose(sender: AnyObject) {
        backExplore()
        
    }
    
    func backExplore(){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("Screen10") as! ExploreViewController
        self.presentViewController(vc, animated: true,completion: nil)
    }

    @IBOutlet weak var btnSubmit: UIButton!
    @IBAction func btnSubmit(sender: AnyObject) {
        
        backExplore()
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
