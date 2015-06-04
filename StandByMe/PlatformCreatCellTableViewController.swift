//
//  PlatformCreatCellTableViewController.swift
//  StandByMe
//
//  Created by 杨宜欣 on 15/6/2.
//  Copyright (c) 2015年 arman. All rights reserved.
//

import UIKit

class PlatformCreatCellTableViewController: UITableViewController {
    

   // @IBOutlet var datePicker: UIDatePicker!
    
    
    @IBOutlet weak var Destination: UITextField!
    
    
    @IBOutlet var StartTime: UITextField!
    
    
    @IBOutlet var EndTime: UITextField!
    
    
    @IBOutlet weak var totalNum: UITextField!
    
    
    @IBOutlet weak var Cost: UITextField!
    
    
    //@IBOutlet weak var Details: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
//        datePicker.datePickerMode = UIDatePickerMode.Date
//        datePicker.date = NSDate()
//        
//        datePicker.addTarget(self, action: Selector("dataPickerValueChange:"), forControlEvents: UIControlEvents.ValueChanged)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 5
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 1
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextViewController = segue.destinationViewController as! PlatformTableViewController
        var tempdata = PlatForm()
        tempdata.destination = Destination.text
        tempdata.startDate = StartTime.text
        tempdata.endDate = EndTime.text
        tempdata.cost = Cost.text
        tempdata.maxNum = totalNum.text.toInt()!
        //tempdata.data.details = Details.
        nextViewController.platformdata.append(tempdata)
    }
    
//    func datePickerValueChange(sender: UIDatePicker){
//        println("date select:(sender.date)")
//    }
    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! UITableViewCell

        // Configure the cell...

        return cell
    }
    */

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
