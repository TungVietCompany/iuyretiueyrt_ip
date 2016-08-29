//
//  AddBookViewController.swift
//  BooxTownApplication
//
//  Created by MtViet on 8/29/16.
//  Copyright © 2016 DoDangDuong. All rights reserved.
//

import UIKit

class AddBookViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var addBookTable: UITableView!
    
    var arrNameBook : [String]!
    override func viewDidLoad() {
        super.viewDidLoad()
addBookTable.delegate = self
        addBookTable.dataSource = self
        addBookTable.backgroundColor = UIColor.clearColor()
        arrNameBook = ["Architecture","Bussiness and Economics","Body Mind and Spirit","Children",
            "Computer and Techologi","Crafty and Hobies","Education","Family prarenting and Relationship","Fiction and Literature","Food and Drink","Heath and Fitness","History and Polictics","HomeS Gardents and DIY","Humor and Comedy","Launguages","Menuals and Guides"]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)  as! AddBookTableViewCell
        cell.lblNamebook.text = arrNameBook[indexPath.row]
        cell.backgroundColor = UIColor.clearColor()
        return cell
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrNameBook.count
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
