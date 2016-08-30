//
//  FAQViewQuestionViewController.swift
//  BooxTownApplication
//
//  Created by MtViet on 8/29/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class FAQViewQuestionViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableMoreQuestions: UITableView!
    
    
    
    var arrQuestion : [String]!
    
    var selected : NSIndexPath? = nil
    
    var arrShowmore : [String]!
    override func viewDidLoad() {
        super.viewDidLoad()
         tableMoreQuestions.registerNib(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
        arrQuestion = ["Where can I get some","Why do we use it","Lorem lpsum is simply dummy text","Where can I get Some","Why do we use it","Lorem lpsum is simply dummy text","Where can I get Some"]
        
        tableMoreQuestions.delegate = self
        
        tableMoreQuestions.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrQuestion.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! CustomTableViewCell
        
//        cell.lalQuestion.text = arrQuestion[indexPath.row]
        cell.lblQT.text = arrQuestion[indexPath.row]
        
        cell.textAnswer.text = "this is demmo answer by team navi "
        cell.clipsToBounds = true
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        let indext = indexPath
       
        if selected != nil{
            
            if indext == selected{
                return 120
            }
            else{
                return 30
            }
        }else{
            return 30
        }
    }
    
    @IBOutlet weak var btnHome: UIButton!
    @IBAction func btnS59Home(sender: AnyObject) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewControllerWithIdentifier("FaqViewController") as! FaqViewController
        self.presentViewController(vc, animated: true,completion: nil)
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch selected {
        case nil:
            selected = indexPath
        default:
            if selected! == indexPath{
                selected = nil
            }else{
                selected = indexPath
            }
        }
        
        tableMoreQuestions.reloadRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
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
