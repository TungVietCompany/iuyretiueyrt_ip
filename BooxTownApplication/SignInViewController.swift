//
//  SignInViewController.swift
//  BooxTownApplication
//
//  Created by Do Dang Duong on 8/23/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    
    var satatus : Bool = false
    
    
    @IBOutlet weak var myView: UIView!
    
    var count : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let guse  = UITapGestureRecognizer(target: self, action:Selector("Onclick:"))
        self.view.addSubview(myView)
        myView.addGestureRecognizer(guse)
        

        // Do any additional setup after loading the view.
    }
    
    func Onclick(sende : UITapGestureRecognizer)  {
        table.hidden  = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btn(sender: AnyObject) {
        if count == 0{
            table.layer.hidden = true
            count = 1
        }else{
            table.layer.hidden = false
            count = 0

        }
        
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
