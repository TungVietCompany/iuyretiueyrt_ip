//
//  FilterViewController.swift
//  BooxTownApplication
//
//  Created by MtViet on 8/29/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        let gus = UITapGestureRecognizer(target: self, action: Selector("Onclick:"))
        self.view.addSubview(filterView)
        
        self.view.addSubview(cellfilter)
        
        filterView.addGestureRecognizer(gus)

        // Do any additional setup after loading the view.
    }
    
    func Onclick(sender : UITapGestureRecognizer){
        cellfilter.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var filterView: UIView!
    
    @IBOutlet weak var cellfilter: UIView!
    

    @IBAction func btn(sender: AnyObject) {
        cellfilter.layer.hidden = true
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
