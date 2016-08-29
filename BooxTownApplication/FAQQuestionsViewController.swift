//
//  FAQQuestionsViewController.swift
//  BooxTownApplication
//
//  Created by MtViet on 8/29/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class FAQQuestionsViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var arrQuestions : [String]!
    
    

    @IBOutlet weak var tableFAQ: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrQuestions = ["Genaral","Sell","Swap","Buy","Donate"]
        
        tableFAQ.delegate = self
        
        tableFAQ.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! FAQQuestionTableViewCell
        cell.lblquestions.text = arrQuestions[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrQuestions.count
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
