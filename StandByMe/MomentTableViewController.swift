//
//  MomentTableViewController.swift
//  StandByMe
//
//  Created by arman on 5/27/15.
//  Copyright (c) 2015 arman. All rights reserved.
//

import UIKit

class MomentTableViewController: UITableViewController {
    
    var userIDs = [String]()
    var userIcons = [String]()
    var userTexts = [String]()
    var userImages = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        userIDs = ["Jhon Snow", "Edard Stark", "Tyrion Lannister", "Peter Belish", "Jorah Mormount"]
        userIcons = ["john_snow.jpg", "edard_stark.jpeg", "tyrion_lannister.jpeg", "peter_belish.jpg", "jorah_mormount.jpeg"]
        userTexts = ["I know nothing.", "Winter is coming.", "A Lannister always pays his debts.", "I love your sister", "Blood of my blood."]
        userImages = ["buckingham_palace.jpg", "eiffel_tower.jpg", "grand_canyon.jpg", "windsor_castle.jpg", "empire_state_building.jpg"]
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
        return userIDs.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("momentCell", forIndexPath: indexPath) as! MomentTableViewCell

        // Configure the cell...
        let row = indexPath.row
        
        cell.userIDLabel.font = UIFont.preferredFontForTextStyle(UIFontTextStyleSubheadline)
        cell.userTextLabel.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
        cell.userIDLabel.text = userIDs[row]
        cell.userTextLabel.text = userTexts[row]
        cell.userIcon.image = UIImage(named: userIcons[row])
        cell.userImage.image = UIImage(named: userImages[row])

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
