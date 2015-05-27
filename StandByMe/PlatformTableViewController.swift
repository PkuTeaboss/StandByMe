//
//  PlatformTableViewController.swift
//  TabBar
//
//  Created by arman on 5/21/15.
//  Copyright (c) 2015 arman. All rights reserved.
//

import UIKit

class PlatformTableViewController: UITableViewController {
    
    var objects = [(String,String,String,String,String,String)]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        objects = [("Beijing","5.26~6.1","2","5","2000","buckingham_palace.jpg"),
            ("Hainan","6.1~6.6","1","3","1000","eiffel_tower.jpg"),
            ("Xiamen","7.1~7.8","3","4","1500","grand_canyon.jpg"),
            ("Beijing","5.26~6.1","2","5","900","windsor_castle.jpg")]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return objects.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PlatformCell", forIndexPath: indexPath) as! PlatformTableViewCell
        
        let row = indexPath.row
        cell.Destination.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
        cell.Time.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
        cell.exsitedNum.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
        cell.totalNum.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
        cell.Cost.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
        cell.Destination.text = objects[row].0
        cell.Time.text = objects[row].1
        cell.exsitedNum.text = objects[row].2
        cell.totalNum.text = objects[row].3
        cell.Cost.text = objects[row].4
        cell.founder.image = UIImage(named: objects[row].5)
        
        return cell
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return NO if you do not want the specified item to be editable.
    return true
    }
    */
    
    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    if editingStyle == .Delete {
    // Delete the row from the data source
    tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    } else if editingStyle == .Insert {
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
    }
    */
    
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
    
    }
    */
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return NO if you do not want the item to be re-orderable.
    return true
    }
    */
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    }
    */
    
}
