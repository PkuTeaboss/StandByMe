//
//  PlatformTableViewController.swift
//  StandByMe
//
//  Created by 杨宜欣 on 15/5/27.
//  Copyright (c) 2015年 arman. All rights reserved.
//

import UIKit

class PlatformTableViewController: UITableViewController,UISearchBarDelegate{
    
    @IBOutlet var searchBar: UISearchBar!
    var platformdata = [PlatForm]()
    
    var searchSelected : [PlatForm] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.leftBarButtonItem = self.editButtonItem()
    }

    @IBAction func returned(segue: UIStoryboardSegue) {
        searchSelected = platformdata
//        println(platformdata.count)
//        println(searchSelected.count)
        tableView.reloadData()
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
        return searchSelected.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PlatformCell", forIndexPath: indexPath) as! PlatformTableViewCell
        // Configure the cell...
        let row = indexPath.row
        cell.destination.text = searchSelected[row].destination
        cell.Times.text = "\(searchSelected[row].startDate)~\(searchSelected[row].endDate)"
        cell.totalNum.text = "\(searchSelected[row].maxNum)"
        cell.Cost.text = searchSelected[row].cost
        return cell
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowCell"{
            if let index = tableView.indexPathForSelectedRow(){
                let nextViewController = segue.destinationViewController as! PlatformShowCellTableViewController
                nextViewController.DataForShow = searchSelected[index.row]
            }
        }
    }
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        //println("test")
        if searchText == "" {
            searchSelected = platformdata
        }
        else { // 匹配用户输入内容的前缀
            searchSelected = []
            for selected in platformdata{
                if selected.destination.lowercaseString.hasPrefix(searchText) {
                    searchSelected.append(selected)
                }
            }
        }
        // 刷新Table View显示
        tableView.reloadData()
    }
  
    
    
//    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
//        println("取消搜索")
//    }
//    
//    // 搜索触发事件
//    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
//        println("开始搜索")
//    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    
//     //Override to support editing the table view.
//    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
//        if editingStyle == .Delete {
//             //Delete the row from the data source
//            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
//        } else if editingStyle == .Insert {
//             //Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//        }    
//    }
    

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
