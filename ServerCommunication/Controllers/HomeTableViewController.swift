//
//  ViewController.swift
//  ServerCommunication
//
//  Created by Kokpheng on 11/10/16.
//  Copyright © 2016 Kokpheng. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {
    
    let array = ["hello", "world", "test"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let nib = UINib(nibName: "TableViewSectionHeader", bundle: nil)
        tableView.registerNib(nib, forHeaderFooterViewReuseIdentifier: "TableSectionHeader")
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return array.count
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        // Here, we use NSFetchedResultsController
        // And we simply use the section name as title
        let title = "\(section)"
        
        // Dequeue with the reuse identifier
        let cell = self.tableView.dequeueReusableHeaderFooterViewWithIdentifier("TableSectionHeader")
        let header = cell as! TableViewSectionHeader
        header.titleLabel.text = title
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 365
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("homeCell", forIndexPath: indexPath) as! HomeTableViewCell
        
        cell.titleLabel.text = "\(indexPath.section)"
        
        return cell
    }
    
}

